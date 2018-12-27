VERSION 5.00
Begin VB.Form frmItemRegistration 
   Caption         =   "Item Registration"
   ClientHeight    =   7230
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   18495
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7230
   ScaleWidth      =   18495
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   3615
      Left            =   6000
      TabIndex        =   0
      Top             =   1560
      Width           =   5055
      Begin VB.ComboBox comboUnit 
         Height          =   315
         ItemData        =   "frmItemRegistration.frx":0000
         Left            =   1440
         List            =   "frmItemRegistration.frx":0013
         TabIndex        =   4
         Text            =   "--Unit--"
         Top             =   2280
         Width           =   3255
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   3120
         TabIndex        =   6
         Top             =   2880
         Width           =   1455
      End
      Begin VB.CommandButton cmdSubmit 
         Caption         =   "Submit"
         Height          =   375
         Left            =   1560
         TabIndex        =   5
         Top             =   2880
         Width           =   1335
      End
      Begin VB.TextBox txtName 
         Height          =   375
         Left            =   1440
         MaxLength       =   40
         TabIndex        =   1
         Top             =   360
         Width           =   3255
      End
      Begin VB.TextBox txtDesc 
         Height          =   855
         Left            =   1440
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   2
         Text            =   "frmItemRegistration.frx":0030
         Top             =   840
         Width           =   3255
      End
      Begin VB.TextBox txtPrice 
         Height          =   375
         Left            =   1440
         MaxLength       =   8
         TabIndex        =   3
         Text            =   "0"
         Top             =   1800
         Width           =   3255
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Unit: "
         Height          =   375
         Left            =   240
         TabIndex        =   10
         Top             =   2385
         Width           =   975
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Name:"
         Height          =   495
         Left            =   240
         TabIndex        =   9
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Description:"
         Height          =   375
         Left            =   240
         TabIndex        =   8
         Top             =   945
         Width           =   960
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Price: "
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   1905
         Width           =   975
      End
   End
End
Attribute VB_Name = "frmItemRegistration"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdSubmit_Click()
    On Error GoTo errmsg:
    If txtName <> "" And txtDesc.Text <> "" And txtPrice.Text <> "" And CheckCombo(comboUnit, "Unit") Then
        reccheck
        rec.Open "Select * from tblItem where name='" & txtName.Text & "'", con, adOpenDynamic, adLockOptimistic
        If rec.EOF = False Then
            MsgBox "Item is already registered with Item ID: " & rec.Fields(0), vbCritical
        Else
            reccheck
            rec.Open "insert into tblItem values('" & txtName.Text & "','" & txtDesc.Text & "','" & txtPrice.Text & "','" & comboUnit.Text & "','" & "1" & " ')", con, adOpenDynamic, adLockPessimistic
            reccheck
            rec.Open "Select max(itemId) from tblItem", con, adOpenDynamic, adLockOptimistic
            MsgBox "Item Added Successfully with Item ID: " & rec.Fields(0), vbInformation
            
            txtName.Text = ""
            txtDesc.Text = ""
            txtPrice.Text = ""
            comboUnit.Text = "--Unit--"
        End If
    Else
        MsgBox "All fields are mandatory", vbCritical
    End If
Exit Sub
errmsg:
    MsgBox "Oops!!! Something went wrong", vbCritical
End Sub

Private Sub Form_Load()
    connection
End Sub

Private Sub txtDesc_KeyPress(KeyAscii As Integer)
    ValAddress KeyAscii
End Sub

Private Sub txtName_KeyPress(KeyAscii As Integer)
    ValName KeyAscii
End Sub

Private Sub txtPrice_KeyPress(KeyAscii As Integer)
    ValPhone KeyAscii
End Sub
