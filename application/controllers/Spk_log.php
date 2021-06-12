<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require_once APPPATH . 'third_party/Spout/Autoloader/autoload.php';

// use Box\Spout\Reader\Common\Creator\ReaderEntityFactory;

class Spk_log extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        if (!$this->session->userdata('nama')) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert"><i class="fas fa-exclamation-triangle"></i> Anda Harus Login Terlebih dahulu</div>');
            redirect('auth');
        }
        
        $this->load->library('form_validation');
        $this->load->model('Modelspk', 'spk');

    }

    public function index()
    {
        $parser = [
            'list' => 'spk_log',
            'menu' => 'spk_log',
            'tittle' => 'SIPILJur - Data Data SPK Terklasifikasi',
            'isi' => $this->load->view('admin/spk_log', '', true)
        ];
        $this->parser->parse('admin/main', $parser);
    }

    public function ambildata()
    {
        if ($this->input->is_ajax_request() == true ) {
            
            $list = $this->spk->get_datatables();
            $data = array();
            $no = $_POST['start'];
            foreach ($list as $field) {
                
                $no++;
                $row = array();

                //tombol 
                $tomboledit = "<button type=\"button\" class=\"btn btn-sm btn-outline-info\" title=\"Edit Data\" onclick=\"edit('" . $field->nis . "')\">
                <i class=\"fa fa-tags\"></i>
            </button>";

                $tombolhapus = "<button type=\"button\" class=\"btn btn-sm btn-outline-danger\" title=\"Hapus Data\" onclick=\"hapus('" . $field->nis . "')\">
                <i class=\"fa fa-trash\"></i>
            </button>";

                $row[] = $no;
                $row[] = $field->nis;
                $row[] = $field->nama_siswa;
                $row[] = $field->rapor_ind;
                $row[] = $field->usbn_ind;
                $row[] = $field->rapor_ing;
                $row[] = $field->usbn_ing;
                $row[] = $field->rapor_mtk;
                $row[] = $field->usbn_mtk;
                $row[] = $field->rapor_ipa;
                $row[] = $field->usbn_ipa;
                $row[] = $field->rapor_ips;
                $row[] = $field->usbn_ips;
                $row[] = $field->minat;
                $row[] = $field->nilai_iq;
                $row[] = $field->kelas;
                $row[] = $tomboledit . ' ' . $tombolhapus;
                $data[] = $row;
            }

            $output = array(
                "draw" => $_POST['draw'],
                "recordsTotal" => $this->spk->count_all(),
                "recordsFiltered" => $this->spk->count_filtered(),
                "data" => $data,
            );
            //output dalam format JSON
            echo json_encode($output);
        } else {
            exit('Maaf data tidak bisa ditampilkan');
        }
    }

    public function formedit()
    {
        if ($this->input->is_ajax_request() == true) {
            $nis = $this->input->post('nis', true);

            $ambildata = $this->spk->ambildata($nis);

            if ($ambildata->num_rows() > 0) {
                $row = $ambildata->row_array();
                $data = [
                    'nis' => $nis,
                    'nama_siswa' => $row['nama_siswa'],
                    'rapor_ind' => $row['rapor_ind'],
                    'usbn_ind' => $row['usbn_ind'],
                    'rapor_ing' => $row['rapor_ing'],
                    'usbn_ing' => $row['usbn_ing'],
                    'rapor_mtk' => $row['rapor_mtk'],
                    'usbn_mtk' => $row['usbn_mtk'],
                    'rapor_ipa' => $row['rapor_ipa'],
                    'usbn_ipa' => $row['usbn_ipa'],
                    'rapor_ips' => $row['rapor_ips'],
                    'usbn_ips' => $row['usbn_ips'],
                    'minat' => $row['minat'],
                    'nilai_iq' => $row['nilai_iq'],
                    'kelas' => $row['kelas']
                ];
            }
            
            $msg = [
                'sukses' => $this->load->view('admin/modaleditspk', $data, true)
            ];

            echo json_encode($msg);
        }
    }

    public function updatedata()
    {
        if ($this->input->is_ajax_request() == true) {
            $nis = $this->input->post('nis', true);
            $nama_siswa = $this->input->post('nama_siswa', true);
            $rapor_ind = $this->input->post('rapor_ind', true);
            $usbn_ind = $this->input->post('usbn_ind', true);
            $rapor_ing = $this->input->post('rapor_ing', true);
            $usbn_ing = $this->input->post('usbn_ing', true);
            $rapor_mtk = $this->input->post('rapor_mtk', true);
            $usbn_mtk = $this->input->post('usbn_mtk', true);
            $rapor_ipa = $this->input->post('rapor_ipa', true);
            $usbn_ipa = $this->input->post('usbn_ipa', true);
            $rapor_ips = $this->input->post('rapor_ips', true);
            $usbn_ips = $this->input->post('usbn_ips', true);
            $minat = $this->input->post('minat', true);
            $nilai_iq = $this->input->post('nilai_iq', true);
            $kelas = $this->input->post('kelas', true);

            $this->spk->update($nis, $nama_siswa, $rapor_ind, $usbn_ind, $rapor_ing, $usbn_ing, $rapor_mtk, $usbn_mtk, $rapor_ipa, $usbn_ipa, $rapor_ips, $usbn_ips, $minat, $nilai_iq, $kelas);

            $msg = [
                'sukses' => 'data mahasiswa berhasil di-update'
            ];
            echo json_encode($msg);
        }
    }
    
    public function hapus()
    {
        if ($this->input->is_ajax_request() == true) {
            $nis = $this->input->post('nis', true);

            $hapus = $this->spk->hapus($nis);

            if ($hapus) {
                $msg = [
                    'sukses' => 'Data Siswa berhasil terhapus'
                ];
            }
            echo json_encode($msg);
        }
    }
}
 