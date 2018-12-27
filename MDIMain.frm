VERSION 5.00
Begin VB.MDIForm MDIMain 
   BackColor       =   &H8000000C&
   Caption         =   "Muvattupuzha Block Federated Union, Valakom"
   ClientHeight    =   10710
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   20370
   LinkTopic       =   "MDIForm1"
   Picture         =   "MDIMain.frx":0000
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Align           =   3  'Align Left
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   10710
      Left            =   0
      Picture         =   "MDIMain.frx":C4DBF
      ScaleHeight     =   10710
      ScaleWidth      =   2865
      TabIndex        =   0
      Top             =   0
      Width           =   2870
      Begin VB.Image imgQuit 
         Height          =   1500
         Left            =   480
         Picture         =   "MDIMain.frx":E6F59
         Top             =   9000
         Width           =   1500
      End
      Begin VB.Image imgReport 
         Height          =   1755
         Left            =   480
         Picture         =   "MDIMain.frx":E8423
         Top             =   7044
         Width           =   1500
      End
      Begin VB.Image imgSearch 
         Height          =   1500
         Left            =   480
         Picture         =   "MDIMain.frx":E9530
         Top             =   5343
         Width           =   1500
      End
      Begin VB.Image imgSales 
         Height          =   1500
         Left            =   480
         Picture         =   "MDIMain.frx":EA836
         Top             =   3642
         Width           =   1500
      End
      Begin VB.Image imgPurchase 
         Height          =   1500
         Left            =   480
         Picture         =   "MDIMain.frx":EB859
         Top             =   1941
         Width           =   1500
      End
      Begin VB.Image imgRegistration 
         Height          =   1500
         Left            =   480
         Picture         =   "MDIMain.frx":EC588
         Top             =   240
         Width           =   1500
      End
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
         Index           =   1
         Shortcut        =   ^Q
      End
   End
   Begin VB.Menu mnuRegistration 
      Caption         =   "Registration"
      Begin VB.Menu mnuRegFarmer 
         Caption         =   "Farmer Registration"
      End
      Begin VB.Menu mnuRegMarchant 
         Caption         =   "Marchant Registration"
      End
      Begin VB.Menu mnuRegItem 
         Caption         =   "Item Registation"
      End
   End
   Begin VB.Menu mnuSales 
      Caption         =   "Sales"
   End
   Begin VB.Menu mnuPurchase 
      Caption         =   "Purchase"
   End
   Begin VB.Menu mnuSearch 
      Caption         =   "Search"
   End
   Begin VB.Menu mnuReport 
      Caption         =   "Report"
      Begin VB.Menu mnuItems 
         Caption         =   "Items"
      End
   End
   Begin VB.Menu mnuBalance 
      Caption         =   "Balance"
   End
   Begin VB.Menu mnuReceipt 
      Caption         =   "Receipt"
   End
   Begin VB.Menu mnuBank 
      Caption         =   "Bank"
      Begin VB.Menu mnuBank2 
         Caption         =   "Bank"
      End
      Begin VB.Menu mnuBankReport 
         Caption         =   "Bank Report"
      End
   End
   Begin VB.Menu mnuBLFO 
      Caption         =   "BLFO"
      Begin VB.Menu mnuBLFO2 
         Caption         =   "BLFO"
      End
      Begin VB.Menu mnuBLFOReport 
         Caption         =   "BLFO Report"
      End
   End
   Begin VB.Menu mnuAbout 
      Caption         =   "About Us"
   End
End
Attribute VB_Name = "MDIMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub imgPurchase_Click()
    frmPurchasing.Show
End Sub

Private Sub imgQuit_Click()
    End
End Sub

Private Sub imgRegistration_Click()
    frmRegistration.Show
End Sub

Private Sub imgSales_Click()
    frmSelling.Show
End Sub

Private Sub imgSearch_Click()
    frmSearch.Show
End Sub

Private Sub MDIForm_Load()
    connection
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
    End
End Sub

Private Sub mnuAbout_Click()
    frmAbout.Show
End Sub

Private Sub mnuBalance_Click()
    frmBalance.Show
End Sub

Private Sub mnuBank2_Click()
    frmBank.Show
End Sub

Private Sub mnuBankReport_Click()
    rptBank.Show
End Sub

Private Sub mnuBLFO2_Click()
    frmBLFO.Show
End Sub

Private Sub mnuBLFOReport_Click()
    rptBLFO.Show
End Sub

Private Sub mnuExit_Click(Index As Integer)
    End
End Sub

Private Sub mnuItems_Click()
    rptItem.Show
End Sub

Private Sub mnuPurchase_Click()
    frmPurchasing.Show
End Sub

Private Sub mnuReceipt_Click()
    Dim serial As Double, i As Integer
    
    reccheck
    rec.Open "Select * from tblSerial ", con, adOpenDynamic, adLockOptimistic
    serial = rec.Fields(0)
    For i = 1 To 4
        rptReceipt.Sections("Section4").Controls("lblSlNo" & i).Caption = serial + i
    Next i
    reccheck
    rec.Open "update tblSerial set SlNo = " & serial + i, con, adOpenDynamic, adLockOptimistic
    rptReceipt.Show
End Sub

Private Sub mnuRegFarmer_Click()
    frmRegistration.lblType.Caption = "Farmer"
    frmRegistration.Show
End Sub

Private Sub mnuRegItem_Click()
    frmItemRegistration.Show
End Sub

Private Sub mnuRegMarchant_Click()
    frmRegistration.lblType.Caption = "Marchant"
    frmRegistration.Show
End Sub

Private Sub mnuSales_Click()
    frmSelling.Show
End Sub

Private Sub mnuSearch_Click()
    frmSearch.Show
End Sub
