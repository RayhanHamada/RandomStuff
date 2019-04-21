VERSION 5.00
Begin VB.Form frmLogin 
   BackColor       =   &H8000000A&
   Caption         =   "Login"
   ClientHeight    =   3750
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4545
   LinkTopic       =   "Form1"
   Picture         =   "frmLogin.frx":0000
   ScaleHeight     =   3750
   ScaleWidth      =   4545
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnReset 
      Caption         =   "Reset"
      Height          =   615
      Left            =   2400
      TabIndex        =   6
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton btnSubmit 
      Caption         =   "Submit"
      Height          =   615
      Left            =   960
      TabIndex        =   5
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox txtPassword 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1920
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   1920
      Width           =   1695
   End
   Begin VB.TextBox txtUsername 
      Height          =   285
      Left            =   1920
      TabIndex        =   3
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Label lblPassword 
      BackStyle       =   0  'Transparent
      Caption         =   "Password :"
      Height          =   255
      Left            =   960
      TabIndex        =   2
      Top             =   1920
      Width           =   975
   End
   Begin VB.Label lblUsername 
      BackStyle       =   0  'Transparent
      Caption         =   "Username :"
      Height          =   255
      Left            =   960
      TabIndex        =   1
      Top             =   1320
      Width           =   855
   End
   Begin VB.Label lblJudul 
      BackStyle       =   0  'Transparent
      Caption         =   "Log In"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1680
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnReset_Click()
    
    txtUsername.Text = ""
    txtPassword.Text = ""
    
End Sub

Private Sub btnSubmit_Click()
    
    If txtUsername.Text = "RayhanHamada" And txtPassword.Text = "admin" Then
        frmNext.Show
        frmLogin.Hide
    Else
        MsgBox "wayolo, coba inget-inget lagi password atau username nya"
    End If
    
End Sub

