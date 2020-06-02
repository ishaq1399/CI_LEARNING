<div class="row">
    <div class="col-lg-7">
        <div class="p-5">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Edit Modul</h1></div>
        <?php foreach ($user as $row)
        {
            ?>
        <form class="user" action="<?php echo base_url().'Dashboard_elesson/proses_edit_data_modul';?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
             <input type="hidden" class="form-control form-control-user" id="id_modul" name="id_modul"  value="<?php echo $row->id_modul;?>" require>
        </div>

        <div class="form-group">
             <input type="text" class="form-control form-control-user" id="nama_modul" name="nama_modul" value="<?php echo $row->nama_modul;?>" require>
        </div>
        <div class="form-group">
            <input type="text" class="form-control form-control-user" id="link" name="link" value="<?php echo $row->link;?>" require>
        </div>

        <div class="form-group">
        <?php 
                if($status['status'] == "admin"){
                    echo "<select name='status' class='form-control' id='status'>
                        <option value='#'>Select Below for Status :</option>
                        <option value='1' selected>Admin</option>
                        <option value='2'>Pengajar</option>
                        </select>";
                }
                else {
                    echo "<select name='status' class='form-control' id='status'>
                    <option value='#'>Select Below for Status :</option>
                    <option value='1'>Admin</option>
                    <option value='2' selected>Pengajar</option>
                        </select>";
                }
            ?>
        </div>
        <div class="form-group">
            <?php 
                if($publish['publish'] == "Ya"){
                    echo "<select name='publish' class='form-control' id='publish' >
                        <option value='#'>Select Below for Publish :</option>
                        <option value='1' selected>Ya</option>
                        <option value='2'>Tidak</option>
                        </select>";
                }
                else{
                    echo "<select name='publish' class='form-control' id='publish' >
                    <option value='#'>Select Below for Publish :</option>
                        <option value='1'>Ya</option>
                        <option value='2' selected>Tidak</option>
                        </select>";
                }
            ?>
        </div>
        <div class="form-group">
            <?php 
                if($aktif['aktif'] == "Ya"){
                    echo "<select name='aktif' class='form-control' id='aktif' >
                        <option value='#'>Select Below for Aktif :</option>
                        <option value='1' selected>Ya</option>
                        <option value='2'>Tidak</option>
                        </select>";
                }
                else{
                    echo "<select name='aktif' class='form-control' id='aktif' >
                    <option value='#'>Select Below for Aktif :</option>
                        <option value='1'>Ya</option>
                        <option value='2' selected>Tidak</option>
                        </select>";
                }
            ?>
        </div>
        
        
        <div class="form-group">
             <input type="number" class="form-control form-control-user" id="urutan" name="urutan" value="<?php echo $row->urutan;?>" require>
        </div>
        <div class="form-group">
            <input type="text" class="form-control form-control-user" id="seo" name="seo" value="<?php echo $row->link_seo;?>" require>
        </div>
        <div class="form-group">
        Pilih Modul&nbsp;:&nbsp;<input type="file" id="modul" name="modul" require>
        </div>
                <input type="submit" class="btn btn-success btn-icon-split" name="submit" value="Update">
            </form>
            <?php 
                }
                ?>
            <hr>
            <div class="text-center">
                <a class="small" href="<?php echo base_url('Dashboard_elesson/viewModul')?>">Kembali</a>
            </div>
        </div>
    </div>
</div>