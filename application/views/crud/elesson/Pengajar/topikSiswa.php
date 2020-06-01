<?php
  $getUser = $this->session->userdata('session_user');
  $getLevel = $this->session->userdata('session_level');
?>

    <body>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Data Pengajar</h6></div>
                <div class="card-body"><div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr><th>No</th>
                                <th>Judul</th>
                                <th>Tanggal</th>
                                <th>Kelas</th>
                                <th>Mata Pelajaran</th>
                                <th>Waktu</th>
                                <th>Pembuat</th>
                                <th>Info</th>
                                <th>Opsi</th></tr>
                        </thead>
                        <!-- <tfoot><tr><th>No</th>
                                <th>Username</th>
                                <th>Nama</th>
                                <th>Grup</th>
                                <th>Aksi</th></tr>
                        </tfoot> -->
                        <tbody>
                            <?php $no=1;
                                    foreach($topik as $baris){ 
                            ?>
                            <tr><td><?php echo $no++ ?></td>
                                <td><?php echo $baris->judul ?></td>
                                <td><?php echo $baris->tgl_buat ?></td>
                                <td><?php echo $baris->kelas?></td>
                                <td><?php echo $baris->mata_pelajaran?></td>
                                <td><?php echo $baris->waktu_pengerjaan ?></td>
                                <td><?php echo $baris->status?></td>
                                <td><?php echo $baris->info ?></td>
                                <td>
                                    <?php
                                        if($getLevel==2){
                                            echo '<a href="'.base_url('Dashboard_elesson/Edit_Topik/'.$baris->id_tq).'" class="fa fa-edit">&nbsp;</a>';
                                            echo " ";
                                            echo '<a href="'.base_url('Dashboard_elesson/Hapus_Topik/'.$baris->id_tq).'" class="fa fa-times">&nbsp;</a>';
                                        }
                                    ?>
                                    <?php
                                        if($getLevel==3){
                                            echo '<a href="'.base_url('Dashboard_elesson/Show/'.$baris->id_tq).'" class="fa fa-eye">&nbsp;</a>';
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