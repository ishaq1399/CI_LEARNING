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
                                <th>Link</th>
                                <th>Publish</th>
                                <th>Aktif</th>
                                <th>Pembuat</th>
                                <th>Modul</th>
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
                                <td><?php echo $baris->file_materi ?></td>
                                <td>
                                    <?php
                                        if($getLevel==2){
                                            echo '<a href="'.base_url('Dashboard_elesson/Edit_Modul/'.$baris->id_modul).'" class="fa fa-edit">&nbsp;</a>';
                                            echo " ";
                                            echo '<a href="'.base_url('Dashboard_elesson/Hapus_Modul/'.$baris->id_modul).'" class="fa fa-times">&nbsp;</a>';
                                        }
                                    ?>
                                    </td></tr>

                                    <?php } ?>
                        </tbody>
                    </table>
                </div>
                <a href="<?php echo base_url('Dashboard_elesson/AddModul')?>" class="btn btn-success btn-icon-split">
                <span class="text">Tambah Data</span>
                </a>
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