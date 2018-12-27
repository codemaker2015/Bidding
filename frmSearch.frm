VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmSearch 
   ClientHeight    =   11010
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   20370
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame14 
      Caption         =   "Day Book Search"
      Height          =   1695
      Left            =   8760
      TabIndex        =   37
      Top             =   5760
      Width           =   7575
      Begin VB.Frame Frame15 
         Height          =   735
         Left            =   240
         TabIndex        =   40
         Top             =   240
         Width           =   7095
         Begin MSComCtl2.DTPicker DTPicker5 
            Height          =   315
            Left            =   1320
            TabIndex        =   41
            Top             =   240
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin MSComCtl2.DTPicker DTPicker9 
            Height          =   315
            Left            =   4440
            TabIndex        =   47
            Top             =   240
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin VB.Label Label21 
            Caption         =   "To:"
            Height          =   375
            Left            =   4080
            TabIndex        =   48
            Top             =   315
            Width           =   495
         End
         Begin VB.Label Label14 
            Caption         =   "From: "
            Height          =   375
            Left            =   840
            TabIndex        =   46
            Top             =   315
            Width           =   495
         End
         Begin VB.Label Label13 
            Caption         =   "Date: "
            Height          =   375
            Left            =   240
            TabIndex        =   42
            Top             =   315
            Width           =   855
         End
      End
      Begin VB.CommandButton cmdCancel4 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   5880
         TabIndex        =   39
         Top             =   1080
         Width           =   1215
      End
      Begin VB.CommandButton cmdSubmit4 
         Caption         =   "Submit"
         Height          =   375
         Left            =   4560
         TabIndex        =   38
         Top             =   1080
         Width           =   1215
      End
   End
   Begin VB.Frame Frame11 
      Caption         =   "Customer Search"
      Height          =   1695
      Left            =   1080
      TabIndex        =   28
      Top             =   5760
      Width           =   7575
      Begin VB.Frame Frame13 
         Height          =   735
         Left            =   3720
         TabIndex        =   34
         Top             =   240
         Width           =   3615
         Begin VB.ComboBox cmbName 
            Height          =   315
            Left            =   960
            TabIndex        =   36
            Text            =   "--Select--"
            Top             =   240
            Width           =   2415
         End
         Begin VB.Label Label12 
            Caption         =   "Name:"
            Height          =   375
            Left            =   240
            TabIndex        =   35
            Top             =   315
            Width           =   855
         End
      End
      Begin VB.Frame Frame12 
         Height          =   735
         Left            =   240
         TabIndex        =   31
         Top             =   240
         Width           =   3375
         Begin VB.ComboBox cmbCustomerID5 
            Height          =   315
            Left            =   1320
            TabIndex        =   32
            Text            =   "--Select--"
            Top             =   240
            Width           =   1935
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Customer ID:"
            Height          =   195
            Left            =   240
            TabIndex        =   33
            Top             =   315
            Width           =   915
         End
      End
      Begin VB.CommandButton cmdSubmit3 
         Caption         =   "Submit"
         Height          =   375
         Left            =   4560
         TabIndex        =   30
         Top             =   1080
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   5880
         TabIndex        =   29
         Top             =   1080
         Width           =   1215
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "Purchase Search"
      Height          =   4455
      Left            =   8760
      TabIndex        =   20
      Top             =   1200
      Width           =   7575
      Begin VB.Frame Frame8 
         Height          =   735
         Left            =   240
         TabIndex        =   58
         Top             =   3000
         Width           =   7095
         Begin MSComCtl2.DTPicker DTPicker3 
            Height          =   315
            Left            =   1320
            TabIndex        =   59
            Top             =   240
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin MSComCtl2.DTPicker DTPicker8 
            Height          =   315
            Left            =   4440
            TabIndex        =   60
            Top             =   240
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin VB.Label Label7 
            Caption         =   "Date: "
            Height          =   375
            Left            =   240
            TabIndex        =   63
            Top             =   315
            Width           =   495
         End
         Begin VB.Label Label19 
            Caption         =   "From: "
            Height          =   375
            Left            =   840
            TabIndex        =   62
            Top             =   315
            Width           =   495
         End
         Begin VB.Label Label20 
            Caption         =   "To:"
            Height          =   375
            Left            =   4080
            TabIndex        =   61
            Top             =   315
            Width           =   495
         End
      End
      Begin VB.Frame Frame10 
         Height          =   1335
         Left            =   240
         TabIndex        =   25
         Top             =   1680
         Width           =   7095
         Begin VB.ComboBox cmbCustomerID4 
            Height          =   315
            Left            =   1320
            TabIndex        =   9
            Text            =   "--Select--"
            Top             =   240
            Width           =   2415
         End
         Begin MSComCtl2.DTPicker DTPicker4 
            Height          =   315
            Left            =   1320
            TabIndex        =   10
            Top             =   720
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin MSComCtl2.DTPicker DTPicker10 
            Height          =   315
            Left            =   4440
            TabIndex        =   50
            Top             =   720
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin VB.Label Label23 
            Caption         =   "To:"
            Height          =   375
            Left            =   4080
            TabIndex        =   51
            Top             =   795
            Width           =   495
         End
         Begin VB.Label Label22 
            Caption         =   "From: "
            Height          =   375
            Left            =   840
            TabIndex        =   49
            Top             =   795
            Width           =   495
         End
         Begin VB.Label Label10 
            Caption         =   "Date: "
            Height          =   375
            Left            =   240
            TabIndex        =   27
            Top             =   780
            Width           =   735
         End
         Begin VB.Label Label9 
            Caption         =   "Customer ID:"
            Height          =   375
            Left            =   240
            TabIndex        =   26
            Top             =   300
            Width           =   1095
         End
      End
      Begin VB.Frame Frame9 
         Height          =   735
         Left            =   240
         TabIndex        =   23
         Top             =   960
         Width           =   7095
         Begin VB.ComboBox cmbCustomerID3 
            Height          =   315
            Left            =   1320
            TabIndex        =   8
            Text            =   "--Select--"
            Top             =   240
            Width           =   2415
         End
         Begin VB.Label Label8 
            Caption         =   "Customer ID:"
            Height          =   375
            Left            =   240
            TabIndex        =   24
            Top             =   315
            Width           =   1095
         End
      End
      Begin VB.Frame Frame7 
         Height          =   735
         Left            =   240
         TabIndex        =   21
         Top             =   240
         Width           =   7095
         Begin VB.ComboBox cmbInvoiceID2 
            Height          =   315
            Left            =   1320
            TabIndex        =   7
            Text            =   "--Select--"
            Top             =   240
            Width           =   2415
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Invoice No:"
            Height          =   195
            Left            =   240
            TabIndex        =   22
            Top             =   315
            Width           =   825
         End
      End
      Begin VB.CommandButton cmdSubmit2 
         Caption         =   "Submit"
         Height          =   375
         Left            =   4560
         TabIndex        =   11
         Top             =   3840
         Width           =   1215
      End
      Begin VB.CommandButton cmdCancel2 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   5880
         TabIndex        =   12
         Top             =   3840
         Width           =   1215
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Sales Search"
      Height          =   4455
      Left            =   1080
      TabIndex        =   0
      Top             =   1200
      Width           =   7575
      Begin VB.Frame Frame3 
         Height          =   735
         Left            =   240
         TabIndex        =   52
         Top             =   3000
         Width           =   7095
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   1320
            TabIndex        =   53
            Top             =   240
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin MSComCtl2.DTPicker DTPicker6 
            Height          =   315
            Left            =   4440
            TabIndex        =   54
            Top             =   240
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin VB.Label Label2 
            Caption         =   "Date: "
            Height          =   375
            Left            =   240
            TabIndex        =   57
            Top             =   315
            Width           =   495
         End
         Begin VB.Label Label15 
            Caption         =   "From: "
            Height          =   375
            Left            =   840
            TabIndex        =   56
            Top             =   315
            Width           =   495
         End
         Begin VB.Label Label16 
            Caption         =   "To:"
            Height          =   375
            Left            =   4080
            TabIndex        =   55
            Top             =   315
            Width           =   495
         End
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   5880
         TabIndex        =   6
         Top             =   3840
         Width           =   1215
      End
      Begin VB.CommandButton cmdSubmit 
         Caption         =   "Submit"
         Height          =   375
         Left            =   4560
         TabIndex        =   5
         Top             =   3840
         Width           =   1215
      End
      Begin VB.Frame Frame4 
         Height          =   735
         Left            =   240
         TabIndex        =   18
         Top             =   240
         Width           =   7095
         Begin VB.ComboBox cmbInvoiceID 
            Height          =   315
            Left            =   1320
            TabIndex        =   1
            Text            =   "--Select--"
            Top             =   240
            Width           =   2415
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Invoice No:"
            Height          =   195
            Left            =   240
            TabIndex        =   19
            Top             =   315
            Width           =   825
         End
      End
      Begin VB.Frame Frame2 
         Height          =   735
         Left            =   240
         TabIndex        =   16
         Top             =   960
         Width           =   7095
         Begin VB.ComboBox cmbCustomerID1 
            Height          =   315
            Left            =   1320
            TabIndex        =   2
            Text            =   "--Select--"
            Top             =   240
            Width           =   2415
         End
         Begin VB.Label Label3 
            Caption         =   "Customer ID:"
            Height          =   375
            Left            =   240
            TabIndex        =   17
            Top             =   315
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Height          =   1335
         Left            =   240
         TabIndex        =   13
         Top             =   1680
         Width           =   7095
         Begin MSComCtl2.DTPicker DTPicker7 
            Height          =   315
            Left            =   4440
            TabIndex        =   44
            Top             =   720
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin VB.ComboBox cmbCustomerID2 
            Height          =   315
            Left            =   1320
            TabIndex        =   3
            Text            =   "--Select--"
            Top             =   240
            Width           =   2415
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   315
            Left            =   1320
            TabIndex        =   4
            Top             =   720
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   556
            _Version        =   393216
            Format          =   49807361
            CurrentDate     =   43319
         End
         Begin VB.Label Label18 
            Caption         =   "To:"
            Height          =   375
            Left            =   4080
            TabIndex        =   45
            Top             =   795
            Width           =   495
         End
         Begin VB.Label Label17 
            Caption         =   "From: "
            Height          =   375
            Left            =   840
            TabIndex        =   43
            Top             =   795
            Width           =   495
         End
         Begin VB.Label Label4 
            Caption         =   "Customer ID:"
            Height          =   375
            Left            =   240
            TabIndex        =   15
            Top             =   300
            Width           =   1095
         End
         Begin VB.Label Label5 
            Caption         =   "Date: "
            Height          =   375
            Left            =   240
            TabIndex        =   14
            Top             =   780
            Width           =   735
         End
      End
   End
End
Attribute VB_Name = "frmSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmbSubmit_Click()
    
End Sub

Private Sub cmbCustomerID1_Change()
    cmbInvoiceID.Text = "--Select--"
End Sub

Private Sub cmbCustomerID2_Change()
    cmbCustomerID1.Text = "--Select--"
End Sub

Private Sub cmbCustomerID3_Change()
    cmbInvoiceID2.Text = "--Select--"
End Sub

Private Sub cmbCustomerID4_Change()
    cmbCustomerID3.Text = "--Select--"
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdCancel2_Click()
    Unload Me
End Sub

Private Sub cmdCancel4_Click()
    Unload Me
End Sub

Private Sub cmdSubmit_Click()
    On Error GoTo errmsg
    Dim total As Double, qut As Long
    Dim Name As String, address As String, contact As String, dte As String
    Dim userId As Integer
    
    total = 0
    qut = 0
    If cmbInvoiceID.Text <> "--Select--" And cmbInvoiceID.Text <> "" Then
        reccheck
        rec.Open "select name,address,contact,userId from tblUser where userId = (Select max(userId) from tblSales where invoiceNo = '" & cmbInvoiceID.Text & "')", con, adOpenDynamic, adLockOptimistic
        If rec.EOF = False Then
            Name = rec.Fields(0)
            address = rec.Fields(1)
            contact = rec.Fields(2)
            userId = rec.Fields(3)
        End If

        total = 0
        qut = 0
        
        reccheck
        rec.Open "Select quantity,totalPrice,date from tblSales where invoiceNo='" & cmbInvoiceID.Text & "'", con, adOpenDynamic, adLockOptimistic
        While Not rec.EOF
            total = total + Val(rec.Fields(1))
            qut = qut + Val(rec.Fields(0))
            dte = Format(rec.Fields(2), "dd-mm-yyyy")
            rec.MoveNext
        Wend
        
        With rptSales.Sections("Section4")
            .Controls("lblCompanyName").Caption = "Muvattupuzha Block Federated Samithi, Valakom"
            .Controls("lblDate").Caption = dte
            .Controls("lblInvoiceNo").Caption = cmbInvoiceID.Text
            .Controls("lblBuyerName").Caption = Name
            .Controls("lblregno").Caption = userId
            .Controls("lblBuyerAddress").Caption = address & vbCrLf & "Contact: " & contact
        End With
        
        With rptSales.Sections("Section5")
             reccheck
             rec.Open "Select sum(balanceAmount),sum(AmountPaid) from tblBalance where userId=" & userId, con, adOpenDynamic, adLockOptimistic
            
            .Controls("lblItemCount").Caption = qut & " Nos"
            .Controls("lblTotal").Caption = total & "/-"
            .Controls("lblPaid").Caption = rec.Fields(1) & "/-"
            .Controls("lblBalance").Caption = rec.Fields(0) & "/-"
   
            .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
        End With
        
        If (DataEnvironment1.rsSalesByInvoiceID.State = 1) Then
            DataEnvironment1.rsSalesByInvoiceID.Close
        Else
            DataEnvironment1.SalesByInvoiceID (cmbInvoiceID.Text)
            rptSales.Show
            cmbInvoiceID.Text = "--Select--"
        End If
    Else
        'Customer ID
        If cmbCustomerID1.Text <> "--Select--" And cmbCustomerID1.Text <> "" Then
            reccheck
            rec.Open "select name,address,contact from tblUser where userId = '" & cmbCustomerID1.Text & "'", con, adOpenDynamic, adLockOptimistic
            If rec.EOF = False Then
                Name = rec.Fields(0)
                address = rec.Fields(1)
                contact = rec.Fields(2)
            End If
    
            total = 0
            qut = 0
            
            reccheck
            rec.Open "Select quantity,totalPrice,date from tblSales where userId = '" & cmbCustomerID1.Text & "'", con, adOpenDynamic, adLockOptimistic
            While Not rec.EOF
                total = total + Val(rec.Fields(1))
                qut = qut + Val(rec.Fields(0))
                dte = Format(rec.Fields(2), "dd-mm-yyyy")
                rec.MoveNext
            Wend
            
            With rptSales2.Sections("Section4")
                .Controls("lblCompanyName").Caption = "Muvattupuzha Block Federated Samithi, Valakom"
                .Controls("lblBuyerName").Caption = Name
                .Controls("lblregno").Caption = cmbCustomerID1.Text
                .Controls("lblBuyerAddress").Caption = address & vbCrLf & "Contact: " & contact
            End With
            
            With rptSales2.Sections("Section5")
                 reccheck
                 rec.Open "Select sum(balanceAmount),sum(AmountPaid) from tblBalance where userId=" & cmbCustomerID1.Text, con, adOpenDynamic, adLockOptimistic
                  
                .Controls("lblItemCount").Caption = qut & " Nos"
                .Controls("lblTotal").Caption = total & "/-"
                .Controls("lblPaid").Caption = rec.Fields(1) & "/-"
                .Controls("lblBalance").Caption = rec.Fields(0) & "/-"
                .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
            End With
            
            If (DataEnvironment1.rsSalesByUserID.State = 1) Then
                DataEnvironment1.rsSalesByUserID.Close
            Else
                DataEnvironment1.SalesByUserID (cmbCustomerID1.Text)
                rptSales2.Show
                cmbCustomerID1.Text = "--Select--"
            End If
        Else
            'Customer ID and Date
            If cmbCustomerID2.Text <> "--Select--" And cmbCustomerID2.Text <> "" Then
                reccheck
                rec.Open "Select name,address,contact from tblUser where userId = '" & cmbCustomerID2.Text & "'", con, adOpenDynamic, adLockOptimistic
                If rec.EOF = False Then
                    Name = rec.Fields(0)
                    address = rec.Fields(1)
                    contact = rec.Fields(2)
                End If
        
                total = 0
                qut = 0
                
                reccheck
                rec.Open "Select quantity,totalPrice,date from tblSales where userId = '" & cmbCustomerID2.Text & "' and date between '" & DTPicker2.Value & "' and '" & DTPicker7.Value & "'", con, adOpenDynamic, adLockOptimistic
                While Not rec.EOF
                    total = total + Val(rec.Fields(1))
                    qut = qut + Val(rec.Fields(0))
                    dte = Format(rec.Fields(2), "dd-mm-yyyy")
                    rec.MoveNext
                Wend
                
                With rptSales3.Sections("Section4")
                    .Controls("lblCompanyName").Caption = "Muvattupuzha Block Federated Samithi, Valakom"
                    .Controls("lblBuyerName").Caption = Name
                    .Controls("lblregno").Caption = cmbCustomerID2.Text
                    .Controls("lblDate").Caption = DTPicker2.Value & " To " & DTPicker7.Value
                    .Controls("lblBuyerAddress").Caption = address & vbCrLf & "Contact: " & contact
                End With
                
                With rptSales3.Sections("Section5")
                     reccheck
                     rec.Open "Select sum(balanceAmount),sum(AmountPaid) from tblBalance where userId=" & cmbCustomerID2.Text, con, adOpenDynamic, adLockOptimistic
         
                    .Controls("lblItemCount").Caption = qut & " Nos"
                    .Controls("lblTotal").Caption = total & "/-"
                    .Controls("lblPaid").Caption = rec.Fields(1) & "/-"
                    .Controls("lblBalance").Caption = rec.Fields(0) & "/-"
                    .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
                End With
                
                If (DataEnvironment1.rsSalesByDate.State = 1) Then
                    DataEnvironment1.rsSalesByDate.Close
                Else
                    DataEnvironment1.SalesByDate cmbCustomerID2.Text, DTPicker2.Value, DTPicker7.Value
                    rptSales3.Show
                    cmbCustomerID2.Text = "--Select--"
                End If
            Else
                'Date Between
                If DTPicker1.Value Then
            
                    total = 0
                    qut = 0
                    
                    reccheck
                    rec.Open "Select quantity,totalPrice,date from tblSales where date between '" & DTPicker1.Value & "' and '" & DTPicker6.Value & "'", con, adOpenDynamic, adLockOptimistic
                    While Not rec.EOF
                        total = total + Val(rec.Fields(1))
                        qut = qut + Val(rec.Fields(0))
                        dte = Format(rec.Fields(2), "dd-mm-yyyy")
                        rec.MoveNext
                    Wend
                    
                    With rptSales4.Sections("Section4")
                        .Controls("lblCompanyName").Caption = "Muvattupuzha Block Federated Samithi, Valakom"
                        .Controls("lblDate").Caption = DTPicker1.Value & " To " & DTPicker6.Value
                    End With
                    
                    With rptSales4.Sections("Section5")
                         reccheck
                         rec.Open "Select sum(balanceAmount),sum(AmountPaid) from tblBalance", con, adOpenDynamic, adLockOptimistic
         
                        .Controls("lblItemCount").Caption = qut & " Nos"
                        .Controls("lblTotal").Caption = total & "/-"
                        .Controls("lblPaid").Caption = rec.Fields(1) & "/-"
                        .Controls("lblBalance").Caption = rec.Fields(0) & "/-"
                        .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
                    End With
                    
                    If (DataEnvironment1.rsSalesByDate2.State = 1) Then
                        DataEnvironment1.rsSalesByDate2.Close
                    Else
                        DataEnvironment1.SalesByDate2 DTPicker1.Value, DTPicker6.Value
                        rptSales4.Show
                    End If
                Else
                    MsgBox "Please select any one of the choices", vbCritical
                End If
            End If
        End If
    End If
    Exit Sub
errmsg:
    MsgBox "Oops!!! Something went wrong" & vbCrLf & "Please try again", vbCritical
End Sub

Private Sub cmdSubmit2_Click()
    On Error GoTo errmsg
    Dim total As Double, qut As Long
    Dim Name As String, address As String, contact As String, dte As String
    Dim userId As Integer
    
    total = 0
    qut = 0
    If CheckCombo(cmbInvoiceID2, "Purchase ID") Then
        reccheck
        rec.Open "select name,address,contact from tblUser where userId = (Select max(userId) from tblPurchase where invoiceNo = '" & cmbInvoiceID2.Text & "')", con, adOpenDynamic, adLockOptimistic
        If rec.EOF = False Then
            Name = rec.Fields(0)
            address = rec.Fields(1)
            contact = rec.Fields(2)
            userId = rec.Fields(3)
        End If

        total = 0
        qut = 0
        
        reccheck
        rec.Open "Select quantity,totalPrice,date from tblPurchase where invoiceNo='" & cmbInvoiceID2.Text & "'", con, adOpenDynamic, adLockOptimistic
        While Not rec.EOF
            total = total + Val(rec.Fields(1))
            qut = qut + Val(rec.Fields(0))
            dte = Format(rec.Fields(2), "dd-mm-yyyy")
            rec.MoveNext
        Wend
        
        With rptPurchase.Sections("Section4")
            .Controls("lblCompanyName").Caption = "Muvattupuzha Block Federated Samithi, Valakom"
            .Controls("lblDate").Caption = dte
            .Controls("lblInvoiceNo").Caption = cmbInvoiceID2.Text
            .Controls("lblBuyerName").Caption = Name
            .Controls("lblregno").Caption = userId
            .Controls("lblBuyerAddress").Caption = address & vbCrLf & "Contact: " & contact
        End With
        
        With rptPurchase.Sections("Section5")
            .Controls("lblItemCount").Caption = qut & " Nos"
            .Controls("lblTotal").Caption = total & "/-"
            .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
        End With
        
        If (DataEnvironment1.rsPurchaseByInvoiceID.State = 1) Then
            DataEnvironment1.rsPurchaseByInvoiceID.Close
        Else
            DataEnvironment1.PurchaseByInvoiceID (cmbInvoiceID2.Text)
            rptPurchase.Show
            cmbInvoiceID2.Text = "--Select--"
        End If
    Else
        'Customer ID
        If cmbCustomerID3.Text <> "--Select--" And cmbCustomerID3.Text <> "" Then
            reccheck
            rec.Open "select name,address,contact from tblUser where userId = '" & cmbCustomerID3.Text & "'", con, adOpenDynamic, adLockOptimistic
            If rec.EOF = False Then
                Name = rec.Fields(0)
                address = rec.Fields(1)
                contact = rec.Fields(2)
            End If
    
            total = 0
            qut = 0
            
            reccheck
            rec.Open "Select quantity,totalPrice,date from tblPurchase where userId = '" & cmbCustomerID3.Text & "'", con, adOpenDynamic, adLockOptimistic
            While Not rec.EOF
                total = total + Val(rec.Fields(1))
                qut = qut + Val(rec.Fields(0))
                dte = Format(rec.Fields(2), "dd-mm-yyyy")
                rec.MoveNext
            Wend
            
            With rptPurchase2.Sections("Section4")
                .Controls("lblCompanyName").Caption = "Muvattupuzha Block Federated Samithi, Valakom"
                .Controls("lblBuyerName").Caption = Name
                .Controls("lblregno").Caption = cmbCustomerID3.Text
                .Controls("lblBuyerAddress").Caption = address & vbCrLf & "Contact: " & contact
            End With
            
            With rptPurchase2.Sections("Section5")
                .Controls("lblItemCount").Caption = qut & " Nos"
                .Controls("lblTotal").Caption = total & "/-"
                .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
            End With
            
            If (DataEnvironment1.rsPurchaseByUserID.State = 1) Then
                DataEnvironment1.rsPurchaseByUserID.Close
            Else
                DataEnvironment1.PurchaseByUserID (cmbCustomerID3.Text)
                rptPurchase2.Show
                cmbCustomerID3.Text = "--Select--"
            End If
        Else
            'Customer ID and Date
            If cmbCustomerID4.Text <> "--Select--" And cmbCustomerID4.Text <> "" Then
                reccheck
                rec.Open "Select name,address,contact from tblUser where userId = '" & cmbCustomerID4.Text & "'", con, adOpenDynamic, adLockOptimistic
                If rec.EOF = False Then
                    Name = rec.Fields(0)
                    address = rec.Fields(1)
                    contact = rec.Fields(2)
                End If
        
                total = 0
                qut = 0
                
                reccheck
                rec.Open "Select quantity,totalPrice,date from tblSales where userId = '" & cmbCustomerID4.Text & "' and date between '" & DTPicker4.Value & "' and '" & DTPicker10.Value & "'", con, adOpenDynamic, adLockOptimistic
                While Not rec.EOF
                    total = total + Val(rec.Fields(1))
                    qut = qut + Val(rec.Fields(0))
                    dte = Format(rec.Fields(2), "dd-mm-yyyy")
                    rec.MoveNext
                Wend
                
                With rptPurchase3.Sections("Section4")
                    .Controls("lblCompanyName").Caption = "Muvattupuzha Block Federated Samithi, Valakom"
                    .Controls("lblBuyerName").Caption = Name
                    .Controls("lblregno").Caption = cmbCustomerID4.Text
                    .Controls("lblDate").Caption = DTPicker4.Value & " To " & DTPicker10.Value
                    .Controls("lblBuyerAddress").Caption = address & vbCrLf & "Contact: " & contact
                End With
                
                With rptPurchase3.Sections("Section5")
                    .Controls("lblItemCount").Caption = qut & " Nos"
                    .Controls("lblTotal").Caption = total & "/-"
                    .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
                End With
                
                If (DataEnvironment1.rsPurchaseByDate.State = 1) Then
                    DataEnvironment1.rsPurchaseByDate.Close
                Else
                    DataEnvironment1.PurchaseByDate cmbCustomerID4.Text, DTPicker4.Value, DTPicker10.Value
                    rptPurchase3.Show
                    cmbCustomerID4.Text = "--Select--"
                End If
            Else
                'Date Between
                If DTPicker3.Value Then
            
                    total = 0
                    qut = 0
                    
                    reccheck
                    rec.Open "Select quantity,totalPrice,date from tblSales where date between '" & DTPicker3.Value & "' and '" & DTPicker8.Value & "'", con, adOpenDynamic, adLockOptimistic
                    While Not rec.EOF
                        total = total + Val(rec.Fields(1))
                        qut = qut + Val(rec.Fields(0))
                        dte = Format(rec.Fields(2), "dd-mm-yyyy")
                        rec.MoveNext
                    Wend
                    
                    With rptPurchase4.Sections("Section4")
                        .Controls("lblCompanyName").Caption = "Muvattupuzha Block Federated Samithi, Valakom"
                        .Controls("lblDate").Caption = DTPicker3.Value & " To " & DTPicker8.Value
                    End With
                    
                    With rptPurchase4.Sections("Section5")
                        .Controls("lblItemCount").Caption = qut & " Nos"
                        .Controls("lblTotal").Caption = total & "/-"
                        .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
                    End With
                    
                    If (DataEnvironment1.rsPurchaseByDate2.State = 1) Then
                        DataEnvironment1.rsPurchaseByDate2.Close
                    Else
                        DataEnvironment1.PurchaseByDate2 DTPicker3.Value, DTPicker8.Value
                        rptPurchase4.Show
                    End If
                Else
                    MsgBox "Please select any one of the choices", vbCritical
                End If
            End If
        End If
    End If
    Exit Sub
errmsg:
    MsgBox "Oops!!! Something went wrong" & vbCrLf & "Please try again", vbCritical
End Sub

Private Sub cmdSubmit3_Click()
    If cmbCustomerID5.Text <> "--Select--" And cmbCustomerID5.Text <> "" Then
        If (DataEnvironment1.rsuserByID.State = 1) Then
            DataEnvironment1.rsuserByID.Close
        Else
            DataEnvironment1.userByID (cmbCustomerID5.Text)
            rptCustomer.Show
        End If
    Else
        If cmbName.Text <> "--Select--" And cmbName.Text <> "" Then
            If (DataEnvironment1.rsuserByName.State = 1) Then
                DataEnvironment1.rsuserByName.Close
            Else
                DataEnvironment1.userByName (cmbName.Text)
                rptCustomer2.Show
            End If
        Else
            MsgBox "Select Either Customer ID or Name", vbCritical
        End If
        
    End If
End Sub

Private Sub cmdSubmit4_Click()
    Dim total As Double, qty As Long, unionFee As Double, TA As Double, SellerFee As Double
    total = 0
    qty = 0
    unionFee = 0
    TA = 0
    SellerFee = 0
    
    reccheck
    rec.Open "Select quantity,TotalPrice,UnionFee,TA,SellerFee from tblDayBook2 where date between '" & DTPicker5.Value & "' and '" & DTPicker9.Value & "'", con, adOpenDynamic, adLockOptimistic
    While Not rec.EOF
        qty = qty + rec.Fields(0)
        total = total + rec.Fields(1)
        unionFee = unionFee + rec.Fields(2)
        TA = TA + rec.Fields(3)
        SellerFee = SellerFee + rec.Fields(4)
        rec.MoveNext
    Wend
    
    With rptDayBook.Sections("Section4")
        .Controls("lblDate").Caption = DTPicker5.Value & " To " & DTPicker9.Value
    End With
     
    With rptDayBook.Sections("Section5")
        .Controls("lblItemCount").Caption = qty & " Nos"
        .Controls("lblTotal2").Caption = total & "/-"
        .Controls("lblTotal").Caption = SellerFee
        .Controls("lblUnionFee").Caption = unionFee
        .Controls("lblTA").Caption = TA
        .Controls("lblAmtWord").Caption = cNumToWord("" & total) & " Only"
    End With
    
    If (DataEnvironment1.rsdayBookByDate.State = 1) Then
        DataEnvironment1.rsdayBookByDate.Close
    Else
        DataEnvironment1.dayBookByDate DTPicker5.Value, DTPicker9.Value
        rptDayBook.Show
        
    End If
End Sub

Private Sub Command1_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    connection
    
    'Sales Search
    reccheck
    rec.Open "Select distinct invoiceNo from tblSales", con, adOpenDynamic, adLockPessimistic
    While Not rec.EOF
        cmbInvoiceID.AddItem (rec.Fields(0))
        rec.MoveNext
    Wend
    
    reccheck
    rec.Open "Select userId,name from tblUser", con, adOpenDynamic, adLockPessimistic
    While Not rec.EOF
        cmbCustomerID1.AddItem (rec.Fields(0))
        cmbCustomerID2.AddItem (rec.Fields(0))
        cmbCustomerID3.AddItem (rec.Fields(0))
        cmbCustomerID4.AddItem (rec.Fields(0))
        cmbCustomerID5.AddItem (rec.Fields(0))
        cmbName.AddItem (rec.Fields(1))
        rec.MoveNext
    Wend
    
    'Purchase Search
    reccheck
    rec.Open "Select distinct invoiceNo from tblPurchase", con, adOpenDynamic, adLockPessimistic
    While Not rec.EOF
        cmbInvoiceID2.AddItem (rec.Fields(0))
        rec.MoveNext
    Wend
    
    DTPicker1.Value = Format(Date, "dd-mm-yyyy")
    DTPicker2.Value = Format(Date, "dd-mm-yyyy")
    DTPicker3.Value = Format(Date, "dd-mm-yyyy")
    DTPicker4.Value = Format(Date, "dd-mm-yyyy")
    DTPicker5.Value = Format(Date, "dd-mm-yyyy")
    DTPicker6.Value = Format(Date, "dd-mm-yyyy")
    DTPicker7.Value = Format(Date, "dd-mm-yyyy")
    DTPicker8.Value = Format(Date, "dd-mm-yyyy")
    DTPicker9.Value = Format(Date, "dd-mm-yyyy")
    DTPicker10.Value = Format(Date, "dd-mm-yyyy")
    
    
End Sub

