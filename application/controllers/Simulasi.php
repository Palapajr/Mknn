<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Simulasi extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        if (!$this->session->userdata('nama')) {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert"><i class="fas fa-exclamation-triangle"></i> Anda Harus Login Terlebih dahulu</div>');
			redirect('auth');
		}

        $this->load->library('form_validation');
        $this->load->model('Modeltraining', 'training');
        $this->load->model('Modeltesting', 'testing');
        $this->load->model('Modeldata', 'data');
    }
    public function index()
    {
        $simul_result = null;
        if($this->input->post('nilai_k') != null){
            $simul_result = $this->proses_training($this->input->post('nilai_k'));
        }

        $content = [
            'nilai_k' => $this->input->post('nilai_k'),
            'hasil' => $simul_result
        ];
        $parser = [
            'list' => 'mknn',
            'menu' => 'mknn',
            'tittle' => 'SIPILJur - Simulasi MKNN',
            'isi' => $this->load->view('admin/simulasi', $content, true)
        ];
        $this->parser->parse('admin/main', $parser);
    }

    public function proses_training($nilai_k)
    {
        $config = [
            'K'=>$nilai_k
        ];
        $this->load->library('MKNN', $config);
        # transform data training
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

        $data_testing = $this->testing->get()->result_array();
        $prep_testing = [];
        $label_testing = [];
        foreach($data_testing as $x=>$row){
            $label_testing[$x] = $row['kelas'];
            $row = $this->data->apply_transform($row);
            unset($row['kelas']);
            $prep_testing[$x] = array_values($row);
        }
        $norm_testing = $this->mknn->normalize_array($prep_testing);
        
        $this->mknn->fit($norm_training, $label_training);
        return [
            'klasifikasi' => $this->mknn->predict($norm_testing, $label_testing),
            'score' => $this->mknn->score($label_testing),
            'confmat' => $this->mknn->confmat($label_testing),
            'total_training' => count($data_training),
            'testing' => $data_testing
        ];
    }

}