<?php 
    class Admin_model extends CI_Model{
        public function __construct(){
    	    parent::__construct();
	    }
        //get All Attribute from tb Admin
        function getAllAdmin(){
            $this->db->select('*');
            $this->db->from('admin');
            $this->db->join('tb_level','admin.level = tb_level.id_level');
            $this->db->join('blokir','admin.blokir = blokir.id_blokir');
            $query = $this->db->get();
            return $query;
        }

        //get admin by asc
        function get_admin(){
            $this->db->order_by('id_admin','ASC');
            return $this->db->from('admin')->get()->row_array();
        }
        //End get admin by asc
        
        // End of get All


        
        //get Level from tb_level
        function getLevel(){
            $this->db->select('*');
            $this->db->from('tb_level');
            $query = $this->db->get();
            return $query;
        }
        //get Level order by ASC
        function get_level(){
            $this->db->order_by('id_level','ASC');
            return $this->db->from('tb_level')->get()->row_array();
        }
        //End get Level by ASC
        //End of get Level
        



        //get Blokir from tb_blokir
        function getBlokir(){
            $this->db->select('*');
            $this->db->from('blokir');
            $query = $this->db->get();
            return $query;
        }
        //get Blokir from tb_blokir
        function get_blokir(){
            $this->db->order_by('id_blokir','ASC');
            return $this->db->from('blokir')->get()->row_array();
        }
        //End Of get Blokir
        //End of get Blokir



        // Login Function
        function login($user,$pass,$table){
            $this->db->select('*');
            $this->db->from('admin');
            $this->db->where('username',$user);
            $this->db->where('password',$pass);
            $query = $this->db->get();
            return $query;
        }
        //End of Login



        //CRUD for Admin
        function save_data_user($data,$table){
            $this->db->insert($table,$data);
        }
        function edit_data_user($where,$table){
            return $this->db->get_where($table,$where);
        }
        function update_data_user($id, $data){
            $this->db->where('id_admin', $id);
            $berhasil = $this->db->update('admin', $data);
            if($berhasil)
            {
                redirect('Dashboard_elesson/'.'?update=1','refresh');
            }
            else
            {
                redirect('Dashboard_elesson/'.'?update=2','refresh');
            }
        }
        function delete_data_user($id){
            $this->db->where('id_admin', $id);
            $berhasil = $this->db->delete('admin');
            if($berhasil)
            {
                redirect('Dashboard_elesson/'.'?delete=1'.'refresh');
            }
            else
            {
                redirect('Dashboard_elesson/'.'?delete=2'.'refresh');
            }
        }



        //=================================== Awal Get Modul ======================//
        function getModul(){
            $this->db->select('*');
            $this->db->from('modul');
            $query = $this->db->get();
            return $query;
        }
        function getAllModul(){
            $this->db->select('*');
            $this->db->from('modul');
            $this->db->join('status','modul.status = status.id_status');
            $this->db->join('publish','modul.publish = publish.id_publish');
            $this->db->join('aktif','modul.aktif = aktif.id_aktif');
            $query = $this->db->get();
            return $query;
        }
        //get Level from publish
        function getPublish(){
            $this->db->select('*');
            $this->db->from('publish');
            $query = $this->db->get();
            return $query;
        }
        //get publish order by ASC
        function get_publish(){
            $this->db->order_by('id_publish','ASC');
            return $this->db->from('publish')->get()->row_array();
        }
        //End get publish by ASC
        //End of get publish

        //get status from status
        function getStatus(){
            $this->db->select('*');
            $this->db->from('status');
            $query = $this->db->get();
            return $query;
        }
        //get status order by ASC
        function get_status(){
            $this->db->order_by('id_status','ASC');
            return $this->db->from('status')->get()->row_array();
        }
        //End get publish by ASC
        //End of get publish

        //get Aktif from aktif
        function getAktif(){
            $this->db->select('*');
            $this->db->from('aktif');
            $query = $this->db->get();
            return $query;
        }
        //get Aktif order by ASC
        function get_aktif(){
            $this->db->order_by('id_aktif','ASC');
            return $this->db->from('aktif')->get()->row_array();
        }
        //End get Aktif by ASC
        //End of get Aktif

        //=================================== CRUD Modul ===========================//
        function save_data_modul($data,$table){
            $this->db->insert($table,$data);
        }
        function edit_data_modul($where,$table){
            return $this->db->get_where($table,$where);
        }
        function update_data_modul($id, $data){
            $this->db->where('id_modul', $id);
            $berhasil = $this->db->update('modul', $data);
            if($berhasil)
            {
                redirect('Dashboard_elesson/viewModul'.'?update=1','refresh');
            }
            else
            {
                redirect('Dashboard_elesson/viewModul'.'?update=2','refresh');
            }
        }
        function delete_data_modul($id){
            $this->db->where('id_modul', $id);
            $berhasil = $this->db->delete('modul');
            if($berhasil)
            {
                redirect('Dashboard_elesson/viewModul'.'?delete=1'.'refresh');
            }
            else
            {
                redirect('Dashboard_elesson/viewModul'.'?delete=2'.'refresh');
            }
        }
        //=================================== End CRUD Modul =======================//
        //=================================== Akhir Get Modul ======================//



        //=================================== Awal Get Topik ======================//
        function getTopik(){
            $this->db->select('*');
            $this->db->from('topik_quiz');
            $query = $this->db->get();
            return $query;
        }
        function getAllTopik(){
            $this->db->select('*');
            $this->db->from('topik_quiz');
            $this->db->join('kelas','topik_quiz.kelas = kelas.id_kelas');
            $this->db->join('mata_pelajaran','topik_quiz.mata_pelajaran = mata_pelajaran.id_mata_pelajaran');
            $this->db->join('terbit','topik_quiz.terbit = terbit.id_terbit');
            $this->db->join('status','topik_quiz.status = status.id_status');
            $query = $this->db->get();
            return $query;
        }
        //get Level from publish
        function getKelas(){
            $this->db->select('*');
            $this->db->from('kelas');
            $query = $this->db->get();
            return $query;
        }
        //get publish order by ASC
        function get_kelas(){
            $this->db->order_by('id_kelas','ASC');
            return $this->db->from('kelas')->get()->row_array();
        }
        //End get publish by ASC
        //End of get publish

        //get status from status
        function getMapel(){
            $this->db->select('*');
            $this->db->from('mata_pelajaran');
            $query = $this->db->get();
            return $query;
        }
        //get status order by ASC
        function get_mapel(){
            $this->db->order_by('id_mata_pelajaran','ASC');
            return $this->db->from('mata_pelajaran')->get()->row_array();
        }
        //End get publish by ASC
        //End of get publish

        //get Aktif from aktif
        function getPembuat(){
            $this->db->select('*');
            $this->db->from('status');
            $query = $this->db->get();
            return $query;
        }
        //get Aktif order by ASC
        function get_pembuat(){
            $this->db->order_by('id_status','ASC');
            return $this->db->from('status')->get()->row_array();
        }
        //End get Aktif by ASC
        //End of get Aktif

        //get Aktif from aktif
        function getTerbit(){
            $this->db->select('*');
            $this->db->from('terbit');
            $query = $this->db->get();
            return $query;
        }
        //get Aktif order by ASC
        function get_terbit(){
            $this->db->order_by('id_terbit','ASC');
            return $this->db->from('terbit')->get()->row_array();
        }
        //End get Aktif by ASC
        //End of get Aktif

        //=================================== CRUD Modul ===========================//
        function save_data_topik($data,$table){
            $this->db->insert($table,$data);
        }
        function edit_data_topik($where,$table){
            return $this->db->get_where($table,$where);
        }
        function update_data_topik($id, $data){
            $this->db->where('id_tq', $id);
            $berhasil = $this->db->update('topik_quiz', $data);
            if($berhasil)
            {
                redirect('Dashboard_elesson/viewTopik'.'?update=1','refresh');
            }
            else
            {
                redirect('Dashboard_elesson/viewTopik'.'?update=2','refresh');
            }
        }
        function delete_data_topik($id){
            $this->db->where('id_tq', $id);
            $berhasil = $this->db->delete('topik_quiz');
            if($berhasil)
            {
                redirect('Dashboard_elesson/viewTopik'.'?delete=1'.'refresh');
            }
            else
            {
                redirect('Dashboard_elesson/viewTopik'.'?delete=2'.'refresh');
            }
        }
        //=================================== End CRUD Modul =======================//
        //=================================== Akhir Get Topik ======================//
    
}

?>