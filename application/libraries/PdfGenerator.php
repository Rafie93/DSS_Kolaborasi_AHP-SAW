<?php
 
class PdfGenerator
{
  public function generate($html, $filename, $paper_size='a4', $orientation='portrait')
  {
//    define('DOMPDF_ENABLE_AUTOLOAD', false);
//    require_once("./vendor/dompdf/dompdf/dompdf_config.inc.php");
 	require_once APPPATH."third_party/dompdf/dompdf_config.inc.php";

    $dompdf = new DOMPDF();
    $dompdf->load_html($html);

    $dompdf->set_paper($paper_size, $orientation);

    $dompdf->render();
    $dompdf->stream($filename.'.pdf',array("Attachment"=>0));
  }
}