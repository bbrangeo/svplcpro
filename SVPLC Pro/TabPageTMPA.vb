﻿Imports unvell.ReoGrid
Public Class TabPageTMPA
    Inherits TabPage

    'Private WithEvents DTGrid As New DTGTMPA
    Private WithEvents DTGrid As New ReoGridControl
    Private WithEvents SplitC As New SplitContainer
    Private WithEvents SplitList As New SplitContainer
    Private WithEvents GBSerie As New GroupBox
    Private WithEvents GBTache As New GroupBox
    Private WithEvents ListViewSeries As New ListView
    Private WithEvents ListViewTaches As New ListView

    Public Sub New()

        With Me.ListViewTaches
            .MultiSelect = False
            .FullRowSelect = True
            .Name = "ListViewTaches"
            .View = View.Details
            .Columns.Add("Nom")
            .Columns.Add("Du")
            .Columns.Add("Au")
            .Columns.Add("Action")
            .Columns.Add("Commentaires")
            .Dock = DockStyle.Fill
        End With

        With Me.ListViewSeries
            .MultiSelect = False
            .FullRowSelect = True
            .Name = "ListViewSerie"
            .View = View.Details
            .FullRowSelect = True
            .Columns.Add("Nom")
            .Columns.Add("Plante")
            .Columns.Add("Commentaires")
            AddHandler .Click, AddressOf ListViewParcelle_Click
            AddHandler .DoubleClick, AddressOf ListViewParcelle_DoubleClick
            AddHandler .KeyDown, AddressOf ListViewParcelle_KeyDown
            .Dock = DockStyle.Fill
        End With

        With Me.GBSerie
            .Text = "Parcelles"
            .Dock = DockStyle.Fill
            .Controls.Add(Me.ListViewSeries)
        End With

        With Me.GBTache
            .Name = "GBTache"
            .Text = "Tâches"
            .Dock = DockStyle.Fill
            .Controls.Add(Me.ListViewTaches)
        End With

        With Me.SplitList
            .Name = "SplitList"
            .Dock = DockStyle.Fill
            .Orientation = Orientation.Vertical
            .Panel1.Controls.Add(Me.GBSerie)
            .Panel2.Controls.Add(Me.GBTache)
            .SplitterDistance = 100
        End With

        With Me.SplitC
            .Name = "SplitC"
            .Margin = New Padding(0)
            .Dock = DockStyle.Fill
            .Orientation = Orientation.Horizontal
            .SplitterDistance = 400
            .Panel1.Controls.Add(Me.DTGrid)
            .Panel2.Controls.Add(Me.SplitList)
        End With

        With DTGrid
            .Name = "DTGrid"
            .SetSettings(ReoGridSettings.View_ShowHeaders, False)
            .Dock = DockStyle.Fill
        End With

        Me.Padding = New Padding(0, 2, 0, 0)
        Me.Controls.Add(Me.SplitC)

    End Sub



End Class

