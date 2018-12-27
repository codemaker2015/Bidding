VERSION 5.00
Begin VB.Form frmRegistration 
   Caption         =   "Registration"
   ClientHeight    =   7425
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15825
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7425
   ScaleWidth      =   15825
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   5415
      Left            =   4320
      TabIndex        =   0
      Top             =   720
      Width           =   5655
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   3720
         TabIndex        =   6
         Top             =   4320
         Width           =   1215
      End
      Begin VB.TextBox txtCapital 
         Height          =   375
         Left            =   1680
         MaxLength       =   5
         TabIndex        =   4
         Text            =   "0"
         Top             =   3120
         Width           =   3495
      End
      Begin VB.TextBox txtName 
         Height          =   375
         Left            =   1680
         MaxLength       =   50
         TabIndex        =   1
         Top             =   960
         Width           =   3495
      End
      Begin VB.TextBox txtAddress 
         Height          =   1095
         Left            =   1680
         MaxLength       =   250
         MultiLine       =   -1  'True
         TabIndex        =   2
         Text            =   "frmRegistration.frx":0000
         Top             =   1440
         Width           =   3495
      End
      Begin VB.TextBox txtContactNo 
         Height          =   375
         Left            =   1680
         MaxLength       =   13
         TabIndex        =   3
         Text            =   "0"
         Top             =   2640
         Width           =   3495
      End
      Begin VB.CommandButton cmdSubmit 
         Caption         =   "SUBMIT"
         Height          =   375
         Left            =   2160
         TabIndex        =   5
         Top             =   4320
         Width           =   1215
      End
      Begin VB.Label lblName 
         BackStyle       =   0  'Transparent
         Caption         =   "Name:"
         Height          =   495
         Left            =   240
         TabIndex        =   13
         Top             =   975
         Width           =   1215
      End
      Begin VB.Label lblAddress 
         BackStyle       =   0  'Transparent
         Caption         =   "Address:"
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   1485
         Width           =   1215
      End
      Begin VB.Label lblContactNo 
         BackStyle       =   0  'Transparent
         Caption         =   "Contact No:"
         Height          =   495
         Left            =   240
         TabIndex        =   11
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label lblCapital 
         BackStyle       =   0  'Transparent
         Caption         =   "Captial:"
         Height          =   495
         Left            =   240
         TabIndex        =   10
         Top             =   3240
         Width           =   1215
      End
      Begin VB.Label type 
         BackStyle       =   0  'Transparent
         Caption         =   "Type:"
         Height          =   495
         Left            =   240
         TabIndex        =   9
         Top             =   3720
         Width           =   1215
      End
      Begin VB.Label lblType 
         BackStyle       =   0  'Transparent
         Height          =   375
         Left            =   1680
         TabIndex        =   8
         Top             =   3600
         Width           =   3495
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "User Registration"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   0
         TabIndex        =   7
         Top             =   360
         Width           =   5655
      End
   End
End
Attribute VB_Name = "frmRegistration"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdSubmit_Click()
    On Error GoTo errmsg
    If txtName.Text <> "" And txtAddress.Text <> "" And txtContactNo.Text <> "" And txtCapital.Text <> "" Then
        reccheck
        rec.Open "Select * from tblUser where name='" & txtName.Text & "' and contact='" & txtContactNo.Text & "'", con, adOpenDynamic, adLockOptimistic
        If rec.EOF = False Then
            MsgBox "User already exists with this name having Register No: " & rec.Fields(0), vbCritical
        Else
            reccheck
            rec.Open "insert into tblUser values('" & txtName.Text & "','" & txtAddress.Text & "','" & txtContactNo.Text & "','" & Val(txtCapital.Text) & "','" & lblType.Caption & "')", con, adOpenDynamic, adLockPessimistic
            reccheck
            rec.Open "select max(userId) from tblUser", con, adOpenDynamic, adLockPessimistic
            If rec.EOF = False Then
                MsgBox "Registration successfull" & vbCrLf & "Customer Name: " & txtName.Text & vbCrLf & "User ID: " & rec.Fields(0), vbInformation
                txtName.Text = ""
                txtAddress.Text = ""
                txtContactNo.Text = ""
                txtCapital.Text = ""
                If (DataEnvironment1.rsuserByID.State = 1) Then
                    DataEnvironment1.rsuserByID.Close
                Else
                    DataEnvironment1.userByID (rec.Fields(0))
                    rptCustomer.Show
                End If
            End If
        End If
    Else
        MsgBox "All fields are mandatory", vbCritical
    End If
    
    Exit Sub
errmsg:
    MsgBox "Oops!!! Something went wrong", vbCritical
End Sub

Private Sub Form_Load()
    lblType.Caption = "farmer"
    connection
End Sub

Private Sub txtAddress_KeyPress(KeyAscii As Integer)
    'ValAddress KeyAscii
End Sub

Private Sub txtCapital_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtContactNo_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub

Private Sub txtName_KeyPress(KeyAscii As Integer)
    ValName KeyAscii
End Sub
