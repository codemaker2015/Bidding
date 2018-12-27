VERSION 5.00
Begin VB.Form frmLogin 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Welcome to MBFU"
   ClientHeight    =   11520
   ClientLeft      =   6915
   ClientTop       =   7155
   ClientWidth     =   18270
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MousePointer    =   99  'Custom
   Picture         =   "frmLogin.frx":0000
   ScaleHeight     =   11520
   ScaleWidth      =   18270
   ShowInTaskbar   =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtUsername 
      Appearance      =   0  'Flat
      BackColor       =   &H80000011&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   8160
      MousePointer    =   3  'I-Beam
      TabIndex        =   1
      Top             =   6840
      Width           =   2655
   End
   Begin VB.TextBox passwordtxt 
      Appearance      =   0  'Flat
      BackColor       =   &H80000011&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   8160
      MousePointer    =   3  'I-Beam
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   7440
      Width           =   2655
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Karshika Vipanana Market"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   555
      Left            =   6555
      TabIndex        =   9
      Top             =   2040
      Width           =   6030
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H8000000B&
      BorderWidth     =   2
      Height          =   2655
      Left            =   6240
      Top             =   6240
      Width           =   5895
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Muvattupuzha Block Federated Samithi, Valakom"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   555
      Left            =   3840
      TabIndex        =   8
      Top             =   1440
      Width           =   11220
   End
   Begin VB.Shape Shape1 
      Height          =   375
      Index           =   2
      Left            =   11160
      Top             =   7440
      Width           =   375
   End
   Begin VB.Shape Shape1 
      Height          =   375
      Index           =   1
      Left            =   9960
      Top             =   8160
      Width           =   375
   End
   Begin VB.Shape Shape1 
      Height          =   375
      Index           =   0
      Left            =   8640
      Top             =   8160
      Width           =   375
   End
   Begin VB.Label lblHint 
      BackStyle       =   0  'Transparent
      ForeColor       =   &H8000000C&
      Height          =   375
      Left            =   11760
      TabIndex        =   7
      Top             =   7920
      Visible         =   0   'False
      Width           =   3255
   End
   Begin VB.Image imgHint 
      Enabled         =   0   'False
      Height          =   375
      Left            =   11160
      Picture         =   "frmLogin.frx":326CF
      Top             =   7440
      Width           =   375
   End
   Begin VB.Image errorimg 
      Height          =   480
      Left            =   6720
      Picture         =   "frmLogin.frx":32C52
      Top             =   9120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image fieldblank 
      Height          =   480
      Left            =   6720
      Top             =   9120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Label fieldlbl 
      BackStyle       =   0  'Transparent
      Caption         =   "Fields can not be blank."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   7800
      TabIndex        =   6
      Top             =   9360
      Visible         =   0   'False
      Width           =   4095
   End
   Begin VB.Label errorlbl 
      BackStyle       =   0  'Transparent
      Caption         =   "The username or password is incorrect. Please try again."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   7800
      TabIndex        =   5
      Top             =   9360
      Visible         =   0   'False
      Width           =   5055
   End
   Begin VB.Image imgCancel 
      Height          =   375
      Left            =   9960
      MousePointer    =   99  'Custom
      Picture         =   "frmLogin.frx":3351C
      ToolTipText     =   "Close"
      Top             =   8160
      Width           =   375
   End
   Begin VB.Image imgOK 
      Height          =   375
      Left            =   8640
      MousePointer    =   99  'Custom
      Picture         =   "frmLogin.frx":339FC
      ToolTipText     =   "Login"
      Top             =   8160
      Width           =   375
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "For use  by Authorized Personnel Only....                  "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   315
      Index           =   1
      Left            =   7320
      TabIndex        =   4
      Top             =   5880
      Width           =   3675
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Password :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   495
      Left            =   6720
      TabIndex        =   3
      Top             =   7480
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "User Name :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   495
      Index           =   0
      Left            =   6720
      TabIndex        =   0
      Top             =   6860
      Width           =   1575
   End
End
Attribute VB_Name = "frmlogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public LoginSucceeded As Boolean

Private Sub Form_Load()
    connection
End Sub

Private Sub imgHint_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
   reccheck
   rec.Open ("select HINT from LOGINTABLE where username = '" & Trim(txtUsername.Text) & "'"), con, adOpenDynamic, adLockOptimistic
   If rec.EOF = False Then
      lblHint.Caption = rec.Fields(0)
      lblHint.Visible = True
   End If
End Sub

Private Sub imgHint_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
   lblHint.Visible = False
End Sub

Private Sub passwordtxt_Change()
  If Not passwordtxt.Text = "" Then
     fieldlbl.Visible = False
     fieldblank.Visible = False
  End If
  If passwordtxt.Text = "" Then
     fieldlbl.Visible = False
     fieldblank.Visible = False
     errorlbl.Visible = False
     errorimg.Visible = False
  End If
End Sub

Private Sub txtUsername_Change()
  If txtUsername.Text = "" Then
     passwordtxt.Text = ""
     errorlbl.Visible = False
     errorimg.Visible = False
     fieldlbl.Visible = False
     fieldblank.Visible = False
  End If
  If Not txtUsername.Text = "" And passwordtxt.Text = "" Then
     fieldlbl.Visible = False
     fieldblank.Visible = False
  End If
End Sub

Private Sub imgCancel_Click()
  LoginSucceeded = False
  Unload Me
End Sub

Private Sub imgOK_Click()
  If txtUsername.Text = "" Then
     txtUsername.SetFocus
     fieldlbl.Visible = True
     fieldblank.Visible = True
     Exit Sub
  End If

  If passwordtxt.Text = "" Then
     txtUsername.SetFocus
     fieldlbl.Visible = True
     fieldblank.Visible = True
     Exit Sub
  End If
  
  ''''Login code''''''''''
  reccheck
  rec.Open "Select username from tblLogin where username='" & txtUsername.Text & "' and password='" & passwordtxt.Text & "'", con, adOpenDynamic, adLockOptimistic
  If rec.EOF = False Then
      MDIMain.Show
      LoginSucceeded = True
      Me.Hide
  Else
      errorlbl.Visible = True
      errorimg.Visible = True
      fieldlbl.Visible = False
      fieldblank.Visible = False
      errorlbl.Refresh
      errorimg.Refresh
      passwordtxt.SetFocus
  End If
End Sub
