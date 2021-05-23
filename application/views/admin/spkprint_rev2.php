<html>
<title>HASIL SPK</title>
<style>
  body {
    background-image: url('<?= base_url('assets/media/des-bg.png') ?>');
    font-family: sans-serif;
  }
  td:nth-child(2) { padding-left: 16mm }
</style>

<body>
  <!-- Bagian Info Siswa -->
  <div style="position: absolute; bottom: 104.8mm; left: 5.6mm; font-size: 15pt; font-weight: bold"><?= $input['nama_siswa'] ?></div>
  <div style="position: absolute; bottom: 90.8mm; left: 5.6mm; font-size: 15pt; font-weight: bold"><?= $input['nis'] ?></div>
  <div style="position: absolute; bottom: 104.8mm; left: 75mm; width: 20mm; font-size: 15pt; font-weight: bold"><?= $input['minat'] ?></div>
  <div style="position: absolute; bottom: 90.8mm; left: 75mm; width: 20mm; font-size: 15pt; font-weight: bold"><?= $input['nilai_iq'] ?></div>

  <!-- Bagian Nilai -->
  <div style="position: absolute; bottom: 19.7mm; left: 59.2mm;">
    <table style="font-size: 15pt; border-spacing: 0">
        <tr style="border: none;">
          <td><?= $input['rapor_ind'] ?></td>
          <td><?= $input['usbn_ind'] ?></td>
        </tr>
        <tr>
          <td><?= $input['rapor_ing'] ?></td>
          <td><?= $input['usbn_ing'] ?></td>
        </tr>
        <tr>
          <td><?= $input['rapor_mtk'] ?></td>
          <td><?= $input['usbn_mtk'] ?></td>
        </tr>
        <tr>
          <td><?= $input['rapor_ipa'] ?></td>
          <td><?= $input['usbn_ipa'] ?></td>
        </tr>
        <tr>
          <td><?= $input['rapor_ips'] ?></td>
          <td><?= $input['usbn_ips'] ?></td>
        </tr>
    </table>
  </div>

  <!-- Bagian Gambar Jurusan -->
  <div style="position: absolute; bottom: 32mm; left: 128mm;">
    <?php if ($result['klasifikasi'][0]['prediksi'] == "MIPA") { ?>
      <img src="<?= base_url('assets/media/des-mipa.png') ?>" alt="">
    <?php } else { ?>
      <img src="<?= base_url('assets/media/des-ips.png') ?>" alt="">
    <?php } ?>
  </div>

  <!-- Bagian Keterangan Jurusan -->
  <div style="position: absolute; bottom: 18mm; left: 135mm;font-size: 30pt">
    <?php if ($result['klasifikasi'][0]['prediksi'] == "MIPA") { ?>
      Jurusan MIPA
    <?php } else { ?>
      Jurusan IPS
    <?php } ?>
  </div>
  
</body>

</html>