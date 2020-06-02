<?php
  $getUser = $this->session->userdata('session_user');
  $getLevel = $this->session->userdata('session_level');
?>

    <body>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
            <?php if($getLevel == 1 ){
                echo '<h6 class="m-0 font-weight-bold text-primary">DataTables Admin</h6></div>';
            }
                else if($getLevel == 2 ){
                    echo '<h6 class="m-0 font-weight-bold text-primary">Data Pengajar</h6></div>';
            }       else if($getLevel == 3 ){
                        echo '<h6 class="m-0 font-weight-bold text-primary">DataTables User</h6></div>';
            } ?>
            
                <div class="card-body"><div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <?php
                                        if($getLevel == 1 ){
                            echo "<tr><th>No</th>
                                <th>Username</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>Level</th>
                                <th>Blokir</th>
                                <th>Foto</th>
                                <th>Aksi</th></tr>";
                                } ?>
                        </thead>
                        <tbody>
                            <?php if($getLevel == 1 ){ $no=1;
                                    foreach($user as $baris){ 
                            ?>
                            <tr><td><?php echo $no++ ?></td>
                                <td><?php echo $baris->username?></td>
                                <td><?php echo $baris->nama_lengkap?></td>
                                <td><?php echo $baris->alamat?></td>
                                <td><?php echo $baris->level?></td>
                                <td><?php echo $baris->blokir?></td>
                                <td><img  src="upload/foto/<?php echo $baris->foto?>"></td>
                                <td>
                                    <?php
                                        if($getLevel == 1 ){
                                            echo '<a href="'.base_url('Dashboard_elesson/edit_user/'.$baris->id_admin).'" class="fa fa-edit">&nbsp;</a>';
                                            echo " ";
                                            echo '<a href="'.base_url('Dashboard_elesson/hapus_user/'.$baris->id_admin).'" class="fa fa-times">&nbsp;</a>';
                                        }
                                    ?>
                                    </td></tr>

                                    <?php } ?>
                                    <?php } ?>
                                    
                            <?php if($getLevel == 2 ){ 
                                    {
                            ?>
                            <h1>Selamat Datang <?php echo $getUser ?> Sebagai Pengajar</h1>
                            <img  src="upload/foto/<?php echo $userid['foto']?>">
                                    <?php } ?>
                                    <?php } ?>
                            <?php if($getLevel == 3 ){ 
                            
                                { 
                            ?>
                            <h1>Selamat Datang <?php echo $getUser ?> Sebagai User</h1>
                            <img  src="upload/foto/<?php echo $userid['foto']?>">
                                    <?php } ?>
                                    <?php } ?>
                        </tbody>
                    </table>
                </div>
                <?php if($getLevel==1){
               echo '<a href="'.base_url('Dashboard_elesson/tambah_data_user').'" class="btn btn-success btn-icon-split">';
               echo '<span class="text">Tambah Data</span>';
               echo '</a>';
            }
                ?>
                <div>
                <?php
            if($this->input->get('delete')==1)
            {
				echo "<script>alert('Data Berhasil Dihapus!');
				</script>";
            }
            else if($this->input->get('delete')==2)
            {
                echo "<script>alert('Data Anda Gagal Dihapus !');
				</script>";
            }
			?>
                </div>
            </div>
        </div>
    </body>
</html>