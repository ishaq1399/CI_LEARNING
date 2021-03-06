<div class="row">
    <div class="col-lg-7">
        <div class="p-5">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Tambah User</h1></div>
        <?php foreach ($user as $row)
        {
            ?>
        <form class="user" action="<?php echo base_url().'Dashboard_elesson/proses_edit_data_user';?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
             <input type="hidden" class="form-control form-control-user" id="id_admin" name="id_admin"  value="<?php echo $row->id_admin;?>" require>
        </div>
        <div class="form-group">
             <input type="text" class="form-control form-control-user" id="username" name="username"  value="<?php echo $row->username;?>" require>
        </div>
        <div class="form-group">
            <input type="password" class="form-control form-control-user" id="password" name="password" value="<?php echo $row->password;?>" require>
        </div>
        <div class="form-group">
             <input type="text" class="form-control form-control-user" id="nama" name="nama" value="<?php echo $row->nama_lengkap;?>" require>
        </div>
        <div class="form-group">
             <textarea name="alamat" id="alamat" cols="65" rows="10" require><?php echo $row->alamat;?></textarea>
        </div>
        <div class="form-group">
             <input type="number" class="form-control form-control-user" id="telp" name="telp" value="<?php echo $row->no_telp;?>" require>
        </div>
        <div class="form-group">
             <input type="email" class="form-control form-control-user" id="email" name="email" value="<?php echo $row->email;?>" require>
        </div>
        <div class="form-group">
             <input type="text" class="form-control form-control-user" id="id_sess" name="id_session" value="<?php echo $row->id_session;?>" require>
        </div>

        <div class="form-group">
        <?php 
                if($level['level'] == "admin"){
                    echo "<select name='level' class='form-control' id='level'>
                        <option value='1' selected>Admin</option>
                        <option value='2'>Pengajar</option>
                        <option value='3'>User</option>
                        </select>";
                }
                else if($level['level'] == "pengajar"){
                    echo "<select name='level' class='form-control' id='level'>
                    <option value='1'>Admin</option>
                    <option value='2' selected>Pengajar</option>
                    <option value='3'>User</option>
                        </select>";
                }
                else if($level['level'] == "user"){
                    echo "<select name='level' class='form-control' id='level'>
                    <option value='1'>Admin</option>
                    <option value='2'>Pengajar</option>
                    <option value='3' selected> User</option>
                        </select>";
                }
            ?>
        </div>
        <div class="form-group">
            <?php 
                if($blokir['blokir'] == "Ya"){
                    echo "<select name='blokir' class='form-control' id='blokir' >
                        <option value='1' selected>Ya</option>
                        <option value='2'>Tidak</option>
                        </select>";
                }
                else{
                    echo "<select name='blokir' class='form-control' id='blokir' >
                        <option value='1'>Ya</option>
                        <option value='2' selected>Tidak</option>
                        </select>";
                }
            ?>
        </div>
        <div class="form-group">
        Pilih Foto&nbsp;:&nbsp;<input type="file" id="photo" name="photo" require>
        </div>
                <input type="submit" class="btn btn-success btn-icon-split" name="submit" value="Update">
            </form>
            <?php 
                }
                ?>
            <hr>
            <div class="text-center">
                <a class="small" href="<?php echo base_url('Dashboard_elesson')?>">Kembali</a>
            </div>
        </div>
    </div>
</div>