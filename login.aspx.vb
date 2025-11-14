Imports MySql.Data.MySqlClient

Public Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dbconn()

    End Sub

    Private Sub btn_login_Click(sender As Object, e As EventArgs) Handles btn_login.Click
        Try
            If acsconn.State = ConnectionState.Closed Then
                acsconn.Open()

            End If
            Dim cmd As New MySqlCommand("Select Count(*) From adminlogin Where adminid=@id AND adminpass=@pass", acsconn)
            cmd.Parameters.Clear()
            cmd.Parameters.AddWithValue("@id", txtmemberid.Text.Trim())
            cmd.Parameters.AddWithValue("@pass", txtpass.Text.Trim())
            Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())
            If count > 0 Then
                Session("AdminId") = txtmemberid.Text.Trim()
                Session("adminpassword") = txtpass.Text.Trim()
                Response.Redirect("~/AdminPanel/Default.aspx")

            Else
                Response.Write("Invalid ID or Password")
            End If
        Catch ex As Exception
            Response.Write("Error: " & ex.Message)
        Finally
            acsconn.Close()

        End Try

    End Sub
End Class
