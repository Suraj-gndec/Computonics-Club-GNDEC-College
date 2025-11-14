Imports System.IO
Imports System.Drawing
Imports System.Data
Imports MySql.Data.MySqlClient

Public Class certificate
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            dbconn()
        End If
    End Sub

    Private Sub btndownload_Click(sender As Object, e As EventArgs) Handles btndownload.Click




        ' Validation
        If sttxtName.Text.Trim() = "" Or sttxtClass.Text.Trim() = "" Or sttxtRoll.Text.Trim() = "" Or sttxtDate.Text = "" Then
            'lblMessage.Text = "⚠️ Please fill all fields!"
            Response.Write("<script>alert('⚠️ Please fill all fields!');</script>")
            Exit Sub
        End If


        Dim rollNo As String = sttxtRoll.Text.Trim()
        Dim certificateDate As String = sttxtDate.Text.Trim()

        Try
            If acsconn.State = ConnectionState.Closed Then
                acsconn.Open()
            End If


            Dim sql As String = "SELECT certifacte FROM students_certificates WHERE studentcrn=@rollno AND studentct_date=@udate"

            Using cmd As New MySqlCommand(sql, acsconn)
                cmd.Parameters.AddWithValue("@rollno", rollNo)
                cmd.Parameters.AddWithValue("@udate", certificateDate)

                Dim fileNameObject As Object = cmd.ExecuteScalar()

                If fileNameObject IsNot Nothing Then

                    Dim fileName As String = fileNameObject.ToString()


                    Dim folderPath As String = "~/stcertificates/"
                    Dim filePath As String = Server.MapPath(folderPath & fileName)

                    If File.Exists(filePath) Then



                        Response.Clear()
                        Response.ContentType = "application/octet-stream"
                        Response.AppendHeader("Content-Disposition", "attachment; filename=" & Path.GetFileName(filePath))

                        Response.WriteFile(filePath)
                        Response.Flush()


                        Using updateCmd As New MySqlCommand("UPDATE students_certificates SET is_downloaded=1 WHERE studentcrn=@rollno AND studentct_date=@udate", acsconn)
                            updateCmd.Parameters.AddWithValue("@rollno", rollNo)
                            updateCmd.Parameters.AddWithValue("@udate", certificateDate)

                            Dim count As Integer = updateCmd.ExecuteNonQuery()
                            If count > 0 Then

                            End If
                        End Using


                        HttpContext.Current.ApplicationInstance.CompleteRequest()

                    Else
                        Response.Write("<script>alert('⚠️ File not found on the server disk. Please check the file path');</script>")
                        'lblMessage.ForeColor = Drawing.Color.Red
                        'lblMessage.Text = "⚠️ File not found on the server disk. Please check the file path."
                    End If

                Else
                    '' File name not found in DB
                    'lblMessage.ForeColor = Drawing.Color.Red
                    'lblMessage.Text = "❌ Certificate not found for given CRN and Date!"
                    Response.Write("<script>alert('❌ Certificate not found for given CRN and Date!');</script>")
                End If

            End Using

        Catch ex As Exception
            Response.Write("<script>alert('Error: " & ex.Message & "');</script>")

        Finally
            ' Always ensure the database connection is closed
            If acsconn IsNot Nothing AndAlso acsconn.State = ConnectionState.Open Then
                acsconn.Close()
            End If

        End Try
    End Sub


End Class
