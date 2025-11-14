Imports System.Data
Imports MySql.Data.MySqlClient
Imports System.Web.UI

Public Class team
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dbconn()
        If Not IsPostBack Then
            LoadTeamMembers()
        End If
    End Sub

    Private Sub LoadTeamMembers()
        Try

            If acsconn Is Nothing Then
                Response.Write("<script>console.error('ERROR: Database connection object (acsconn) is NULL.');</script>")
                Exit Sub
            End If

            If acsconn.State = ConnectionState.Closed Then
                acsconn.Open()
            End If


            Dim cmd As New MySqlCommand("SELECT * FROM team_members ORDER BY id ASC", acsconn)
            Dim da As New MySqlDataAdapter(cmd)
            Dim dt As New DataTable()
            da.Fill(dt)

            If dt.Rows.Count > 0 Then
                Response.Write("<script>console.log('" & dt.Rows.Count & " team members found and bound to Repeater.');</script>")
                rptTeamMembers.DataSource = dt
                rptTeamMembers.DataBind()
            Else
                Response.Write("<script>console.log('No team members found in database.');</script>")
            End If

        Catch ex As Exception
            Response.Write("<script>console.error('Error loading team members: " & ex.Message.Replace("'", "\'") & "');</script>")
        Finally
            If acsconn IsNot Nothing AndAlso acsconn.State = ConnectionState.Open Then
                acsconn.Close()
            End If
        End Try
    End Sub

End Class
