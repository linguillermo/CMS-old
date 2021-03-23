<?php
  include_once 'FPDF/fpdf.php';
  $pdf = new FPDF('P','mm','Letter');
  $pdf->AddPage();

  $pdf->SetFont("Arial","B",9);
      $pdf->SetFillColor(19, 41, 16);
        $pdf->SetTextColor(255);
        $pdf->Cell(0, 5, "", 0, 1, 'C', true);

   $pdf->SetFont("Times","B",16);
  $pdf->SetFillColor(19, 41, 16);

    $pdf->Cell(0, 10, "CLINICA ABELEDA", 0, 1, 'C', true);

$pdf->SetFont("Arial","B",10);
    $pdf->SetFillColor(19, 41, 16);

      $pdf->Cell(0, 5, "MA. ROCHELLE A. DE GUZMAN - ABELEDA, MD.", 0, 1, 'C', true);

      $pdf->SetFont("Times","BI",10);
          $pdf->SetFillColor(19, 41, 16);

            $pdf->Cell(0, 5, "FELLOW, PHILIPPINE ACADEMY OF CLINICAL AND COSMETIC DERMATOLOGY", 0, 1, 'C', true);

            $pdf->SetFont("Arial","B",9);
                $pdf->SetFillColor(19, 41, 16);

                  $pdf->Cell(0, 5, "An Affiliate Society of the Philippine Medical Association", 0, 1, 'C', true);
                  $pdf->Cell(0, 5, "", 0, 1, 'C', true);

$pdf->SetFillColor(255);
$pdf->SetTextColor(19, 41, 16);
$pdf->Ln(5);
$pdf->Cell(0, 5, "Burgos Ave., Cabanatuan City", 0, 1, 'L', true);
$pdf->Cell(0, 5, "Mon. to Sat (9:30 am - 6:00 pm)", 0, 1, 'L', true);
$pdf->Cell(0, 5, "Tel. No.: (044) 463-0893", 0, 1, 'L', true);
$pdf->Cell(0, 5, "CP No.: 0929-297-8560 (SMART)", 0, 1, 'L', true);
$pdf->Cell(0, 5, "              0929-297-8560 (GLOBE)", 0, 1, 'L', true);




$pdf->SetFont('Arial', '', 10);
    $pdf->SetTextColor(0);
    $pdf->SetXY(10,-45);
    $pdf->Cell(0, 5, "Thank you for shopping at Nettuts+!", 'T', 0, 'C');

  $pdf->Output();

 ?>
