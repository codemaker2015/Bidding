VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmPurchasing 
   Caption         =   "Purchasing"
   ClientHeight    =   9705
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   19185
   Icon            =   "frmPurchasing.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9705
   ScaleWidth      =   19185
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      Height          =   6015
      Left            =   1556
      TabIndex        =   0
      Top             =   2085
      Width           =   16095
      Begin VB.CommandButton cmdCustomerRe 
         Caption         =   "+"
         Height          =   255
         Left            =   15720
         TabIndex        =   30
         Top             =   360
         Width           =   255
      End
      Begin VB.Frame Frame1 
         Height          =   1335
         Left            =   360
         TabIndex        =   20
         Top             =   960
         Width           =   15615
         Begin VB.CommandButton cmdAddItem 
            Caption         =   "+"
            Height          =   255
            Left            =   2160
            TabIndex        =   29
            Top             =   720
            Width           =   255
         End
         Begin VB.TextBox txtTA 
            Height          =   375
            Left            =   13080
            TabIndex        =   9
            Top             =   480
            Width           =   975
         End
         Begin VB.TextBox txtUnionFee 
            Height          =   375
            Left            =   11280
            TabIndex        =   8
            Top             =   480
            Width           =   975
         End
         Begin VB.ComboBox comboItemId 
            Height          =   315
            Left            =   960
            TabIndex        =   3
            Text            =   "--Select--"
            Top             =   480
            Width           =   1215
         End
         Begin VB.TextBox txtQuantity 
            Height          =   375
            Left            =   9120
            TabIndex        =   7
            Top             =   480
            Width           =   975
         End
         Begin VB.TextBox txtRate 
            Height          =   375
            Left            =   6960
            TabIndex        =   6
            Top             =   480
            Width           =   1095
         End
         Begin VB.CommandButton cmdAdd 
            Caption         =   "ADD"
            Height          =   375
            Left            =   14280
            TabIndex        =   10
            Top             =   480
            Width           =   1095
         End
         Begin VB.TextBox txtCount 
            Height          =   375
            Left            =   5160
            TabIndex        =   5
            Top             =   480
            Width           =   855
         End
         Begin VB.TextBox txtSerial 
            Height          =   375
            Left            =   3240
            TabIndex        =   4
            Top             =   480
            Width           =   855
         End
         Begin VB.Label Label4 
            BackStyle       =   0  'Transparent
            Caption         =   "TA:"
            Height          =   375
            Left            =   12600
            TabIndex        =   28
            Top             =   555
            Width           =   375
         End
         Begin VB.Label Label3 
            BackStyle       =   0  'Transparent
            Caption         =   "Commission:"
            Height          =   375
            Left            =   10320
            TabIndex        =   27
            Top             =   555
            Width           =   975
         End
         Begin VB.Label lblItem 
            BackStyle       =   0  'Transparent
            Caption         =   "Item:"
            Height          =   255
            Left            =   360
            TabIndex        =   26
            Top             =   525
            Width           =   735
         End
         Begin VB.Label lblQuantity 
            BackStyle       =   0  'Transparent
            Caption         =   "Quantity:"
            Height          =   255
            Left            =   8280
            TabIndex        =   25
            Top             =   555
            Width           =   975
         End
         Begin VB.Label lblPrice 
            BackStyle       =   0  'Transparent
            Caption         =   "Price:"
            Height          =   375
            Left            =   6360
            TabIndex        =   24
            Top             =   555
            Width           =   495
         End
         Begin VB.Label lblItemName 
            BackStyle       =   0  'Transparent
            Height          =   375
            Left            =   360
            TabIndex        =   23
            Top             =   840
            Width           =   1815
         End
         Begin VB.Label Label1 
            BackStyle       =   0  'Transparent
            Caption         =   "Count:"
            Height          =   375
            Left            =   4320
            TabIndex        =   22
            Top             =   555
            Width           =   735
         End
         Begin VB.Label Label2 
            BackStyle       =   0  'Transparent
            Caption         =   "Serial No:"
            Height          =   255
            Left            =   2400
            TabIndex        =   21
            Top             =   525
            Width           =   735
         End
      End
      Begin MSFlexGridLib.MSFlexGrid grid1 
         Height          =   2655
         Left            =   360
         TabIndex        =   17
         Top             =   2400
         Width           =   15585
         _ExtentX        =   27490
         _ExtentY        =   4683
         _Version        =   393216
         Cols            =   10
         Appearance      =   0
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   14520
         TabIndex        =   12
         Top             =   5280
         Width           =   1335
      End
      Begin VB.CommandButton cmdSubmit 
         Caption         =   "Submit"
         Height          =   375
         Left            =   12960
         TabIndex        =   11
         Top             =   5280
         Width           =   1335
      End
      Begin VB.ComboBox comboCustomerId 
         Height          =   315
         ItemData        =   "frmPurchasing.frx":000C
         Left            =   14520
         List            =   "frmPurchasing.frx":000E
         Sorted          =   -1  'True
         TabIndex        =   2
         Text            =   "--Select--"
         Top             =   360
         Width           =   1215
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   1200
         TabIndex        =   1
         Top             =   360
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Format          =   20643843
         CurrentDate     =   43315
      End
      Begin VB.Label lblBuyerName 
         Caption         =   "bname"
         Height          =   375
         Left            =   2640
         TabIndex        =   19
         Top             =   5400
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.Label lblBuyerId 
         Caption         =   "bid"
         Height          =   375
         Left            =   960
         TabIndex        =   18
         Top             =   5400
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label lblCustomerName 
         BackStyle       =   0  'Transparent
         Height          =   375
         Left            =   13440
         TabIndex        =   16
         Top             =   720
         Width           =   2295
      End
      Begin VB.Label lblCustomerId 
         BackStyle       =   0  'Transparent
         Caption         =   "Customer Id:"
         Height          =   375
         Left            =   13440
         TabIndex        =   14
         Top             =   375
         Width           =   1215
      End
      Begin VB.Label lblDate 
         BackStyle       =   0  'Transparent
         Caption         =   "Date:"
         Height          =   330
         Left            =   600
         TabIndex        =   13
         Top             =   435
         Width           =   735
      End
   End
   Begin VB.Label lblCaption 
      Alignment       =   2  'Center
      Caption         =   "Purchase Your Products"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1534
      TabIndex        =   15
      Top             =   1605
      Width           =   16095
   End
End
Attribute VB_Name = "frmPurchasing"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAddItem_Click()
    frmItemRegistration.Show
End Sub

Private Sub cmdCustomerRe_Click()
    frmRegistration.Show
End Sub

Private Sub comboCustomerId_Change()
    reccheck
    If comboCustomerId.Text <> "--Select--" And comboCustomerId.Text <> "" Then
        rec.Open "Select name from tblUser where userId=" & comboCustomerId.Text, con, adOpenDynamic, adLockPessimistic
        If rec.EOF = False Then
            lblCustomerName.Caption = rec.Fields(0)
        Else
            lblCustomerName.Caption = ""
        End If
    End If
End Sub

Private Sub comboCustomerId_Click()
    reccheck
    If comboCustomerId.Text <> "--Select--" And comboCustomerId.Text <> "" Then
        rec.Open "Select name from tblUser where userId=" & comboCustomerId.Text, con, adOpenDynamic, adLockPessimistic
        If rec.EOF = False Then
            lblCustomerName.Caption = rec.Fields(0)
        Else
            lblCustomerName.Caption = ""
        End If
    End If
End Sub

Private Sub comboItemId_Change()
    Dim price As Double, count As Integer, i As Integer
    reccheck
    If comboItemId.Text <> "--Select--" And comboItemId.Text <> "" Then
        rec.Open "Select name from tblItem where itemId=" & comboItemId.Text, con, adOpenDynamic, adLockPessimistic
        If rec.EOF = False Then
            lblItemName.Caption = rec.Fields(0)
            reccheck
            rec.Open "select * from tblSales where date='" & DTPicker1.Value & "' and itemId='" & comboItemId.Text & "'", con, adOpenDynamic, adLockOptimistic
            count = 0
            While Not rec.EOF
                count = count + 1
                rec.MoveNext
            Wend
            
            If count > 1 Then
                'MsgBox "More than one record found", vbExclamation
                i = 0
                With frmItems
                    .grid1.Clear
                    .grid1.Rows = 1
                    .grid1.ColWidth(0) = 1000
                    .grid1.ColWidth(1) = 2000
                    .grid1.ColWidth(2) = 2000
                    .grid1.ColWidth(3) = 1000
                    .grid1.ColWidth(4) = 1000
                    .grid1.ColWidth(5) = 2000
                    .grid1.ColWidth(6) = 1000
                    .grid1.ColWidth(7) = 900
                    .grid1.ColWidth(8) = 900
                    .grid1.ColWidth(9) = 1200
                    
                    
                    .grid1.TextMatrix(0, 0) = "Buyer ID"
                    .grid1.TextMatrix(0, 1) = "Buyer Name"
                    .grid1.TextMatrix(0, 2) = "Invoice ID"
                    .grid1.TextMatrix(0, 3) = "Serial No"
                    .grid1.TextMatrix(0, 4) = "Item ID"
                    .grid1.TextMatrix(0, 5) = "Item Name"
                    .grid1.TextMatrix(0, 6) = "Count"
                    .grid1.TextMatrix(0, 7) = "Rate"
                    .grid1.TextMatrix(0, 8) = "Quantity"
                    .grid1.TextMatrix(0, 9) = "Total"
                     
                     reccheck
                     rec.Open "select sellingId,date,tblUser.userId,name,invoiceNo,serialNo,itemId,itemName,count,unitPrice,quantity,totalPrice from tblSales,tblUser where date='" & DTPicker1.Value & "' and itemId='" & comboItemId.Text & "' and tblUser.userId = tblSales.userId", con, adOpenDynamic, adLockOptimistic
                
                    While Not rec.EOF
                        .grid1.Rows = .grid1.Rows + 1
                        .grid1.TextMatrix(.grid1.Rows - 1, 0) = rec.Fields(2)
                        .grid1.TextMatrix(.grid1.Rows - 1, 1) = rec.Fields(3)
                        .grid1.TextMatrix(.grid1.Rows - 1, 2) = rec.Fields(4)
                        .grid1.TextMatrix(.grid1.Rows - 1, 3) = rec.Fields(5)
                        .grid1.TextMatrix(.grid1.Rows - 1, 4) = rec.Fields(6)
                        .grid1.TextMatrix(.grid1.Rows - 1, 5) = rec.Fields(7)
                        .grid1.TextMatrix(.grid1.Rows - 1, 6) = rec.Fields(8)
                        .grid1.TextMatrix(.grid1.Rows - 1, 7) = rec.Fields(9)
                        .grid1.TextMatrix(.grid1.Rows - 1, 8) = rec.Fields(10)
                        .grid1.TextMatrix(.grid1.Rows - 1, 9) = rec.Fields(11)
                        rec.MoveNext
                    Wend
                End With
                frmItems.Show
            Else
                If count = 1 Then
                    reccheck
                    rec.Open "select sellingId,date,tblUser.userId,name,invoiceNo,serialNo,itemId,itemName,count,unitPrice,quantity,totalPrice from tblSales,tblUser where date='" & DTPicker1.Value & "' and itemId='" & comboItemId.Text & "' and tblUser.userId = tblSales.userId", con, adOpenDynamic, adLockOptimistic
         
                    lblBuyerId.Caption = rec.Fields("userId")
                    lblBuyerName.Caption = rec.Fields("name")
                    txtQuantity.Text = rec.Fields("quantity")
                    txtRate.Text = rec.Fields("unitPrice")
                    price = rec.Fields("totalPrice")
                    txtUnionFee.Text = price * 5 / 100
                    txtCount.Text = rec.Fields("count")
                    txtSerial.Text = rec.Fields("serialNo")
                    If Val(txtCount) > 0 Then
                        txtTA.Text = rec.Fields("quantity")
                    Else
                        txtTA.Text = "0"
                    End If
                End If
            End If
        Else
            lblItemName.Caption = ""
        End If
    End If
End Sub

Private Sub comboItemId_Click()
    Dim price As Double, count As Integer, i As Integer
    reccheck
    If comboItemId.Text <> "--Select--" And comboItemId.Text <> "" Then
        rec.Open "Select name from tblItem where itemId=" & comboItemId.Text, con, adOpenDynamic, adLockPessimistic
        If rec.EOF = False Then
            lblItemName.Caption = rec.Fields(0)
            reccheck
            rec.Open "select * from tblSales where date='" & DTPicker1.Value & "' and itemId='" & comboItemId.Text & "'", con, adOpenDynamic, adLockOptimistic
            count = 0
            While Not rec.EOF
                count = count + 1
                rec.MoveNext
            Wend
            
            If count > 1 Then
                'MsgBox "More than one record found", vbExclamation
                i = 0
                With frmItems
                    .grid1.Clear
                    .grid1.Rows = 1
                    .grid1.ColWidth(0) = 1000
                    .grid1.ColWidth(1) = 2000
                    .grid1.ColWidth(2) = 2000
                    .grid1.ColWidth(3) = 1000
                    .grid1.ColWidth(4) = 1000
                    .grid1.ColWidth(5) = 2000
                    .grid1.ColWidth(6) = 1000
                    .grid1.ColWidth(7) = 900
                    .grid1.ColWidth(8) = 900
                    .grid1.ColWidth(9) = 1200
                    
                    
                    .grid1.TextMatrix(0, 0) = "Buyer ID"
                    .grid1.TextMatrix(0, 1) = "Buyer Name"
                    .grid1.TextMatrix(0, 2) = "Invoice ID"
                    .grid1.TextMatrix(0, 3) = "Serial No"
                    .grid1.TextMatrix(0, 4) = "Item ID"
                    .grid1.TextMatrix(0, 5) = "Item Name"
                    .grid1.TextMatrix(0, 6) = "Count"
                    .grid1.TextMatrix(0, 7) = "Rate"
                    .grid1.TextMatrix(0, 8) = "Quantity"
                    .grid1.TextMatrix(0, 9) = "Total"
                     
                     reccheck
                     rec.Open "select sellingId,date,tblUser.userId,name,invoiceNo,serialNo,itemId,itemName,count,unitPrice,quantity,totalPrice from tblSales,tblUser where date='" & DTPicker1.Value & "' and itemId='" & comboItemId.Text & "' and tblUser.userId = tblSales.userId", con, adOpenDynamic, adLockOptimistic
                
                    While Not rec.EOF
                        .grid1.Rows = .grid1.Rows + 1
                        .grid1.TextMatrix(.grid1.Rows - 1, 0) = rec.Fields(2)
                        .grid1.TextMatrix(.grid1.Rows - 1, 1) = rec.Fields(3)
                        .grid1.TextMatrix(.grid1.Rows - 1, 2) = rec.Fields(4)
                        .grid1.TextMatrix(.grid1.Rows - 1, 3) = rec.Fields(5)
                        .grid1.TextMatrix(.grid1.Rows - 1, 4) = rec.Fields(6)
                        .grid1.TextMatrix(.grid1.Rows - 1, 5) = rec.Fields(7)
                        .grid1.TextMatrix(.grid1.Rows - 1, 6) = rec.Fields(8)
                        .grid1.TextMatrix(.grid1.Rows - 1, 7) = rec.Fields(9)
                        .grid1.TextMatrix(.grid1.Rows - 1, 8) = rec.Fields(10)
                        .grid1.TextMatrix(.grid1.Rows - 1, 9) = rec.Fields(11)
                        rec.MoveNext
                    Wend
                End With
                frmItems.Show
            Else
                If count = 1 Then
                    reccheck
                    rec.Open "select sellingId,date,tblUser.userId,name,invoiceNo,serialNo,itemId,itemName,count,unitPrice,quantity,totalPrice from tblSales,tblUser where date='" & DTPicker1.Value & "' and itemId='" & comboItemId.Text & "' and tblUser.userId = tblSales.userId", con, adOpenDynamic, adLockOptimistic
         
                    lblBuyerId.Caption = rec.Fields("userId")
                    lblBuyerName.Caption = rec.Fields("name")
                    txtQuantity.Text = rec.Fields("quantity")
                    txtRate.Text = rec.Fields("unitPrice")
                    price = rec.Fields("totalPrice")
                    txtUnionFee.Text = price * 5 / 100
                    txtCount.Text = rec.Fields("count")
                    txtSerial.Text = rec.Fields("serialNo")
                    If Val(txtCount) > 0 Then
                        txtTA.Text = rec.Fields("quantity")
                    Else
                        txtTA.Text = "0"
                    End If
                End If
            End If
        Else
            lblItemName.Caption = ""
        End If
    End If
End Sub

Private Sub comboUnit_KeyPress(KeyAscii As Integer)
    KeyAscii = 0
End Sub

Private Sub DTPicker1_Change()
    dte = DTPicker1.Value
End Sub

Private Sub Form_Load()
    connection
    reccheck
    DTPicker1.Value = Format(Now(), "dd/mm/yyyy")
    dte = DTPicker1.Value
    rec.Open "Select userId from tblUser", con, adOpenDynamic, adLockPessimistic
    While Not rec.EOF
        comboCustomerId.AddItem (rec.Fields(0))
        rec.MoveNext
    Wend
    
    reccheck
    rec.Open "Select itemId from tblItem", con, adOpenDynamic, adLockPessimistic
    While Not rec.EOF
        comboItemId.AddItem (rec.Fields(0))
        rec.MoveNext
    Wend
    
    grid1.Clear
    grid1.Rows = 1
    grid1.ColWidth(0) = 1000
    grid1.ColWidth(1) = 1000
    grid1.ColWidth(2) = 2000
    grid1.ColWidth(3) = 1000
    grid1.ColWidth(4) = 900
    grid1.ColWidth(5) = 900
    grid1.ColWidth(6) = 900
    grid1.ColWidth(7) = 900
    grid1.ColWidth(8) = 1200
    
    
    grid1.TextMatrix(0, 0) = "Serial No"
    grid1.TextMatrix(0, 1) = "Item ID"
    grid1.TextMatrix(0, 2) = "Item Name"
    grid1.TextMatrix(0, 3) = "Count"
    grid1.TextMatrix(0, 4) = "Rate"
    grid1.TextMatrix(0, 5) = "Quantity"
    grid1.TextMatrix(0, 6) = "Commission"
    grid1.TextMatrix(0, 7) = "TA"
    grid1.TextMatrix(0, 8) = "Total"
                     
End Sub

Private Sub cmdAdd_Click()
    If CheckCombo(comboItemId, "Item ID") And txtSerial.Text <> "" And txtQuantity.Text <> "" And txtRate.Text <> "" And txtUnionFee.Text <> "" And txtTA.Text <> "" Then
        grid1.Rows = grid1.Rows + 1
        
        grid1.TextMatrix(grid1.Rows - 1, 0) = txtSerial.Text
        grid1.TextMatrix(grid1.Rows - 1, 1) = comboItemId.Text
        grid1.TextMatrix(grid1.Rows - 1, 2) = lblItemName.Caption
        grid1.TextMatrix(grid1.Rows - 1, 3) = txtCount.Text
        grid1.TextMatrix(grid1.Rows - 1, 4) = txtRate.Text
        grid1.TextMatrix(grid1.Rows - 1, 5) = txtQuantity.Text
        grid1.TextMatrix(grid1.Rows - 1, 6) = txtUnionFee.Text
        grid1.TextMatrix(grid1.Rows - 1, 7) = txtTA.Text
        
        grid1.TextMatrix(grid1.Rows - 1, 8) = Val(txtCount.Text) * Val(txtRate.Text) * Val(txtQuantity.Text) - Val(txtUnionFee.Text) + Val(txtTA.Text)
        
        comboItemId.Text = "--Select--"
        
        txtSerial.Text = ""
        txtCount.Text = ""
        lblItemName.Caption = ""
        txtRate.Text = ""
        txtUnionFee.Text = ""
        txtTA.Text = ""
        txtQuantity.Text = ""
    Else
        MsgBox "All fileds are mandatory", vbCritical
    End If
End Sub

Private Sub cmdCancel_Click()
   Unload Me
End Sub

Private Sub cmdSubmit_Click()
    On Error GoTo errmsg
    Dim dte As Date
    dte = DTPicker1.Value
    Dim invoice As String
    Dim data As String
    Dim total As Double, unionFee As Double, sellingFee As Double, TA As Double
    Dim qut As Integer
    Dim itemcount As Integer
    
    data = "0"
    
    If fso.FileExists(App.Path & "count.txt") = True Then
    
        Open App.Path & "count.txt" For Input As #2
        Do While Not EOF(2)
            Line Input #2, data
        Loop
        Close #2
        
        FileNum = FreeFile
        Open App.Path & "count.txt" For Output As FileNum
        Print #FileNum, CInt(data) + 1

        invoice = "BLFO/" & Year(dte) & "/" & Month(dte) & "/" & Day(dte) & "/" & CInt(data) + 1
        Close FileNum
    Else
        ' Get a free file number
        FileNum = FreeFile

        ' Create Test.txt
        Open App.Path & "count.txt" For Output As FileNum

        ' Write the contents of TextBox1 to Test.txt
        Print #FileNum, 0

        ' Close the file
        Close FileNum
        
        invoice = "BLFO/" & Year(dte) & "/" & Month(dte) & "/" & Day(dte) & "/0"
    End If
    

    If DataEnvironment1.Connection1.State = 1 Then DataEnvironment1.Connection1.Close
    DataEnvironment1.Connection1.Open
    
    
    With rptPurchase.Sections("Section4")
        .Controls("lblCompanyName").Caption = "Muvattupuzha Block Federated Samithi, Valakom"
        .Controls("lblDate").Caption = DTPicker1.Value
        .Controls("lblInvoiceNo").Caption = invoice
        .Controls("lblBuyerName").Caption = lblCustomerName.Caption
        .Controls("lblregno").Caption = comboCustomerId.Text
        reccheck
        rec.Open "select address,contact from tblUser where userId=" & comboCustomerId.Text, con, adOpenDynamic, adLockPessimistic
        If rec.EOF = False Then
            .Controls("lblBuyerAddress").Caption = rec.Fields(0) & vbCrLf & "Contact: " & rec.Fields(1)
        End If
    End With
    
    total = 0
    unionFee = 0
    sellingFee = 0
    TA = 0
    qut = 0
    itemcount = grid1.Rows - 1
    
    With rptPurchase.Sections("Section5")
        For i = 1 To itemcount
            total = Round(total + Val(grid1.TextMatrix(i, 8)), 0)
            TA = TA + Val(grid1.TextMatrix(i, 7))
            qut = qut + Val(grid1.TextMatrix(i, 5))
            reccheck
            rec.Open "insert into tblPurchase values('" & dte & "','" & Val(comboCustomerId.Text) & "','" & Val(grid1.TextMatrix(i, 0)) & "','" & Val(grid1.TextMatrix(i, 1)) & "','" & grid1.TextMatrix(i, 2) & "','" & Val(grid1.TextMatrix(i, 3)) & "','" & Val(grid1.TextMatrix(i, 4)) & "','" & Val(grid1.TextMatrix(i, 5)) & "','" & Val(grid1.TextMatrix(i, 8)) & "','" & invoice & "','" & Val(grid1.TextMatrix(i, 6)) & "','" & Val(grid1.TextMatrix(i, 7)) & "')", con, adOpenDynamic, adLockOptimistic
            reccheck
            rec.Open "insert into tblDayBook values('" & dte & "','" & Val(comboCustomerId.Text) & "','" & Val(grid1.TextMatrix(i, 0)) & "','" & Val(grid1.TextMatrix(i, 1)) & "','" & grid1.TextMatrix(i, 2) & "','" & Val(grid1.TextMatrix(i, 3)) & "','" & Val(grid1.TextMatrix(i, 4)) & "','" & Val(grid1.TextMatrix(i, 5)) & "','" & Val(grid1.TextMatrix(i, 6)) & "','" & Val(grid1.TextMatrix(i, 7)) & "','" & Val(grid1.TextMatrix(i, 8)) & "','" & "Sales" & "','" & invoice & "')", con, adOpenDynamic, adLockOptimistic
       Next i
        
        unionFee = Round(total * 5 / 100, 0)
        sellingFee = total - unionFee
        reccheck
        rec.Open "insert into tbldayBook2 values('" & dte & "','" & Val(comboCustomerId.Text) & "','" & lblCustomerName.Caption & "','" & invoice & "','" & lblBuyerId.Caption & "','" & lblBuyerName.Caption & "','" & qut & "','" & "0" & "','" & total & "','" & unionFee & "','" & TA & "','" & sellingFee & "')", con, adOpenDynamic, adLockOptimistic
     
        .Controls("lblItemCount").Caption = qut & " Nos"
        .Controls("lblTotal").Caption = total & "/-"
        .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
        
    End With
    
    If (DataEnvironment1.rsPurchaseByInvoiceID.State = 1) Then
        DataEnvironment1.rsPurchaseByInvoiceID.Close
    Else
        DataEnvironment1.PurchaseByInvoiceID (invoice)
        rptPurchase.Show
    End If
    rptPurchase.ExportReport rptKeyHTML, App.Path & "\Reports\P" & (Val(data) + 1) & ".html", , False
    Unload Me
Exit Sub

errmsg:
    MsgBox "Oops!!! Something went wrong", vbCritical
    
End Sub

Private Sub txtCustName_KeyPress(KeyAscii As Integer)
    'ValName KeyAscii
End Sub


Private Sub txtName_KeyPress(KeyAscii As Integer)
   ' ValName KeyAscii
End Sub

Private Sub txtQuantity_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtRate_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtSerial_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtTA_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtUnionFee_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub
