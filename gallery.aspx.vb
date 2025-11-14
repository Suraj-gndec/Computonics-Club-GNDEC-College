Imports System.Data
Imports MySql.Data.MySqlClient
Imports System.Web.UI

Public Class gallery
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dbconn()
        If Not IsPostBack Then
            LoadGalleryPhotos()
        End If
    End Sub
    Private Sub LoadGalleryPhotos()
        Try

            If acsconn Is Nothing Then

                Response.Write("<script>console.error('ERROR: Database connection object (acsconn) is NULL on gallery page.');</script>")
                Exit Sub
            End If

            If acsconn.State = ConnectionState.Closed Then
                acsconn.Open()
            End If


            Dim cmd As New MySqlCommand("SELECT id, caption, filename FROM gallery ORDER BY id ASC", acsconn)
            Dim da As New MySqlDataAdapter(cmd)
            Dim dt As New DataTable()
            da.Fill(dt)


            If dt.Rows.Count > 0 Then
                rptGallery.DataSource = dt
                rptGallery.DataBind()
                Response.Write("<script>console.log('" & dt.Rows.Count & " photos loaded for gallery.');</script>")
            Else
                Response.Write("<script>console.log('No photos found in the gallery.');</script>")

            End If

        Catch ex As Exception

            Response.Write("<script>console.error('An error occurred while loading gallery photos: " & ex.Message.Replace("'", "\'") & "');</script>")
        Finally
            If acsconn IsNot Nothing AndAlso acsconn.State = ConnectionState.Open Then
                acsconn.Close()
            End If
        End Try
    End Sub
End Class
