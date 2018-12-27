VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frmItems 
   Caption         =   "Item Info"
   ClientHeight    =   3450
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13260
   LinkTopic       =   "Form1"
   ScaleHeight     =   3450
   ScaleWidth      =   13260
   StartUpPosition =   2  'CenterScreen
   Begin MSFlexGridLib.MSFlexGrid grid1 
      Height          =   2415
      Left            =   240
      TabIndex        =   2
      Top             =   240
      Width           =   12735
      _ExtentX        =   22463
      _ExtentY        =   4260
      _Version        =   393216
      Cols            =   10
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   11400
      TabIndex        =   1
      Top             =   2760
      Width           =   1335
   End
   Begin VB.CommandButton cmdSubmit 
      Caption         =   "Submit"
      Height          =   375
      Left            =   9960
      TabIndex        =   0
      Top             =   2760
      Width           =   1335
   End
End
Attribute VB_Name = "frmItems"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
   Unload Me
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdSubmit_Click()
    Dim price As Double
    With frmPurchasing
        .lblBuyerId.Caption = grid1.TextMatrix(grid1.Row, 0)
        .lblBuyerName.Caption = grid1.TextMatrix(grid1.Row, 1)
        .txtSerial.Text = grid1.TextMatrix(grid1.Row, 3)
        .txtCount.Text = grid1.TextMatrix(grid1.Row, 6)
        .txtRate.Text = grid1.TextMatrix(grid1.Row, 7)
        .txtQuantity.Text = grid1.TextMatrix(grid1.Row, 8)
        price = grid1.TextMatrix(grid1.Row, 9)
        .txtUnionFee.Text = Round(price * 5 / 100, 0)
        .txtTA.Text = grid1.TextMatrix(grid1.Row, 8)
    End With
    Unload Me
End Sub

Private Sub Form_Load()
    connection
End Sub
