VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Basic Raster Effect."
   ClientHeight    =   1635
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7305
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   109
   ScaleMode       =   3  'Píxel
   ScaleWidth      =   487
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton CmdUnload 
      Caption         =   "QUIT"
      Height          =   315
      Left            =   6600
      TabIndex        =   4
      Top             =   300
      Width           =   615
   End
   Begin VB.CommandButton cmdScroll 
      Caption         =   "Scroll"
      Height          =   315
      Left            =   6000
      TabIndex        =   3
      Top             =   300
      Width           =   615
   End
   Begin VB.PictureBox PicASCHorizontal 
      BorderStyle     =   0  'None
      Height          =   615
      Left            =   120
      ScaleHeight     =   41
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   469
      TabIndex        =   2
      Top             =   840
      Width           =   7035
   End
   Begin VB.TextBox txtBlit 
      Height          =   315
      Left            =   1740
      TabIndex        =   1
      Text            =   "This is a very simple routine to display raster fonts. very useful to make your title  games. Enjoy..."
      Top             =   300
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "Enter Text Here:"
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1275
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub cmdScroll_Click()

Dim IncSingle As Single
Dim FinishScroll As Boolean
    
    cmdScroll.Enabled = False
    XaxisHor = frmMain.PicASCHorizontal.Width
    Me.Caption = Me.Caption & " Scrolling..."
    Do Until FinishScroll = True
        CleanBlitAsc
        SDC = frmSprites.PicSPRascii.hDC
        DDC = frmBack.PicASCHorizontalWork.hDC

        WriteMyAscii SDC, DDC, frmBack.PicASCHorizontalWork.Width, txtBlit.Text, XaxisHor, 0, FinishScroll, , True
        IncSingle = IncSingle + 0.1 'increase this value for more speed
        If IncSingle >= 1 Then
            XaxisHor = XaxisHor - 1
            IncSingle = 0
        End If
        BlitAsc
        DoEvents
    Loop
    cmdScroll.Enabled = True
    Me.Caption = "Basic Raster Effect."
End Sub

Private Sub CmdUnload_Click()
   End
End Sub

Private Sub Form_Load()
    InitializeAscii
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set frmBack = Nothing
    Set frmSprites = Nothing
    Set frmMain = Nothing
End Sub

Private Sub txtBlit_Change()
    If Trim(txtBlit.Text) <> "" Then
        cmdScroll.Enabled = True
    Else
        cmdScroll.Enabled = False
    End If
End Sub
