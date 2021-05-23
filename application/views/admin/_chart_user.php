<?php
  $groupspk = [];
 
  foreach($spk as $val){
    $groupspk[$val['kelas']] = $val['total'];
  };
?>
<script src="<?= base_url('assets/js/Chart.min.js') ?>"></script>
<script>
  data = {
    labels: ["Data Siswa"],
    datasets: [
      {
        label: "IPA",
        backgroundColor: "rgba(80, 80, 200, 0.7)",
        borderWidth: 1.0,
        data: [<?= $groupspk['MIPA'] ?>]
      },
      {
        label: "IPS",
        backgroundColor: "rgba(80, 200, 80, 0.7)",
        borderWidth: 1.0,
        data: [<?= $groupspk['IPS'] ?>]
      }
    ],

  }
  var ctx = document.getElementById('dashchart').getContext('2d');
  window.myBar = new Chart(ctx, {
    type: 'bar',
    data: data,
    options: {
      responsive: true,
      legend: {
        display: false,
        position: 'top'
      },
      title: {
        display: true,
        text: 'Jumlah Data'
      },
      responsive: true,
      scales: {
        xAxes: [{
          stacked: true,
        }],
        yAxes: [{
          stacked: true
        }]
      }
    }
  });
</script>