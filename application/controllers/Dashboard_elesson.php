<?php 

    defined('BASEPATH') OR exit('No direct script access allowed');
    class Dashboard_elesson extends CI_Controller{
        function __construct(){
            parent::__construct();
            // $this->load->library('table');
            $this->load->model('Admin_model');
            $this->load->helper('download');
        }



        //========================= View All User ==================================//
        public function index(){
            $data['user'] = $this->Admin_model->getAllAdmin()->result();
            $data['level'] = $this->Admin_model->getLevel()->result();
            $data['userid'] = $this->Admin_model->get_admin();
            $this->template->tampil('crud/elesson/Dashboard/home_admin_elesson',$data);
        }



        //============================== tambah data user ===========================//
        public function tambah_data_user(){
            // $data['tambah'] = $this->Admin_model->getAll()->result();
            $data['level'] = $this->Admin_model->getLevel()->result();
            $data['blokir'] = $this->Admin_model->getBlokir()->result();
            $this->template->tampil('crud/elesson/Dashboard/tambah/tambah_user',$data);
        }
        public function proses_tambah_data_user(){
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $nam_leng = $this->input->post('nama');
            $level = $this->input->post('level');
            $alamat = $this->input->post('alamat');
            $notel = $this->input->post('telp');
            $email = $this->input->post('email');
            $blokir = $this->input->post('blokir');
            $id_sess = $this->input->post('id_session');

            $data = array(
                'username'=>$username,
                'password'=>$password,
                'nama_lengkap'=>$nam_leng,
                'level'=>$level,
                'alamat'=>$alamat,
                'no_telp'=>$notel,
                'email'=>$email,
                'blokir'=>$blokir,
                'id_session'=>$id_sess
            );
            if (!empty($_FILES['photo']['name'])) {
                $upload = $this->do_upload();
                $data['foto'] = $upload;
            }
            $this->Admin_model->save_data_user($data,'admin');
            redirect('Dashboard_elesson',$data);
        }
        private function do_upload(){
		    $config['upload_path'] 		= './upload/foto/';
		    $config['allowed_types'] 	= 'gif|jpg|png|jpeg';
		    $config['max_size'] 			= 2048;
		    $config['max_widht'] 			= 1000;
		    $config['max_height']  		= 1000;
		    $config['file_name'] 			= round(microtime(true)*1000);
            $this->load->library('upload', $config);
            
            if (!$this->upload->do_upload('photo')) {
			        $this->session->set_flashdata('msg', $this->upload->display_errors('',''));
			        redirect('Dashboard_elesson');
		        }
		        return $this->upload->data('file_name');
	    }
        //================================ End Of tambah data user ===================//



        //================================ Edit User ================================//
        public function edit_user($id){
            $where = array('id_admin'=>$id);
            $data['user']=$this->Admin_model->edit_data_user($where,'admin')->result();
            $data['level']=$this->Admin_model->get_level();
            $data['blokir']=$this->Admin_model->get_blokir();
            $this->template->tampil('crud/elesson/Dashboard/edit/edit_user',$data);
        }
        public function proses_edit_data_user(){
            $id=$this->input->post('id_admin');
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $nam_leng = $this->input->post('nama');
            $level = $this->input->post('level');
            $alamat = $this->input->post('alamat');
            $notel = $this->input->post('telp');
            $email = $this->input->post('email');
            $blokir = $this->input->post('blokir');
            $id_sess = $this->input->post('id_session');

            $data = array(
                // 'id_admin'=>$id_admin,
                'username'=>$username,
                'password'=>$password,
                'nama_lengkap'=>$nam_leng,
                'level'=>$level,
                'alamat'=>$alamat,
                'no_telp'=>$notel,
                'email'=>$email,
                'blokir'=>$blokir,
                'id_session'=>$id_sess
            );
            if (!empty($_FILES['photo']['name'])) {
                $upload = $this->edit_do_upload();
                $data['foto'] = $upload;
            }
            $this->Admin_model->update_data_user($id,$data);
            redirect('Dashboard_elesson',$data);
        }
        private function edit_do_upload(){
		    $config['upload_path'] 		= './upload/foto/';
		    $config['allowed_types'] 	= 'gif|jpg|png|jpeg';
		    $config['max_size'] 			= 2048;
		    $config['max_widht'] 			= 1000;
		    $config['max_height']  		= 1000;
		    $config['file_name'] 			= round(microtime(true)*1000);
            $this->load->library('upload', $config);
            
            if (!$this->upload->do_upload('photo')) {
			        $this->session->set_flashdata('msg', $this->upload->display_errors('',''));
			        redirect('Dashboard_elesson');
		        }
		        return $this->upload->data('file_name');
	    }
        //================================ End Of Edit User =========================//



        //================================ Delete User ===============================//
        function hapus_user(){
            $id = $this->uri->segment(3);
            $this->Admin_model->delete_data_user($id);
          }
        //================================ End Of Delete User =======================//
        //================================ End Of View All User ======================//

        
        //================================ Awal Modul ================================//


          //============================== View All Modul ============================//
          public function viewModul(){
              $data ['modul'] = $this->Admin_model->getAllModul()->result();
              $this->template->tampil('crud/elesson/Pengajar/modul',$data);
          }
          public function viewModulSiswa(){
            $data ['modul'] = $this->Admin_model->getAllModul()->result();
            $this->template->tampil('crud/elesson/Pengajar/modulSiswa',$data);
            }
          //============================= End Of All Modul ===========================//
          
          public function AddModul(){
            $data['status'] = $this->Admin_model->getStatus()->result();
            $data['publish'] = $this->Admin_model->getPublish()->result();
            $data['aktif'] = $this->Admin_model->getAktif()->result();
            $this->template->tampil('crud/elesson/Pengajar/tambah/tambah_modul',$data);
          }

          public function proses_tambah_data_modul(){
            $nama_modul = $this->input->post('nama_modul');
            $link = $this->input->post('link');
            $publish = $this->input->post('publish');
            $status = $this->input->post('status');
            $aktif = $this->input->post('aktif');
            $urutan = $this->input->post('urutan');
            $seo = $this->input->post('seo');

            $data = array(
                'nama_modul'=>$nama_modul,
                'link'=>$link,
                'publish'=>$publish,
                'status'=>$status,
                'aktif'=>$aktif,
                'urutan'=>$urutan,
                'link_seo'=>$seo
            );
            if (!empty($_FILES['modul']['name'])) {
                $upload = $this->upload_Modul();
                $data['file_materi'] = $upload;
            }
            $this->Admin_model->save_data_modul($data,'modul');
            redirect('Dashboard_elesson/viewModul',$data);
        }
            private function upload_Modul(){
		        $config['upload_path'] 		= './upload/modul';
		        $config['allowed_types'] 	= 'pdf|xls|docx|ppt';
		        $config['max_size'] 			= 2048;
		        $config['file_name'] 			= round(microtime(true)*1000);
 
		        $this->load->library('upload', $config);
		        if (!$this->upload-> do_upload('modul')) {
			        $this->session->set_flashdata('msg', $this->upload->display_errors('',''));
			        redirect('Dashboard_elesson/viewModul');
		        }
		    return $this->upload->data('file_name');
	        }

        //================================ Edit Modul ================================//
        public function Edit_Modul($id){
            $where = array('id_modul'=>$id);
            $data['user']=$this->Admin_model->edit_data_modul($where,'modul')->result();
            $data['publish']=$this->Admin_model->get_publish();
            $data['status']=$this->Admin_model->get_status();
            $data['aktif']=$this->Admin_model->get_aktif();
            $this->template->tampil('crud/elesson/Pengajar/edit/edit_modul',$data);
        }
        public function proses_edit_data_modul(){
            $id=$this->input->post('id_modul');
            $nama_modul = $this->input->post('nama_modul');
            $link = $this->input->post('link');
            $publish = $this->input->post('publish');
            $status = $this->input->post('status');
            $aktif = $this->input->post('aktif');
            $urutan = $this->input->post('urutan');
            $seo = $this->input->post('seo');

            $data = array(
                // 'id_admin'=>$id_admin,
                'nama_modul'=>$nama_modul,
                'link'=>$link,
                'publish'=>$publish,
                'status'=>$status,
                'aktif'=>$aktif,
                'urutan'=>$urutan,
                'link_seo'=>$seo
            );
            if (!empty($_FILES['modul']['name'])) {
                $upload = $this->edit_upload_Modul();
                $data['file_materi'] = $upload;
            }
            $this->Admin_model->update_data_modul($id,$data);
            redirect('Dashboard_elesson/viewModul',$data);
        }
        private function edit_upload_Modul(){
            $config['upload_path'] 		= './upload/modul';
            $config['allowed_types'] 	= 'pdf|xls|docx|ppt|pptx';
            $config['max_size'] 			= 2048;
            $config['file_name'] 			= round(microtime(true)*1000);

            $this->load->library('upload', $config);
            if (!$this->upload-> do_upload('modul')) {
                $this->session->set_flashdata('msg', $this->upload->display_errors('',''));
                redirect('Dashboard_elesson/viewModul');
            }
        return $this->upload->data('file_name');
        }

        public function downloadModul(){
            $name = $this->uri->segment(3);
            $data = file_get_contents(base_url().'upload/modul/'.$name);
            force_download($name, $data);
        }
        //================================ End Of Edit Modul =========================//



        //================================ Delete Modul ===============================//
        function Hapus_Modul(){
            $id = $this->uri->segment(3);
            $this->Admin_model->delete_data_modul($id);
          }
        //================================ End Of Delete Modul =======================//

        //================================ End Of Modul =============================//


        //================================ Awal Topik ================================//

        public function viewTopik(){
            $data ['topik'] = $this->Admin_model->getAllTopik()->result();
            $this->template->tampil('crud/elesson/Pengajar/topik',$data);
        }
        public function viewTopikSiswa(){
            $data ['topik'] = $this->Admin_model->getAllTopik()->result();
            $this->template->tampil('crud/elesson/Pengajar/topikSiswa',$data);
        }
        public function AddTopik(){
            $data['kelas'] = $this->Admin_model->getKelas()->result();
            $data['mapel'] = $this->Admin_model->getMapel()->result();
            $data['pembuat'] = $this->Admin_model->getPembuat()->result();
            $data['terbit'] = $this->Admin_model->getTerbit()->result();
            $this->template->tampil('crud/elesson/Pengajar/tambah/tambah_topik',$data);
          }

          public function proses_tambah_data_topik(){
            $judul = $this->input->post('judul');
            $kelas = $this->input->post('kelas');
            $mapel = $this->input->post('mata_pelajaran');
            $tgl = $this->input->post('tgl_buat');
            $stts = $this->input->post('status');
            $wkt = $this->input->post('waktu_pengerjaan');
            $info = $this->input->post('info');
            $terbit = $this->input->post('terbit');

            $data = array(
                'judul'=>$judul,
                'kelas'=>$kelas,
                'mata_pelajaran'=>$mapel,
                'tgl_buat'=>$tgl,
                'status'=>$stts,
                'waktu_pengerjaan'=>$wkt,
                'info'=>$info,
                'terbit'=>$terbit
            );
            $this->Admin_model->save_data_modul($data,'topik_quiz');
            redirect('Dashboard_elesson/viewTopik',$data);
        }

        //================================ Edit Topik ================================//
        public function Edit_Topik($id){
            $where = array('id_tq'=>$id);
            $data['user']=$this->Admin_model->edit_data_topik($where,'topik_quiz')->result();
            $data['kelas']=$this->Admin_model->getKelas()->result();
            $data['mapel']=$this->Admin_model->getMapel()->result();
            $data['pembuat']=$this->Admin_model->getPembuat()->result();
            $data['terbit']=$this->Admin_model->getTerbit()->result();
            $this->template->tampil('crud/elesson/Pengajar/edit/edit_topik',$data);
        }
        public function proses_edit_data_topik(){
            $id=$this->input->post('id_tq');
            $judul = $this->input->post('judul');
            $kelas = $this->input->post('kelas');
            $mapel = $this->input->post('mata_pelajaran');
            $tgl = $this->input->post('tgl_buat');
            $stts = $this->input->post('status');
            $wkt = $this->input->post('waktu_pengerjaan');
            $info = $this->input->post('info');
            $terbit = $this->input->post('terbit');

            $data = array(
                // 'id_admin'=>$id_admin,
                'judul'=>$judul,
                'kelas'=>$kelas,
                'mata_pelajaran'=>$mapel,
                'tgl_buat'=>$tgl,
                'status'=>$stts,
                'waktu_pengerjaan'=>$wkt,
                'info'=>$info,
                'terbit'=>$terbit
            );
            // $where = array(
            //     'id_admin'=>$id_admin
            // );
            $this->Admin_model->update_data_topik($id,$data);
        }
        //================================ End Of Edit Topik =========================//



        //================================ Delete Topik ===============================//
        function Hapus_Topik(){
            $id = $this->uri->segment(3);
            $this->Admin_model->delete_data_topik($id);
          }
        //================================ End Of Delete Topik =======================//

      //================================ End Of Topik =============================//



        //================================ Logout ====================================//
        public function logout(){
            $data['logout'] = $this->session->sess_destroy();
            $this->load->view('crud/elesson/Login/login_elesson');
        }
        //================================ End Of Logout ============================//
    }

?>