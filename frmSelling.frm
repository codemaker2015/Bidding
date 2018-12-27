VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmSelling 
   Caption         =   "Selling"
   ClientHeight    =   9705
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   19185
   Icon            =   "frmSelling.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9705
   ScaleWidth      =   19185
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdAddItem 
      Appearance      =   0  'Flat
      Caption         =   "+"
      Height          =   255
      Left            =   7440
      TabIndex        =   25
      Top             =   3960
      Width           =   255
   End
   Begin VB.Frame Frame2 
      Height          =   6015
      Left            =   3165
      TabIndex        =   0
      Top             =   2085
      Width           =   12855
      Begin VB.CommandButton cmdAddCustomer 
         Caption         =   "+"
         Height          =   255
         Left            =   12360
         TabIndex        =   26
         Top             =   360
         Width           =   255
      End
      Begin MSFlexGridLib.MSFlexGrid grid1 
         Height          =   2655
         Left            =   360
         TabIndex        =   20
         Top             =   2520
         Width           =   12105
         _ExtentX        =   21352
         _ExtentY        =   4683
         _Version        =   393216
         Cols            =   7
         Appearance      =   0
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   10920
         TabIndex        =   10
         Top             =   5400
         Width           =   1335
      End
      Begin VB.CommandButton cmdSubmit 
         Caption         =   "Submit"
         Height          =   375
         Left            =   9360
         TabIndex        =   9
         Top             =   5400
         Width           =   1335
      End
      Begin VB.Frame Frame1 
         Height          =   1335
         Left            =   360
         TabIndex        =   13
         Top             =   1080
         Width           =   12135
         Begin VB.TextBox txtSerial 
            Height          =   375
            Left            =   1080
            TabIndex        =   3
            Top             =   480
            Width           =   855
         End
         Begin VB.TextBox txtCount 
            Height          =   375
            Left            =   5160
            TabIndex        =   5
            Top             =   480
            Width           =   855
         End
         Begin VB.CommandButton cmdAdd 
            Caption         =   "ADD"
            Height          =   375
            Left            =   10680
            TabIndex        =   8
            Top             =   480
            Width           =   1095
         End
         Begin VB.TextBox txtRate 
            Height          =   375
            Left            =   6960
            TabIndex        =   6
            Top             =   480
            Width           =   1095
         End
         Begin VB.TextBox txtQuantity 
            Height          =   375
            Left            =   9240
            TabIndex        =   7
            Top             =   480
            Width           =   975
         End
         Begin VB.ComboBox comboItemId 
            Height          =   315
            Left            =   2760
            TabIndex        =   4
            Text            =   "--Select--"
            Top             =   480
            Width           =   1215
         End
         Begin VB.Label Label2 
            BackStyle       =   0  'Transparent
            Caption         =   "Serial No:"
            Height          =   255
            Left            =   240
            TabIndex        =   22
            Top             =   525
            Width           =   735
         End
         Begin VB.Label Label1 
            BackStyle       =   0  'Transparent
            Caption         =   "Count:"
            Height          =   375
            Left            =   4320
            TabIndex        =   21
            Top             =   555
            Width           =   735
         End
         Begin VB.Label lblItemName 
            BackStyle       =   0  'Transparent
            Height          =   375
            Left            =   2160
            TabIndex        =   17
            Top             =   840
            Width           =   1695
         End
         Begin VB.Label lblPrice 
            BackStyle       =   0  'Transparent
            Caption         =   "Price:"
            Height          =   375
            Left            =   6360
            TabIndex        =   16
            Top             =   555
            Width           =   495
         End
         Begin VB.Label lblQuantity 
            BackStyle       =   0  'Transparent
            Caption         =   "Quantity:"
            Height          =   255
            Left            =   8400
            TabIndex        =   15
            Top             =   555
            Width           =   975
         End
         Begin VB.Label lblItem 
            BackStyle       =   0  'Transparent
            Caption         =   "Item:"
            Height          =   255
            Left            =   2160
            TabIndex        =   14
            Top             =   525
            Width           =   735
         End
      End
      Begin VB.ComboBox comboCustomerId 
         Height          =   315
         ItemData        =   "frmSelling.frx":000C
         Left            =   11160
         List            =   "frmSelling.frx":000E
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
         Format          =   20578307
         CurrentDate     =   43315
      End
      Begin VB.Label lblTotal 
         Height          =   375
         Left            =   1200
         TabIndex        =   24
         Top             =   5400
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "Total:"
         Height          =   255
         Left            =   480
         TabIndex        =   23
         Top             =   5400
         Width           =   495
      End
      Begin VB.Label lblCustomerName 
         BackStyle       =   0  'Transparent
         Height          =   375
         Left            =   10080
         TabIndex        =   19
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label lblCustomerId 
         BackStyle       =   0  'Transparent
         Caption         =   "Customer Id:"
         Height          =   375
         Left            =   10080
         TabIndex        =   12
         Top             =   375
         Width           =   1215
      End
      Begin VB.Label lblDate 
         BackStyle       =   0  'Transparent
         Caption         =   "Date:"
         Height          =   330
         Left            =   600
         TabIndex        =   11
         Top             =   435
         Width           =   735
      End
   End
   Begin VB.Label lblCaption 
      Alignment       =   2  'Center
      Caption         =   "Sell Your Products"
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
      Left            =   3165
      TabIndex        =   18
      Top             =   1605
      Width           =   12855
   End
End
Attribute VB_Name = "frmSelling"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private total As Double

Private Sub cmdAddCustomer_Click()
    frmRegistration.Show
End Sub

Private Sub cmdAddItem_Click()
    frmItemRegistration.Show
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
    reccheck
    If comboItemId.Text <> "--Select--" And comboItemId.Text <> "" Then
        rec.Open "Select name from tblItem where itemId=" & comboItemId.Text, con, adOpenDynamic, adLockPessimistic
        If rec.EOF = False Then
            lblItemName.Caption = rec.Fields(0)
        Else
            lblItemName.Caption = ""
        End If
    End If
End Sub

Private Sub comboItemId_Click()
    reccheck
    If comboItemId.Text <> "--Select--" And comboItemId.Text <> "" Then
        rec.Open "Select name from tblItem where itemId=" & comboItemId.Text, con, adOpenDynamic, adLockPessimistic
        If rec.EOF = False Then
            lblItemName.Caption = rec.Fields(0)
        Else
            lblItemName.Caption = rec.Fields(0)
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
    total = 0
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
    
    grid1.ColWidth(0) = 1500
    grid1.ColWidth(1) = 1500
    grid1.ColWidth(2) = 3500
    grid1.ColWidth(3) = 1500
    grid1.ColWidth(4) = 900
    grid1.ColWidth(5) = 900
    grid1.ColWidth(6) = 1500
    
    grid1.TextMatrix(0, 0) = "Serial No"
    grid1.TextMatrix(0, 1) = "Item ID"
    grid1.TextMatrix(0, 2) = "Item Name"
    grid1.TextMatrix(0, 3) = "Count"
    grid1.TextMatrix(0, 4) = "Rate"
    grid1.TextMatrix(0, 5) = "Quantity"
    grid1.TextMatrix(0, 6) = "Total"
End Sub

Private Sub cmdAdd_Click()
    If txtSerial.Text <> "" And CheckCombo(comboItemId, "Item ID") And txtQuantity.Text <> "" And txtCount.Text <> "" And txtRate.Text <> "" Then
        
        grid1.Rows = grid1.Rows + 1
        
        grid1.TextMatrix(grid1.Rows - 1, 0) = txtSerial.Text
        grid1.TextMatrix(grid1.Rows - 1, 1) = comboItemId.Text
        grid1.TextMatrix(grid1.Rows - 1, 2) = lblItemName.Caption
        grid1.TextMatrix(grid1.Rows - 1, 3) = txtCount.Text
        grid1.TextMatrix(grid1.Rows - 1, 4) = txtRate.Text
        grid1.TextMatrix(grid1.Rows - 1, 5) = txtQuantity.Text
        
        
        grid1.TextMatrix(grid1.Rows - 1, 6) = Val(txtCount.Text) * Val(txtRate.Text) * Val(txtQuantity.Text)
        
        total = total + Val(txtCount.Text) * Val(txtRate.Text) * Val(txtQuantity.Text)
        lblTotal.Caption = total
        txtCount.Text = ""
        comboItemId.Text = "--Select--"
        txtSerial.Text = ""
        lblItemName.Caption = ""
        txtRate.Text = ""
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
    Dim total As Double
    Dim qut As Double
    Dim paid As Double
    Dim balance As Double
    Dim itemcount As Integer
    
    data = "0"
    
    If fso.FileExists(App.Path & "count.txt") = True Then
    
        Open App.Path & "count.txt" For Input As #1
        Do While Not EOF(1)
            Line Input #1, data
        Loop
        Close #1
        
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
    
    
    With rptSales.Sections("Section4")
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
    qut = 0
    itemcount = grid1.Rows - 1
    
    With rptSales.Sections("Section5")
        For i = 1 To itemcount
            '.Controls("lblSerial" & i).Visible = True
            '.Controls("lblItemName" & i).Visible = True
            '.Controls("lblDesc" & i).Visible = True
            '.Controls("lblQuantity" & i).Visible = True
            '.Controls("lblRate" & i).Visible = True
            '.Controls("lblUnit" & i).Visible = True
            '.Controls("lblAmount" & i).Visible = True
            
            '.Controls("lblDesc" & i).Caption = "Item ID: " & grid1.TextMatrix(i, 0)
            '.Controls("lblItemName" & i).Caption = grid1.TextMatrix(i, 1)
            '.Controls("lblRate" & i).Caption = grid1.TextMatrix(i, 2)
            '.Controls("lblQuantity" & i).Caption = grid1.TextMatrix(i, 3)
            '.Controls("lblUnit" & i).Caption = grid1.TextMatrix(i, 4)
            '.Controls("lblAmount" & i).Caption = grid1.TextMatrix(i, 5)
            total = Round(total + CDbl(grid1.TextMatrix(i, 6)), 0)
            qut = qut + CDbl(grid1.TextMatrix(i, 3)) * CDbl(grid1.TextMatrix(i, 5))
            reccheck
            rec.Open "insert into tblSales values('" & dte & "','" & Val(comboCustomerId.Text) & "','" & Val(grid1.TextMatrix(i, 0)) & "','" & Val(grid1.TextMatrix(i, 1)) & "','" & grid1.TextMatrix(i, 2) & "','" & Val(grid1.TextMatrix(i, 3)) & "','" & Val(grid1.TextMatrix(i, 4)) & "','" & Val(grid1.TextMatrix(i, 5)) & "','" & Val(grid1.TextMatrix(i, 6)) & "','" & invoice & "')", con, adOpenDynamic, adLockOptimistic
            reccheck
            rec.Open "insert into tblDayBook values('" & dte & "','" & Val(comboCustomerId.Text) & "','" & Val(grid1.TextMatrix(i, 0)) & "','" & Val(grid1.TextMatrix(i, 1)) & "','" & grid1.TextMatrix(i, 2) & "','" & Val(grid1.TextMatrix(i, 3)) & "','" & Val(grid1.TextMatrix(i, 4)) & "','" & Val(grid1.TextMatrix(i, 5)) & "','" & "0" & "','" & "0" & "','" & Val(grid1.TextMatrix(i, 6)) & "','" & "Sales" & "','" & invoice & "')", con, adOpenDynamic, adLockOptimistic
         Next i
        
         reccheck
         paid = InputBox("Enter the Amount Paid: ", "MBFU Valakom")
         balance = total - paid
         rec.Open "insert into tblBalance values('" & comboCustomerId.Text & "','" & lblCustomerName.Caption & "','" & dte & "','" & total & "','" & paid & "','" & balance & "')", con, adOpenDynamic, adLockPessimistic
        
         reccheck
         rec.Open "Select sum(balanceAmount) from tblBalance where userId=" & comboCustomerId.Text
        
        .Controls("lblItemCount").Caption = qut & " Nos"
        .Controls("lblTotal").Caption = total & "/-"
        .Controls("lblPaid").Caption = paid & "/-"
        .Controls("lblBalance").Caption = rec.Fields(0) & "/-"
       
        .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
        
    End With
    
    If (DataEnvironment1.rsSalesByInvoiceID.State = 1) Then
        DataEnvironment1.rsSalesByInvoiceID.Close
    Else
        DataEnvironment1.SalesByInvoiceID (invoice)
        rptSales.Show
    End If
    rptSales.ExportReport rptKeyHTML, App.Path & "\Reports\S" & (Val(data) + 1) & ".html", , False
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

Private Sub txtCount_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
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
