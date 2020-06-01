<div class="row">
    <div class="col-lg-7">
        <div class="p-5">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Tambah Topik</h1></div>
    <form class="user" action="<?php echo base_url().'Dashboard_elesson/proses_tambah_data_topik';?>" method="post">
        <div class="form-group">
             <input type="text" class="form-control form-control-user" id="nama_modul" name="judul" placeholder="Judul" require>
        </div>
        <div class="form-group">
            <select id="kelas" class="form-control" name="kelas"  require>
            <option value='#'>Select Below for Kelas :</option>
                <?php
                    foreach ($kelas as $value) {
                     echo "<option value='$value->id_kelas'>$value->kelas</option>";
                    }
                ?>
            </select>
        </div>
        <div class="form-group">
            <select id="mata_pelajaran" class="form-control" name="mata_pelajaran"  require>
            <option value='#'>Select Below for Mata Pelajaran :</option>
                <?php
                    foreach ($mapel as $value) {
                     echo "<option value='$value->id_mata_pelajaran'>$value->mata_pelajaran</option>";
                    }
                ?>
            </select>
        </div>
        <div class="form-group">
            <input type="date" class="form-control form-control-user" id="tgl_buat" name="tgl_buat" placeholder="Tanggal Mulai" require>
        </div>
        <div class="form-group">
            <select id="status" class="form-control" name="status" require>
            <option value='#'>Select Below for Pembuat :</option>
                <?php
                    foreach ($pembuat as $value) {
                     echo "<option value='$value->id_status'>$value->status</option>";
                    }
                ?>
            </select>
        </div>
        <div class="form-group">
             <input type="text" class="form-control form-control-user" id="waktu_pengerjaan" name="waktu_pengerjaan" placeholder="Waktu Pengerjaan" require>
        </div>
        <div class="form-group">
            <input type="text" class="form-control form-control-user" id="info" name="info" placeholder="info" require>
        </div>
        <div class="form-group">
            <select id="terbit" class="form-control" name="terbit" require>
            <option value='#'>Select Below for Terbit :</option>
                <?php
                    foreach ($terbit as $value) {
                     echo "<option value='$value->id_terbit'>$value->terbit</option>";
                    }
                ?>
            </select>
        </div>
                <input type="submit" class="btn btn-success btn-icon-split" name="submit" value="Tambah">
            </form>
            <hr>
            <div class="text-center">
                <a class="small" href="<?php echo base_url('Dashboard_elesson/viewTopik')?>">Kembali</a>
            </div>
        </div>
    </div>
</div>