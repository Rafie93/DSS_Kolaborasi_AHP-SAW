<html>
<head>
    <title>Laporan Penerimaan Beasiswa</title>
    
    <style type="text/css">
        #tabel_ttd td{padding:0;}
        body {
            font-family: "Times New Roman" ;
            font-size: 12px;
            border: 1px solid;
            padding: 0px 20px;
        }

        h2 {
            font-family: "Times New Roman" ;
            font-size: 12px;
            text-align: center;
            margin-bottom: 10px;
        }
        h3{
            text-align: left;
            margin-bottom: 10px;
        }

        td {
            height:25px;
            text-align: center;
        }

        .isi_form {
            width: 100%;
            font-size: 11px;
        }

        .isi_form td {
            text-align: left;
            vertical-align: top;
        }

        .tebal {
            font-weight: bold;
        }

        .atas {
            border: none;
            border-left: 1px solid;
            border-right: 1px solid;
            border-bottom: 1px solid;
        }

        .samping {
            border: none;
            border-left: 1px solid;
            border-right: 1px solid;
        }

        .bawah {
            border: none;
            border-left: 1px solid;
            border-right: 1px solid;
            border-top: 1px solid;
        }

        .semua {
            border: 1px solid;
        }

        table {
            margin-bottom: 15px;
            font-size: 10px;
        }
        .zebra-table {
        width: 100%;
        border-collapse: collapse;
        overflow: hidden;
        }
        .zebra-table th,.zebra-table td{
        vertical-align: top;
        padding:6px 6px;
        text-align: left;
        margin:0;
        }
        


    </style>
    
    
</head>
<body>
    <? $this->load->view('header_laporan'); ?>
    <h2><?php echo strtoupper($title) ?></h2>
    <h2>TAHUN : <?php echo $tahun ?></h2>


    <table class="zebra-table" border="1"> 
        <thead> 
            <tr style="background-color: #87CEFA;"> 
                <th  style='text-align:center;'>No</th> 
                <th  style='text-align:center;'>NISN</th>
                <th  style='text-align:center;'>Nama</th> 
                <th  style='text-align:center;'>Nilai Rata</th>
                <th  style='text-align:center;'>Penghasilan Orang Tua</th>
                <th  style='text-align:center;'>Tanggungan Orang Tua</th>
                <th  style='text-align:center;'>Pekerjaan Orang Tua</th>
                <th  style='text-align:center;'>Alat Transportasi</th>
                <th  style='text-align:center;'>Hasil</th>
                <th  style='text-align:center;'>Rangking</th> 
            </tr> 
        </thead> 
        <tbody> 
            <?php if (empty($data)) { ?>
                <tr> 
                    <td colspan="8">Data tidak ditemukan</td> 
                </tr> 
            <?php
            } else {
                $no = 0;
                foreach ($data as $row) {
                    $no++;
                    ?> 
                    <tr> 
                        <td  style='text-align:center;'><?php echo $no ?></td>
                        <td><?php echo $row->nis ?></td> 
                         <td><?php echo $row->nama ?></td> 
                        <td style='text-align:right;'><?php echo number_format($row->nilai_rata,2) ?></td>
                        <td><?php echo number_format($row->penghasilan_ortu,2) ?></td>
                        <td  style='text-align:center;'><?php echo number_format($row->tanggungan_ortu) ?></td>
                        <td><?php echo $row->pekerjaan_ortu ?></td>
                        <td><?php echo $row->alat_transportasi ?></td>
                        <td><?php echo number_format($row->hasil,6) ?></td>
                        <td style='text-align:center;'><?php echo $row->rangking ?></td>
                    </tr> 
                    <?php
                }
            }
            ?> 
        </tbody> 
    </table> 
 </body>
</html>