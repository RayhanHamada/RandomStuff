VERSION 5.00
Begin VB.Form frmUtama 
   Caption         =   "Aplikasi Penghitung Luas Belah Ketupat"
   ClientHeight    =   5010
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8805
   LinkTopic       =   "Form1"
   ScaleHeight     =   5010
   ScaleWidth      =   8805
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnMasuk 
      Caption         =   "Klik Saya Untuk Masuk Ke Window Perhitungan"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   1200
      TabIndex        =   0
      Top             =   2400
      Width           =   5655
   End
End
Attribute VB_Name = "frmUtama"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnMasuk_Click()
    frmHitung.Visible = True
    frmUtama.Visible = False
End Sub
