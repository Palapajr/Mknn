<!-- Page JS Plugins CSS -->
<link rel="stylesheet" href="<?= base_url() ?>assets/js/plugins/datatables/dataTables.bootstrap4.css">

<link rel="stylesheet" href="<?= base_url() ?>assets/css/responsive.dataTables.min.css">
<link rel="stylesheet" href="<?= base_url() ?>assets/css/rowReorder.dataTables.min.css">

<!-- Page JS Plugins -->
<script src="<?= base_url() ?>assets/js/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>assets/js/plugins/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page JS Code -->
<script src="<?= base_url() ?>assets/js/pages/be_tables_datatables.min.js"></script>

<!-- <script src="<?= base_url() ?>assets/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url() ?>assets/js/dataTables.rowReorder.min.js"></script> -->

<div class="content">
        <h2 class="content-heading">Data SPK Terklasifikasi</h2>

        <!-- Dynamic Table Full -->
        <div class="block">
            <div class="block-header block-header-default">
                <h3 class="block-title">Seluruh Data SPK </h3>
            </div>
            
            <div class="block-content block-content-full">
            <?= $this->session->flashdata('pesan'); ?>
            <!-- <button type="button" class="btn btn-success mr-5 mb-5 left" id="tomboltambah">
                    <i class="fa fa-plus mr-5"></i>Add User
                </button>
                <button type="button" class="btn btn-primary mr-5 mb-5" data-toggle="modal" data-target="#modal-popin">
                    <i class="fa fa-download mr-5"></i>Import
                </button> -->
                <!-- DataTables functionality is initialized with .js-dataTable-full class in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
                <table class="table table-responsive table-hover display nowrap" style="width:100%" id="datalog_spk">

                    <thead>
                        <tr class="text-center">
                            <th>No</th>
                            <th>NIS</th>
                            <th>Nama</th>
                            <th>Rapor IND</th>
                            <th>USBN IND</th>
                            <th>Rapor ING</th>
                            <th>USBN ING</th>
                            <th>Rapor MTK</th>
                            <th>USBN MTK</th>
                            <th>Rapor IPA</th>
                            <th>USBN IPA</th>
                            <th>Rapor IPS</th>
                            <th>USBN IPS</th>
                            <th>Minat</th>
                            <th>Nilai IQ</th>
                            <th>Kelas</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END Dynamic Table Full -->

    </div>
    <!-- END Page Content -->


<div class="viewmodal" style="display: none;"></div>

<script> 


function tampildataspk() {
    table = $('#datalog_spk').DataTable({
        responsive: true,
        "destroy": true,
        "processing": true,
        "serverSide": true,
        "order": [],

        "ajax": {
            "url": "<?= site_url('Spk_log/ambildata') ?>",
            "type": "POST"
        },


        "columnDefs": [{
            "targets": [0],
            "orderable": false,
            "width": 5
        }],

    });
}

$(document).ready(function () {
    tampildataspk();
});

function edit(nis) {
    $.ajax({
        type: 'post',
        url: "<?= site_url('Spk_log/formedit') ?>",
        data: {
            nis: nis
        },
        dataType: "json",
        success: function(response) {
            if (response.sukses) {
                $('.viewmodal').html(response.sukses).show();
                $('#modaleditspk').on('shown.bs.modal', function(e) {
                    $('#nama_siswa').focus();
                })
                $('#modaleditspk').modal('show');
            }
        }
    });
}

function hapus(nis) {
    Swal.fire({
        title: 'Hapus',
        text: `Yakin menghapus data siswa dengan NIS ${nis} ?`,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Ya, Hapus',
        cancelButtonText: 'Tidak'
    }).then((result) => {
        if (result.value) {
            $.ajax({
                type: "post",
                url: "<?= site_url('spk_log/hapus') ?>",
                data: {
                    nis: nis,
                },
                dataType: "json",
                success: function(response) {
                    if (response.sukses) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Konfirmasi',
                            text: response.sukses
                        });
                        tampildatalog_spk();
                    }
                }
            });
        }
    })
}

</script>