VERSION 5.00
Begin VB.Form frmBLFO 
   Caption         =   "BLFO"
   ClientHeight    =   11010
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   20370
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   4215
      Left            =   8018
      TabIndex        =   0
      Top             =   3398
      Width           =   4335
      Begin VB.ComboBox cmbYear 
         Height          =   315
         ItemData        =   "frmBLFO.frx":0000
         Left            =   1800
         List            =   "frmBLFO.frx":0043
         TabIndex        =   8
         Text            =   "--Select--"
         Top             =   360
         Width           =   2175
      End
      Begin VB.TextBox txtSeedMoney 
         Height          =   375
         Left            =   1800
         TabIndex        =   7
         Top             =   840
         Width           =   2175
      End
      Begin VB.TextBox txtTransCost 
         Height          =   405
         Left            =   1800
         TabIndex        =   6
         Top             =   1320
         Width           =   2175
      End
      Begin VB.TextBox txtOprCost 
         Height          =   375
         Left            =   1800
         TabIndex        =   5
         Top             =   1800
         Width           =   2175
      End
      Begin VB.TextBox txtInfras 
         Height          =   375
         Left            =   1800
         TabIndex        =   4
         Top             =   2280
         Width           =   2175
      End
      Begin VB.TextBox txtRevol 
         Height          =   375
         Left            =   1800
         TabIndex        =   3
         Top             =   2760
         Width           =   2175
      End
      Begin VB.CommandButton cmdSubmit 
         Caption         =   "Submit"
         Height          =   375
         Left            =   1200
         TabIndex        =   2
         Top             =   3480
         Width           =   1215
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   2520
         TabIndex        =   1
         Top             =   3480
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "Financial Year:"
         Height          =   375
         Left            =   360
         TabIndex        =   14
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label2 
         Caption         =   "Seed Money"
         Height          =   375
         Left            =   360
         TabIndex        =   13
         Top             =   960
         Width           =   1335
      End
      Begin VB.Label Label3 
         Caption         =   "Transportation Subsidy:"
         Height          =   375
         Left            =   360
         TabIndex        =   12
         Top             =   1440
         Width           =   1455
      End
      Begin VB.Label Label4 
         Caption         =   "Operational Cost:"
         Height          =   255
         Left            =   360
         TabIndex        =   11
         Top             =   1920
         Width           =   1335
      End
      Begin VB.Label Label5 
         Caption         =   "Infrastructure:"
         Height          =   375
         Left            =   360
         TabIndex        =   10
         Top             =   2325
         Width           =   1575
      End
      Begin VB.Label Label6 
         Caption         =   "Revolving:"
         Height          =   495
         Left            =   360
         TabIndex        =   9
         Top             =   2790
         Width           =   1335
      End
   End
End
Attribute VB_Name = "frmBLFO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdSubmit_Click()
    On Error GoTo errmsg
    Dim total As Double
    
    If CheckCombo(cmbYear, "Year") And txtSeedMoney.Text <> "" And txtTransCost.Text <> "" And txtOprCost.Text <> "" And txtInfras.Text <> "" And txtRevol.Text <> "" Then
        reccheck
        total = Val(txtSeedMoney.Text) + Val(txtTransCost.Text) + Val(txtOprCost.Text) + Val(txtInfras.Text) + Val(txtRevol.Text)
        rec.Open "insert into tblBLFO values('" & cmbYear & "','" & txtSeedMoney.Text & "','" & txtTransCost.Text & "','" & txtOprCost.Text & "','" & txtInfras.Text & "','" & txtRevol.Text & "','" & total & "')", con, adOpenDynamic, adLockOptimistic
        MsgBox "Data inserted successfully", vbInformation
        cmbYear.Text = "--Select--"
        txtSeedMoney.Text = ""
        txtTransCost.Text = ""
        txtOprCost.Text = ""
        txtInfras.Text = ""
        txtRevol.Text = ""
    Else
        MsgBox "All fileds are mandatory", vbCritical
    End If
    Exit Sub
errmsg:
    MsgBox "Oops!!! Something went wrong.", vbCritical
End Sub

Private Sub Form_Load()
    connection
End Sub

Private Sub txtInfras_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtOprCost_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtRevol_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtSeedMoney_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtTransCost_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub
