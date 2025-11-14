Imports System.Data ' ConnectionState
Imports MySql.Data.MySqlClient

Public Class contact
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dbconn()
    End Sub

    Private Sub msg_sent_Click(sender As Object, e As EventArgs) Handles msg_sent.Click
        Try
            If acsconn.State = ConnectionState.Closed Then
                acsconn.Open()
            End If


            Dim query As String = "INSERT INTO usermessage(username, usermail, usersubject, sentmessage, messagetime, is_read) " &
                                  "VALUES (@username, @usermail, @usersubject, @usermessage, NOW(), 0)"


            Using cmd As New MySqlCommand(query, acsconn)
                cmd.Parameters.AddWithValue("@username", username.Text)
                cmd.Parameters.AddWithValue("@usermail", usergmail.Text)
                cmd.Parameters.AddWithValue("@usersubject", usersubject.Text)
                cmd.Parameters.AddWithValue("@usermessage", msg.Text)

                Dim count As Integer = cmd.ExecuteNonQuery()

                If count > 0 Then
                    ' Optionally clear the form
                    username.Text = ""
                    usergmail.Text = ""
                    usersubject.Text = ""
                    msg.Text = ""

                    ' or agar query sahi se chal gi to yeh message show ho
                    Response.Write("<script>alert('✅Message sent successfully!');</script>")
                Else
                    ' agar query nahi chalti to ye message show hoga
                    Response.Write("<script>alert('⚠️ Message Not Send! (No rows affected)');</script>")
                End If


            End Using

        Catch ex As Exception
            Response.Write("<script>alert('Error: " & ex.Message & "');</script>")
        Finally
            If acsconn.State = ConnectionState.Open Then
                acsconn.Close()
            End If
        End Try
    End Sub

End Class
