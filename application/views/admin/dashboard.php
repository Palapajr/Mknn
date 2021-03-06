<?php if ($this->session->userdata('nama')) { ?>

    <br><h1 class="heading text-center">SISTEM PEMILIHAN JURUSAN SMA NEGERI 6 KOTA PEKANBARU</h1>
    <!-- Page Content -->
    <div class="content">
        <div class="row invisible" data-toggle="appear">

            <div class="col-6 col-xl-3">
                <a class="block block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                    <div class="block-content block-content-full clearfix">
                        <div class="float-right mt-15 d-none d-sm-block">
                            <i class="si si-users fa-2x text-primary-light"></i>
                        </div>
                        <div class="font-size-h3 font-w600 text-primary"><?php echo $totaltraining; ?></div>
                        <div class="font-size-sm font-w600 text-uppercase text-muted">Data Siswa Training</div>
                    </div>
                </a>
            </div>
            <div class="col-6 col-xl-3">
                <a class="block block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                    <div class="block-content block-content-full clearfix">
                        <div class="float-right mt-15 d-none d-sm-block">
                            <i class="si si-users fa-2x text-earth-light"></i>
                        </div>
                        <div class="font-size-h3 font-w600 text-earth"><?php echo $totaltesting; ?></div>
                        <div class="font-size-sm font-w600 text-uppercase text-muted">Data Siswa Testing</div>
                    </div>
                </a>
            </div>
            <div class="col-6 col-xl-3">
                <a class="block block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                    <div class="block-content block-content-full clearfix">
                        <div class="float-right mt-15 d-none d-sm-block">
                            <i class="si si-users fa-2x text-danger-light"></i>
                        </div>
                        <div class="font-size-h3 font-w600 text-danger"><?php echo $totalspk; ?></div>
                        <div class="font-size-sm font-w600 text-uppercase text-muted">Data Siswa Terklasifikasi</div>
                    </div>
                </a>
            </div>
        </div>
            <div class="block">
                <div class="block-content block-content-full">
                <h3 class="text-center">Grafik Perbandingan Data </h3>
                    <div class="row invisible" data-toggle="appear">
                        <canvas id="dashchart"></canvas>
                    </div>
                </div>    
            </div>
    </div>
    <!-- END Page Content -->

    <?php } else { ?>
    <div class="content">
        <h1 class="heading text-center">SISTEM PEMILIHAN JURUSAN SMA NEGERI 6 KOTA PEKANBARU</h1>
            <div class="block">
                <div class="block-content">
                    <div class="row items-push">
                        <div class="col-md-4">
                        <div class="block-content p-0 overflow-hidden">
                            <a class="img-link" href="">
                                <img class="img-fluid rounded-top" src="<?= base_url() ?>assets/media/logo.jpg" alt="">
                            </a>
                        </div>

                        </div>
                        <div class="col-md-8 text-center">
                            <h1>Sistem Pemilihan Jurusan <br> SMA Negeri 6 Kota Pekanbaru. </h1>
                            <h4><small>Decision Support System Modified K-Nearest Neighbor </small></h4>
                            <hr>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
    </div>
<?php } ?>
   
   