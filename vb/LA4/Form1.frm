VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7395
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14865
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   7395
   ScaleWidth      =   14865
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   1200
      TabIndex        =   13
      Top             =   3240
      Width           =   2175
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Hapus"
      Height          =   975
      Left            =   13560
      TabIndex        =   11
      Top             =   4440
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Perbarui"
      Height          =   975
      Left            =   13560
      TabIndex        =   10
      Top             =   3000
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Tambah"
      Height          =   975
      Left            =   13560
      TabIndex        =   9
      Top             =   1680
      Width           =   1215
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Form1.frx":80DC5
      Height          =   4935
      Left            =   3600
      TabIndex        =   8
      Top             =   840
      Width           =   9855
      _ExtentX        =   17383
      _ExtentY        =   8705
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   14345
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   14345
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   615
      Left            =   4440
      Top             =   6600
      Width           =   6135
      _ExtentX        =   10821
      _ExtentY        =   1085
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\RayhanHamada\Documents\mahasiswa.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\RayhanHamada\Documents\mahasiswa.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "mahasiswa"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   1200
      TabIndex        =   7
      Top             =   2640
      Width           =   2175
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1200
      TabIndex        =   6
      Top             =   2040
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1200
      TabIndex        =   5
      Top             =   1440
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1200
      TabIndex        =   4
      Top             =   840
      Width           =   2175
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Daftar Mahasiswa 2019"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5760
      TabIndex        =   14
      Top             =   120
      Width           =   3375
   End
   Begin VB.Label Label5 
      Caption         =   "Fakultas"
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   3240
      Width           =   855
   End
   Begin VB.Label Label4 
      Caption         =   "Jurusan"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2640
      Width           =   855
   End
   Begin VB.Label Label3 
      Caption         =   "Kelas"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   2040
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "NPM"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   1440
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Nama"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   840
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Adodc1.Recordset.AddNew
Adodc1.Recordset.Fields("nama_mahasiswa") = Text1.Text
Adodc1.Recordset.Fields("npm") = Text2.Text
Adodc1.Recordset.Fields("kelas") = Text3.Text
Adodc1.Recordset.Fields("jurusan") = Text4.Text
Adodc1.Recordset.Fields("fakultas") = Text5.Text
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
Text5.Text = ""
End Sub

Private Sub Command2_Click()
Adodc1.Recordset.Update
Adodc1.Recordset.Fields("nama_mahasiswa") = Text1.Text
Adodc1.Recordset.Fields("npm") = Text2.Text
Adodc1.Recordset.Fields("kelas") = Text3.Text
Adodc1.Recordset.Fields("jurusan") = Text4.Text
Adodc1.Recordset.Fields("fakultas") = Text5.Text
End Sub

Private Sub Command3_Click()
Adodc1.Recordset.Delete
End Sub

