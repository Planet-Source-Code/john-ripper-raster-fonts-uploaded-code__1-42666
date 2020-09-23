VERSION 5.00
Begin VB.Form frmBack 
   Caption         =   "Form1"
   ClientHeight    =   2370
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7290
   LinkTopic       =   "Form1"
   ScaleHeight     =   158
   ScaleMode       =   3  'Píxel
   ScaleWidth      =   486
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox PicASCHorizontalWork 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      Height          =   615
      Left            =   0
      ScaleHeight     =   41
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   469
      TabIndex        =   1
      Top             =   840
      Width           =   7035
   End
   Begin VB.PictureBox PicASCHorizontalClean 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      Height          =   615
      Left            =   0
      Picture         =   "frmBack.frx":0000
      ScaleHeight     =   41
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   469
      TabIndex        =   0
      Top             =   0
      Width           =   7035
   End
End
Attribute VB_Name = "frmBack"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

