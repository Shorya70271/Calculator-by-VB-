VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7530
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7530
   ScaleWidth      =   6000
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   22
      Text            =   "Arithmetic Calculator "
      Top             =   240
      Width           =   3975
   End
   Begin VB.CommandButton C19 
      Caption         =   "+"
      Height          =   735
      Left            =   4200
      TabIndex        =   21
      Top             =   5760
      Width           =   1215
   End
   Begin VB.CommandButton C18 
      Caption         =   "_"
      Height          =   855
      Left            =   4200
      TabIndex        =   20
      Top             =   4800
      Width           =   1215
   End
   Begin VB.CommandButton C17 
      Caption         =   "%"
      Height          =   855
      Left            =   4200
      TabIndex        =   19
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton C16 
      Caption         =   "/"
      Height          =   855
      Left            =   4200
      TabIndex        =   18
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton C15 
      Caption         =   "="
      Height          =   855
      Left            =   4200
      TabIndex        =   17
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton C14 
      Caption         =   "*"
      Height          =   855
      Left            =   2760
      TabIndex        =   16
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton C13 
      Caption         =   "CLEAR"
      Height          =   855
      Left            =   360
      TabIndex        =   15
      Top             =   1920
      Width           =   2295
   End
   Begin VB.CommandButton C12 
      Caption         =   "9"
      Height          =   855
      Left            =   2760
      TabIndex        =   14
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton C11 
      Caption         =   "8"
      Height          =   855
      Left            =   1560
      TabIndex        =   13
      Top             =   2880
      Width           =   1095
   End
   Begin VB.CommandButton C10 
      Caption         =   "7"
      Height          =   855
      Left            =   360
      TabIndex        =   12
      Top             =   2880
      Width           =   1095
   End
   Begin VB.CommandButton C9 
      Caption         =   "6"
      Height          =   855
      Left            =   2760
      TabIndex        =   11
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton C8 
      Caption         =   "5"
      Height          =   855
      Left            =   1560
      TabIndex        =   10
      Top             =   3840
      Width           =   1095
   End
   Begin VB.CommandButton C7 
      Caption         =   "4"
      Height          =   855
      Left            =   360
      TabIndex        =   9
      Top             =   3840
      Width           =   1095
   End
   Begin VB.CommandButton C6 
      Caption         =   "3"
      Height          =   855
      Left            =   2760
      TabIndex        =   8
      Top             =   4800
      Width           =   1215
   End
   Begin VB.CommandButton C5 
      Caption         =   "2"
      Height          =   855
      Left            =   1560
      TabIndex        =   7
      Top             =   4800
      Width           =   1095
   End
   Begin VB.CommandButton C4 
      Caption         =   "1"
      Height          =   855
      Left            =   360
      TabIndex        =   6
      Top             =   4800
      Width           =   1095
   End
   Begin VB.CommandButton C3 
      Caption         =   "."
      Height          =   735
      Left            =   2760
      TabIndex        =   5
      Top             =   5760
      Width           =   1215
   End
   Begin VB.CommandButton C2 
      Caption         =   "00"
      Height          =   735
      Left            =   1560
      TabIndex        =   4
      Top             =   5760
      Width           =   1095
   End
   Begin VB.CommandButton C1 
      Caption         =   "0"
      Height          =   735
      Left            =   360
      TabIndex        =   3
      Top             =   5760
      Width           =   1095
   End
   Begin VB.TextBox T1 
      Alignment       =   1  'Right Justify
      Height          =   735
      Left            =   360
      TabIndex        =   2
      Top             =   840
      Width           =   5055
   End
   Begin VB.Label L2 
      BackColor       =   &H000000FF&
      Height          =   6615
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   5655
   End
   Begin VB.Label L1 
      BackColor       =   &H8000000D&
      Height          =   7575
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim A As Integer
Dim b As Integer
Dim OP As String


Private Sub C1_Click()
T1.Text = T1.Text & 0
End Sub

Private Sub C10_Click()
T1.Text = T1.Text & 7
End Sub

Private Sub C11_Click()
T1.Text = T1.Text & 8
End Sub

Private Sub C12_Click()
T1.Text = T1.Text & 9
End Sub

Private Sub C13_Click()
T1.Text = ""
End Sub

Private Sub C14_Click()
A = T1.Text
OP = "*"
T1.Text = ""
End Sub

Private Sub C15_Click()
b = T1.Text
If OP = "+" Then
T1.Text = A + b
Else
b = T1.Text
If OP = "-" Then
T1.Text = A - b
Else
b = T1.Text
If OP = "%" Then
T1.Text = A Mod b
Else
b = T1.Text
If OP = "/" Then
T1.Text = A / b
Else
b = T1.Text
If OP = "*" Then
T1.Text = A * b
Else
End If
End If
End If
End If
End If
End Sub

Private Sub C16_Click()
A = T1.Text
OP = "/"
T1.Text = ""
End Sub

Private Sub C17_Click()
A = T1.Text
OP = "%"
T1.Text = ""
End Sub

Private Sub C18_Click()
A = T1.Text
OP = "-"
T1.Text = ""
End Sub

Private Sub C19_Click()
A = T1.Text
OP = "+"
T1.Text = ""
End Sub

Private Sub C2_Click()
T1.Text = T1.Text & "00"
End Sub

Private Sub C3_Click()
T1.Text = T1.Text & "."
End Sub

Private Sub C4_Click()
T1.Text = T1.Text & 1
End Sub

Private Sub C5_Click()
T1.Text = T1.Text & 2
End Sub

Private Sub C6_Click()
T1.Text = T1.Text & 3
End Sub

Private Sub C7_Click()
T1.Text = T1.Text & 4
End Sub

Private Sub C8_Click()
T1.Text = T1.Text & 5
End Sub

Private Sub C9_Click()
T1.Text = T1.Text & 6
End Sub

Private Sub L1_Click()
L1.BackColor = vbBlue
End Sub

Private Sub Text1_Change()
Text1.TextBold = "true"
End Sub
