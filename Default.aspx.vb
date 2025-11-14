Imports MySql.Data.MySqlClient

Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dbconn()

        If Not IsPostBack Then
            loadslider()
        End If
    End Sub


    Private Sub loadslider()
        Try
            If acsconn.State = ConnectionState.Closed Then
                acsconn.Open()

            End If
            Dim dt As New DataTable()
            Dim cmd As New MySqlCommand("SELECT events_res_pic FROM event_registration_pic", acsconn)
            Dim da As New MySqlDataAdapter(cmd)
            da.Fill(dt)
            carouselRepeater.DataSource = dt
            carouselRepeater.DataBind()

        Catch ex As Exception
            Response.Write("<script>console.error('Error loading What To Do data: " & ex.Message & "');</script>")
        Finally
            acsconn.Close()

        End Try
    End Sub


End Class
