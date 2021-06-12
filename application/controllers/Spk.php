<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Spk extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Modeltraining', 'training');
        $this->load->model('Modeldata', 'data');
    }
    public function index()
    {
        $payload = [];
        if($this->input->post() != null){
            $action = $_POST['actname'];
            unset($_POST['actname']);
            $payload['result'] = $this->proses_spk($this->input->post());
            $payload['input'] = $this->input->post();

            if($action == "savepdf"){
                $this->simpan_log($payload);
                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert"><i class="fas fa-exclamation-triangle"></i> Data berhasil disimpan</div>');
                return $this->proses_pdf($payload);
            }

            if($action == "savelog"){
                $this->simpan_log($payload);
                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert"><i class="fas fa-exclamation-triangle"></i> Data berhasil disimpan</div>');
                if ($this->session->userdata('nama')) {
                    redirect(base_url('spk_log'));
                }
            }
        }

        $parser = [
            'list' => 'spk',
            'menu' => 'spk',
            'tittle' => 'SIPILJur - SPK',
            'isi' => $this->load->view('admin/spk', $payload, true)
        ];
        $this->parser->parse('admin/main', $parser);
    }
    public function proses_spk($data){
        $nilai_k = 3; // Seharusnya diambil dari db / pengaturan
        $config = [
            'K'=>$nilai_k
        ];
        $this->load->library('MKNN', $config);
        // transform data training
        $data_training = $this->training->get()->result_array();
        $prep_training = [];
        $label_training = [];
        foreach($data_training as $x=>$row){
            $label_training[$x] = $row['kelas'];
            $row = $this->data->apply_transform($row);
            unset($row['kelas']);
            $prep_training[$x] = array_values($row);
        }
        $norm_training = $this->mknn->normalize_array($prep_training);

        // klasifikasi data inputan
        $test_transformed = array_values($this->data->apply_transform($data));
        $test_normalized = $this->mknn->normalize_num($test_transformed);
        $this->mknn->fit($norm_training, $label_training);
        return [
            'klasifikasi' => $this->mknn->predict([$test_normalized])
        ];
    }

    public function proses_pdf($data){
        $mpdf = new \Mpdf\Mpdf([
            'format'=>'A5',
            'orientation'=>'L'
        ]);
        $mpdf->SetDisplayMode('fullpage');
        $html = $this->load->view('admin/spkprint_rev2', $data, true);
        $mpdf->WriteHTML($html);
        $mpdf->Output('mpdf.pdf', \Mpdf\Output\Destination::INLINE);
    }

    public function simpan_log($data){
        $param = array_merge($data['input'], ['kelas'=>$data['result']['klasifikasi'][0]['prediksi']]);
        return $this->db->insert('log_spk', $param);
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert"><i class="fas fa-exclamation-triangle"></i> data berhasil di simpan</div>');
        redirect('spk');
    }

    
}
