Attribute VB_Name = "Module1"
Sub Test()
Dim Ticker As String
Dim Row As Integer
Dim StockVol As Variant
Dim Yrchg As Double
Dim OpenPrice As Double
Dim ClosingPrice As Double
Dim Perchg As Variant
Dim MaxChange As Variant
Dim MinChange As Variant
Dim MaxVolume As Variant
Dim MaxTicker As Variant
Dim MinTicker As Variant
Dim MaxVolumeTicker As Variant
Dim ws As Worksheet


    Row = 2
    StockVol = 0
    Yrchg = 0
    OpenPrice = Cells(2, 3).Value
    ClosingPrice = 0
    LastRow = Cells(Rows.Count, 1).End(xlUp).Row
For Each ws In Sheets

Range("O2").Value = "Greatest % Increase"
Range("O3").Value = "Greatest % Decrease"
Range("O4").Value = "Greatest Total Volume"
Range("P1").Value = "Ticker"
Range("Q1").Value = "Value"

For i = 2 To LastRow
    If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then

      ' Set Ticker
      Ticker = Cells(i, 1).Value

      ' Add Stock Volume
      StockVol = StockVol + (Cells(i, 7).Value)
      
                 
      'Set Closing Price
      ClosingPrice = Cells(i, 6).Value
      
      'Yrchg
      
      Yrchg = (ClosingPrice - OpenPrice)
      
      'Perchg
      
      Perchg = WorksheetFunction.IfError(((ClosingPrice - OpenPrice) / OpenPrice), "-")
      
      ' Print the Ticker Column I
      Range("I" & Row).Value = Ticker

      ' Print the Stock Volume In Colum L
      Range("L" & Row).Value = StockVol
      
      'Print the YR Change
      Range("J" & Row).Value = Yrchg
      
      If Range("J" & Row).Value < 0 Then

        Range("J" & Row).Interior.ColorIndex = 3

        Else
        Range("J" & Row).Interior.ColorIndex = 4
        
        End If
                    
      'Print Percent Chnge
      
      Range("K" & Row).Value = Perchg
      
      Range("K" & Row).NumberFormat = "0.00%"
      
      Range("J" & Row).NumberFormat = "0.00"
      
    
      ' Add one to the row
      Row = Row + 1
      
      ' Reset the Stock Volume
      StockVol = 0
      
      OpenPrice = Cells(i + 1, 3).Value
        If OpenPrice = 0 Then
            OpenPrice = 1
        End If
    ' If the next cell is the same Ticker...
    Else

      ' Add to the Stock Volume
      StockVol = StockVol + (Cells(i, 7).Value)

    End If
    

  Next i
  
 

MaxChange = WorksheetFunction.Max(Range("K:K"))
MinChange = WorksheetFunction.Min(Range("K:K"))
MaxVolume = WorksheetFunction.Max(Range("L:L"))

Range("Q2").Value = MaxChange
Range("Q3").Value = MinChange
Range("Q4").Value = MaxVolume

Range("Q2").NumberFormat = "0.00%"
Range("Q3").NumberFormat = "0.00%"

For i = 1 To LastRow
    If Cells(i, 11).Value = Range("Q2").Value Then
        MaxTicker = Cells(i, 9).Value
    Else
    End If
    Next i
For i = 1 To LastRow
    If Cells(i, 11).Value = Range("Q3").Value Then
        MinTicker = Cells(i, 9).Value
    Else
    End If
    Next i
For i = 1 To LastRow
    If Cells(i, 11).Value = Range("Q3").Value Then
        MaxVolumeTicker = Cells(i, 9).Value
    Else
    End If
 Next i

Range("P2").Value = MaxTicker
Range("P3").Value = MinTicker
Range("P4").Value = MaxVolumeTicker

Next ws
    
  
End Sub
y X F 5 6 u w M 4 v w Z 9 b / 2 j I j w U o y b a 9 s p 6 l o b 0 X n D N p T + W + s 7 + g o 9 M 4 u 9 H 3 A n 1 v m Q e w M H J R a b m 7 Q C x y 6 Z y i O e V p n Q m Q H W t r 1 + f W k i A w L O W 3 I d M Z V C K f O f x k J b i 4 i Y X / R m E Q S X C E N y p A A A A A Y 8 k l n P D z e l d e W k A p M 7 H V k w M / w 2 3 t 0 J a z w N h / O q 0 m s l j 