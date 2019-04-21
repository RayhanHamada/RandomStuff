VERSION 5.00
Begin VB.Form frmUtama 
   Caption         =   "Aplikasi Penghitung Luas Belah Ketupat :v"
   ClientHeight    =   5325
   ClientLeft      =   7665
   ClientTop       =   4050
   ClientWidth     =   7305
   LinkTopic       =   "Form1"
   ScaleHeight     =   5325
   ScaleWidth      =   7305
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "plz boop my snoot, fren"
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   3720
      TabIndex        =   3
      Top             =   3840
      Width           =   1635
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   660
      Left            =   960
      TabIndex        =   2
      Top             =   2280
      Width           =   1020
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Pencet Hidung nya untuk ke form perhitungan"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   300
      Left            =   0
      TabIndex        =   1
      Top             =   5040
      Width           =   7260
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Selamat Datang Di Aplikasi Penghitung Luas Belah Ketupat"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   6330
   End
   Begin VB.Image Image1 
      Height          =   5250
      Left            =   0
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7245
   End
End
Attribute VB_Name = "frmUtama"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

End Sub

Private Sub Form_Terminate()
frmHitung.Ter
End Sub

Private Sub Label3_Click()
    frmHitung.Visible = True
    frmUtama.Visible = False
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)

    End

End Sub
