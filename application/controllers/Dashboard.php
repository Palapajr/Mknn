<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Modeltraining', 'training');
        $this->load->model('Modeltesting', 'testing');
        $this->load->model('Modelspk', 'spk');
    }
    
    public function index()
    {
        
        $sum['totaltraining'] = $this->training->tampil_sum();
        $sum['totaltesting'] = $this->testing->tampil_sum();
        $sum['totalspk'] = $this->spk->tampil_sum();
        $group['training'] = $this->training->group_get();
        $group['testing'] = $this->testing->group_get();
        $group['spk'] = $this->spk->group_get();
        $parser = [
            'list' => '',
            'menu' => 'dashboard',
            'tittle' => 'SIPILJur - Welcome Dashboard',
            'isi' => $this->load->view('admin/dashboard', $sum,  true),
            'script' => $this->load->view('admin/_chart_dashboard', $group, true)
        ];
        
        if (!$this->session->userdata('nama')) {
            $parser['script'] = $this->load->view('admin/_chart_user', $group, true);
        }
        $this->parser->parse('admin/main', $parser);
    }
}