VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmBalance 
   Caption         =   "Balance"
   ClientHeight    =   11010
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   20370
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      Height          =   3495
      Left            =   6840
      TabIndex        =   10
      Top             =   2520
      Width           =   5295
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   1680
         TabIndex        =   2
         Top             =   1320
         Width           =   3015
         _ExtentX        =   5318
         _ExtentY        =   661
         _Version        =   393216
         Format          =   60096513
         CurrentDate     =   43349
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   3360
         TabIndex        =   5
         Top             =   2880
         Width           =   1215
      End
      Begin VB.TextBox txtAmountPaid 
         Height          =   375
         Left            =   1680
         TabIndex        =   3
         Top             =   1920
         Width           =   3015
      End
      Begin VB.ComboBox comboCustomerID2 
         Height          =   315
         Left            =   1680
         TabIndex        =   1
         Text            =   "--Select--"
         Top             =   480
         Width           =   3015
      End
      Begin VB.CommandButton cmdSubmit2 
         Caption         =   "Submit"
         Height          =   375
         Left            =   1800
         TabIndex        =   4
         Top             =   2880
         Width           =   1335
      End
      Begin VB.Label lblBalance 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   1680
         TabIndex        =   16
         Top             =   2520
         Width           =   3015
      End
      Begin VB.Label Label5 
         Caption         =   "Balance:"
         Height          =   255
         Left            =   360
         TabIndex        =   15
         Top             =   2520
         Width           =   1215
      End
      Begin VB.Label Label2 
         Caption         =   "Date:"
         Height          =   375
         Left            =   360
         TabIndex        =   14
         Top             =   1400
         Width           =   1095
      End
      Begin VB.Label Label4 
         Caption         =   "Amount Paid:"
         Height          =   375
         Left            =   360
         TabIndex        =   13
         Top             =   2000
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "User ID:"
         Height          =   375
         Left            =   360
         TabIndex        =   12
         Top             =   500
         Width           =   735
      End
      Begin VB.Label lblCustomerName2 
         BackStyle       =   0  'Transparent
         Height          =   375
         Left            =   1680
         TabIndex        =   11
         Top             =   840
         Width           =   2055
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1215
      Left            =   6840
      TabIndex        =   0
      Top             =   6000
      Width           =   5295
      Begin VB.CommandButton cmbSubmit 
         Caption         =   "Submit"
         Height          =   375
         Left            =   3600
         TabIndex        =   6
         Top             =   450
         Width           =   1335
      End
      Begin VB.ComboBox comboCustomerId 
         Height          =   315
         Left            =   1200
         TabIndex        =   9
         Text            =   "--Select--"
         Top             =   480
         Width           =   2175
      End
      Begin VB.Label lblCustomerName 
         BackStyle       =   0  'Transparent
         Height          =   375
         Left            =   1200
         TabIndex        =   8
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label Label1 
         Caption         =   "User ID:"
         Height          =   375
         Left            =   360
         TabIndex        =   7
         Top             =   500
         Width           =   735
      End
   End
End
Attribute VB_Name = "frmBalance"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmbSubmit_Click()
    reccheck
    If (DataEnvironment1.rsBalanceByUserId.State = 1) Then
        DataEnvironment1.rsBalanceByUserId.Close
    Else
        DataEnvironment1.BalanceByUserId (comboCustomerId.Text)
        rptBalance.Show
    End If
    Unload Me
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdSubmit2_Click()
    On Error GoTo errmsg
    If comboCustomerID2.Text <> "--Select--" And comboCustomerID2.Text <> "" Then
        reccheck
        rec.Open "update tblBalance set amountpaid = amountpaid + " & txtAmountPaid.Text & " where userId='" & comboCustomerID2.Text & "' and date='" & Format$(DTPicker1.Value, "DD-MM-YYYY") & "'", con, adOpenDynamic, adLockPessimistic
        rec.Open "update tblBalance set BalanceAmount = totalAmount - amountPaid where userId='" & comboCustomerID2.Text & "' and date='" & Format$(DTPicker1.Value, "DD-MM-YYYY") & "'", con, adOpenDynamic, adLockPessimistic
        
        MsgBox "Amount Updated"
        comboCustomerID2.Text = "--Select--"
        txtAmountPaid.Text = ""
        lblBalance.Caption = ""
        Exit Sub
    Else
        MsgBox "All fields are mandatory", vbCritical
    End If
errmsg:
    MsgBox "Oops!!! Something went wrong. Please try again", vbCritical
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

Private Sub comboCustomerID2_Change()
    reccheck
    If comboCustomerID2.Text <> "--Select--" And comboCustomerID2.Text <> "" Then
        rec.Open "Select name from tblUser where userId=" & comboCustomerID2.Text, con, adOpenDynamic, adLockPessimistic
        If rec.EOF = False Then
            lblCustomerName2.Caption = rec.Fields(0)
        Else
            lblCustomerName2.Caption = ""
        End If
    End If
End Sub

Private Sub comboCustomerID2_Click()
    reccheck
    If comboCustomerID2.Text <> "--Select--" And comboCustomerID2.Text <> "" Then
        rec.Open "Select name from tblUser where userId=" & comboCustomerID2.Text, con, adOpenDynamic, adLockPessimistic
        If rec.EOF = False Then
            lblCustomerName2.Caption = rec.Fields(0)
        Else
            lblCustomerName2.Caption = ""
        End If
    End If
End Sub

Private Sub Form_Load()
    connection
    reccheck
    rec.Open "Select userId from tblUser", con, adOpenDynamic, adLockPessimistic
    While Not rec.EOF
        comboCustomerId.AddItem (rec.Fields(0))
        comboCustomerID2.AddItem (rec.Fields(0))
        rec.MoveNext
    Wend
End Sub

Private Sub txtAmountPaid_Change()
    reccheck
    rec.Open "select balanceAmount from tblBalance where userId='" & comboCustomerID2.Text & "' and date='" & Format$(DTPicker1.Value, "DD-MM-YYYY") & "'", con, adOpenDynamic, adLockPessimistic
    If rec.EOF = False Then
        lblBalance.Caption = rec.Fields(0)
    End If
End Sub

Private Sub txtAmountPaid_LostFocus()
    reccheck
    rec.Open "select balanceAmount from tblBalance where userId='" & comboCustomerID2.Text & "' and date='" & Format$(DTPicker1.Value, "DD-MM-YYYY") & "'", con, adOpenDynamic, adLockPessimistic
    If rec.EOF = False Then
        lblBalance.Caption = rec.Fields(0)
    End If
End Sub
