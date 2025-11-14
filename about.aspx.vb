Imports MySql.Data.MySqlClient


Public Class about
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dbconn()
        If Not IsPostBack Then
            BindRepeater()
        End If
    End Sub

    Private Sub BindRepeater()
        Try
            If acsconn.State = ConnectionState.Closed Then
                acsconn.Open()

            End If
            Dim cmd As New MySqlCommand("SELECT * FROM whattodo ORDER BY id ASC", acsconn)
            Dim da As New MySqlDataAdapter(cmd)
            Dim dt As New DataTable()
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                Response.Write("<script>console.log('" & dt.Rows.Count & " Events are not found to repeater.');</script>")
                whattodo.DataSource = dt
                whattodo.DataBind()
            Else
                Response.Write("<script>console.log('" & dt.Rows.Count & " Events are not found to database.');</script>")
            End If
        Catch ex As Exception
            Response.Write("<script>console.error('Add Member Error: " & ex.Message & "');</script>")
        Finally
            If acsconn.State = ConnectionState.Open Then
                acsconn.Close()

            End If
        End Try
    End Sub
End Class
