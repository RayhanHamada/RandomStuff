VERSION 5.00
Begin VB.Form frmHitung 
   Caption         =   "Aplikasi Penghitung Luas Belah Ketupat :v"
   ClientHeight    =   6210
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8955
   LinkTopic       =   "Form2"
   ScaleHeight     =   6210
   ScaleWidth      =   8955
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnBack 
      Caption         =   "Kembali Ke Layar Utama"
      Height          =   855
      Left            =   6960
      TabIndex        =   8
      Top             =   120
      Width           =   1935
   End
   Begin VB.CommandButton btnClear 
      Caption         =   "Reset"
      Height          =   975
      Left            =   2400
      TabIndex        =   7
      Top             =   3360
      Width           =   1335
   End
   Begin VB.CommandButton btnhitung 
      Caption         =   "Hitung"
      Height          =   975
      Left            =   720
      TabIndex        =   6
      Top             =   3360
      Width           =   1335
   End
   Begin VB.TextBox txtd2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   3480
      TabIndex        =   3
      Top             =   960
      Width           =   2295
   End
   Begin VB.TextBox txtd1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   3480
      TabIndex        =   2
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label lblHasil 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3600
      TabIndex        =   5
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Luas Belah Ketupat : "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   4
      Top             =   1800
      Width           =   2295
   End
   Begin VB.Label Label3 
      Caption         =   "Masukkan Nilai Diagonal 2 : "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   1080
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "Masukkan Nilai Diagonal 1 : "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   3015
   End
   Begin VB.Image Image1 
      Height          =   6210
      Left            =   0
      Picture         =   "frmHitung.frx":0000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   8925
   End
End
Attribute VB_Name = "frmHitung"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnBack_Click()
frmUtama.Visible = True
frmHitung.Visible = False
End Sub

Private Sub btnClear_Click()
txtd1.Text = ""
txtd2.Text = ""
lblHasil.Caption = ""
End Sub

Private Sub btnhitung_Click()
    lblHasil.Caption = Val(txtd1.Text) * Val(txtd2.Text) / 2
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)

    End

End Sub

