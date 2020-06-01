<?php
  $getUser = $this->session->userdata('session_user');
  $getLevel = $this->session->userdata('session_level');
?>

    <body>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Data Siswa</h6></div>
                <div class="card-body"><div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr><th>No</th>
                                <th>Judul</th>
                                <th>Link</th>
                                <th>Publish</th>
                                <th>Aktif</th>
                                <th>Status</th>
                                <th>Pilihan</th></tr>
                        </thead>
                        <tbody>
                            <?php $no=1;
                                    foreach($modul as $baris){ 
                            ?>
                            <tr><td><?php echo $no++ ?></td>
                                <td><?php echo $baris->nama_modul ?></td>
                                <td><a href="<?php echo $baris->link ?>"><?php echo $baris->link ?></a></td>
                                <td><?php echo $baris->publish ?></td>
                                <td><?php echo $baris->aktif ?></td>
                                <td><?php echo $baris->status ?></td>
                                <td>
                                    <?php
                                        if($getLevel==2){
                                            echo '<a href="'.base_url('Dashboard_elesson/Edit_Modul/'.$baris->id_modul).'" class="fa fa-edit">&nbsp;</a>';
                                            echo " ";
                                            echo '<a href="'.base_url('Dashboard_elesson/Hapus_Modul/'.$baris->id_modul).'" class="fa fa-times">&nbsp;</a>';
                                        }
                                    ?>
                                    <?php
                                        if($getLevel==3){
                                            echo '<a href="'.base_url('Dashboard_elesson/Show/'.$baris->id_modul).'" class="fa fa-eye">&nbsp;</a>';
                                        }
                                        
                                    ?>
                                    </td></tr>

                                    <?php } ?>
                        </tbody>
                    </table>
               
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