VERSION 5.00
Begin VB.Form frmNext 
   BackColor       =   &H8000000A&
   Caption         =   "Form Utama"
   ClientHeight    =   7380
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8610
   LinkTopic       =   "Form1"
   Picture         =   "frmNext.frx":0000
   ScaleHeight     =   7380
   ScaleWidth      =   8610
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      BackColor       =   &H80000006&
      ForeColor       =   &H80000004&
      Height          =   5715
      ItemData        =   "frmNext.frx":80DC5
      Left            =   3960
      List            =   "frmNext.frx":80DC7
      TabIndex        =   8
      Top             =   600
      Width           =   4215
   End
   Begin VB.CommandButton btnReset 
      Caption         =   "Reset"
      Height          =   735
      Left            =   2160
      TabIndex        =   7
      Top             =   5760
      Width           =   1335
   End
   Begin VB.CommandButton btnProses 
      Caption         =   "Proses"
      Height          =   735
      Left            =   600
      TabIndex        =   6
      Top             =   5760
      Width           =   1335
   End
   Begin VB.ComboBox cmbAngka 
      BackColor       =   &H80000006&
      ForeColor       =   &H80000004&
      Height          =   315
      ItemData        =   "frmNext.frx":80DC9
      Left            =   1680
      List            =   "frmNext.frx":80DD6
      TabIndex        =   5
      Top             =   1920
      Width           =   1815
   End
   Begin VB.TextBox txtAkhir 
      BackColor       =   &H80000006&
      ForeColor       =   &H80000004&
      Height          =   285
      Left            =   1680
      TabIndex        =   3
      Top             =   1320
      Width           =   1815
   End
   Begin VB.TextBox txtAwal 
      BackColor       =   &H80000006&
      ForeColor       =   &H80000004&
      Height          =   285
      Left            =   1680
      TabIndex        =   2
      Top             =   600
      Width           =   1815
   End
   Begin VB.Label lblAngka 
      BackStyle       =   0  'Transparent
      Caption         =   "Angka"
      Height          =   375
      Left            =   600
      TabIndex        =   4
      Top             =   1920
      Width           =   615
   End
   Begin VB.Label lblAkhir 
      BackStyle       =   0  'Transparent
      Caption         =   "AKHIR"
      Height          =   255
      Left            =   600
      TabIndex        =   1
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label lblAwal 
      BackStyle       =   0  'Transparent
      Caption         =   "AWAL"
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   615
   End
End
Attribute VB_Name = "frmNext"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnProses_Click()

    a = txtAwal.Text
    b = txtAkhir.Text
    angka = cmbAngka.Text

    Select Case angka
    Case "Asli"
        For i = a To b
            List1.AddItem i
        Next i
    Case "Genap"
        For i = a To b
            If i Mod 2 = 0 Then
                List1.AddItem i
            End If
        Next i
    Case "Ganjil"
        For i = a To b
            If i Mod 2 = 1 Then
                List1.AddItem i
            End If
        Next i
    End Select
End Sub

Private Sub btnReset_Click()
    txtAwal.Text = ""
    txtAkhir.Text = ""
    List1.Clear
    cmbAngka.Text = ""
End Sub

