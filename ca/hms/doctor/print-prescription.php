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
$pdf->SetFont("Arial","B",9);
$pdf->Ln(5);
$pdf->Cell(130, 5, "CLINIC DETAILS", 0, 0 );
$pdf->Cell(59, 5, "CLINIC HOURS", 0, 1 );

$pdf->SetFont("Arial","",9);
$pdf->Cell(130, 5, "    Burgos Ave., Cabanatuan City", 0, 0 );
$pdf->Cell(59, 5, "   Mon. to Sat (9:30 am - 6:00 pm)", 0, 1 );
$pdf->Cell(0, 5, "    Tel: (044) 463-0893", 0, 1 );
$pdf->Cell(0, 5, "    Mobile: 0929-297-8560 (SMART)", 0, 1 );
$pdf->Cell(0, 5, "                 0929-297-8560 (GLOBE)", 0, 1 );

$pdf->Ln(5);
$pdf->Cell(0, 5, "", 'T', 0, 'C');
$pdf->Ln(5);
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(90, 5, "Linette Guillermo", 0, 1 );

$pdf->SetFont('Arial', '', 10);
$pdf->Cell(89, 5, "Female, 25 years old", 0, 1 );

$pdf->Cell(90, 5, "+63 917 303 9717", 0, 1 );
$pdf->Cell(89, 5, "West Avenue, Quezon City", 0, 1 );

$pdf->Ln(5);
$pdf->SetFont('Arial', 'B', 18);
$pdf->Cell(130, 5, "Rx", 0, 0 );
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(60, 5, "Date: ", 0, 1 );

$pdf->Ln(5);
// $pdf->SetFillColor(36, 140, 129);
// $pdf->Cell(130, 5, "Rx", 0, 0, 1 );
// $pdf->Cell(60, 5, "Date: ", 0, 1 );

$pdf->SetFont('Arial', 'B', 10);
    $pdf->SetFillColor(245, 245, 245);

    $pdf->SetTextColor(85, 85, 85);
    $pdf->SetDrawColor(221, 221, 221);
    $pdf->SetLineWidth(0.4);

    $pdf->Cell(60, 10, "Medication", 1, 0, 'C', true);
    $pdf->Cell(25, 10, "Duration", 1, 1, 'C', true);

$pdf->Ln(5);

// $pdf->SetFont('Arial', 'B', 12);
//     $pdf->SetTextColor(0);
//     $pdf->SetFillColor(36, 140, 129);
//     $pdf->SetLineWidth(0.4);
//     $pdf->Cell(427, 25, "Item Description", 'LTR', 0, 'C', true);
//     $pdf->Cell(100, 25, "Price", 'LTR', 1, 'C', true);






$pdf->SetFont('Arial', '', 10);
    $pdf->SetTextColor(19, 41, 16);
    $pdf->SetXY(10,-50);
  //  $pdf->Cell(0, 5, "", 'T', 0, 'C');
    $pdf->Ln(5);
    $pdf->Cell(110, 6, "Next Appointment:", 0, 0 );
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(69, 6, "Maria Rochelle A. De Guzman-Abeleda, MD", 0, 1 );

    $pdf->SetFont('Arial', '', 10);
    $pdf->Cell(110, 6, "Please confirm your appointment before coming.", 0, 0 );
    $pdf->Cell(69, 6, "License No.: 76500", 0, 1 );

    $pdf->Cell(110, 6, "Thank you.", 0, 0 );
    $pdf->Cell(69, 6, "PTR No.: ", 0, 1 );

    $pdf->Cell(110, 6, "", 0, 0 );
    $pdf->Cell(69, 6, "S2: ", 0, 1 );

  $pdf->Output();

 ?>
