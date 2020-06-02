<div class="row">
    <div class="col-lg-7">
        <div class="p-5">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Tambah User</h1></div>
    <form class="user" action="<?php echo base_url().'Dashboard_elesson/proses_tambah_data_modul';?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
             <input type="text" class="form-control form-control-user" id="nama_modul" name="nama_modul" placeholder="Nama Modul" require>
        </div>
        <div class="form-group">
            <input type="text" class="form-control form-control-user" id="link" name="link" placeholder="Link Modul" require>
        </div>
        <div class="form-group">
            <select id="publish" class="form-control" name="publish"  require>
            <option value='#'>Select Below for Publish :</option>
                <?php
                    foreach ($publish as $value) {
                     echo "<option value='$value->id_publish'>$value->publish</option>";
                    }
                ?>
            </select>
        </div>
        <div class="form-group">
            <select id="status" class="form-control" name="status"  require>
            <option value='#'>Select Below for Status :</option>
                <?php
                    foreach ($status as $value) {
                     echo "<option value='$value->id_status'>$value->status</option>";
                    }
                ?>
            </select>
        </div>
        <div class="form-group">
            <select id="aktif" class="form-control" name="aktif" require>
            <option value='#'>Select Below for Aktif :</option>
                <?php
                    foreach ($aktif as $value) {
                     echo "<option value='$value->id_aktif'>$value->aktif</option>";
                    }
                ?>
            </select>
        </div>
        <div class="form-group">
             <input type="number" class="form-control form-control-user" id="urutan" name="urutan" placeholder="Urutan" require>
        </div>
        <div class="form-group">
            <input type="text" class="form-control form-control-user" id="seo" name="seo" placeholder="Linked Seo" require>
        </div>
        <div class="form-group">
        Pilih Modul&nbsp;:&nbsp;<input type="file" id="modul" name="modul" require>
        </div>
                <input type="submit" class="btn btn-success btn-icon-split" name="submit" value="Tambah">
            </form>
            <hr>
            <div class="text-center">
                <a class="small" href="<?php echo base_url('Dashboard_elesson/viewModul')?>">Kembali</a>
            </div>
        </div>
    </div>
</div>