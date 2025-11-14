
Imports MySql.Data.MySqlClient

Public Class events
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dbconn()
        If Not IsPostBack Then
            BindRepeaterpastevents()
        End If
    End Sub

    Private Sub BindRepeaterpastevents()
        Try
            If acsconn.State = ConnectionState.Closed Then
                acsconn.Open()

            End If
            Dim cmd As New MySqlCommand("SELECT * FROM pastevents ORDER BY id ASC", acsconn)
            Dim da As New MySqlDataAdapter(cmd)
            Dim dt As New DataTable()
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                Response.Write("<script>console.log('" & dt.Rows.Count & " Events are not found to repeater.');</script>")
                pasteventrepeat.DataSource = dt
                pasteventrepeat.DataBind()
            Else
                Response.Write("<script>console.log('" & dt.Rows.Count & " Events are not found to database.');</script>")
            End If
        Catch ex As Exception
        Finally
            If acsconn.State = ConnectionState.Open Then
                acsconn.Close()

            End If
        End Try
    End Sub
End Class
