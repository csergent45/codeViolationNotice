
Partial Class registration
    Inherits System.Web.UI.Page

    Protected Sub btnSubmitForm_Click(sender As Object, e As EventArgs) Handles btnSubmitForm.Click
        Label1.Text = ""
        If HIPControl1.IsValid = False Then
            Label1.Text = "Please try again."

            SetFocus("btnSubmitForm")


        Else

            doEmail()
            Response.Redirect("success.html")
            Label1.Text = ""
        End If

    End Sub

    Protected Sub doEmail()
        Dim toAddress = "dsergent@decaturil.gov"
        'Dim toAddress = "tmfloyd@decaturil.gov"
        Dim sb As New StringBuilder
        Dim notifyMe As String

        Dim mm As New System.Net.Mail.MailMessage("webmaster@decaturil.gov", toAddress)
        

        mm.Subject = "Contact Information Update"

        If chkNotify.Checked = True Then

            notifyMe = "Please let me know when I can register vacant lots."
        Else
            notifyMe = "The owner does not request to be notified of vacant lots."
        End If

        mm.Body = "Owner: " & ownerName.Text & vbCrLf & vbCrLf & _
            "Notifications of Vacant Lots: " & notifyMe & vbCrLf & vbCrLf & _
            "Owner Address: " & ownerAddress.Text & vbCrLf & vbCrLf & _
            "Owner E-Mail: " & ownerEmail.Text & vbCrLf & vbCrLf & _
            "Owner Phone: " & ownerPhone.Text & vbCrLf & vbCrLf & _
            "Owner Phone Number: " & ownerPhone.Text & vbCrLf & vbCrLf & _
            "Owner Last 4 (SSN): " & ownerLastFour.Text & vbCrLf & vbCrLf & _
            "Property 1: " & propertyAddress1.Text & vbCrLf & vbCrLf


        Dim propAddress2 As String = Nothing
        Dim propAddress3 As String = Nothing
        Dim propAddress4 As String = Nothing
        Dim propAddress5 As String = Nothing
        Dim propAddress6 As String = Nothing
        Dim propAddress7 As String = Nothing
        Dim propAddress8 As String = Nothing
        Dim propAddress9 As String = Nothing
        Dim propAddress10 As String = Nothing
        Dim propAddress11 As String = Nothing
        Dim propAddress12 As String = Nothing
        Dim propAddress13 As String = Nothing
        Dim propAddress14 As String = Nothing
        Dim propAddress15 As String = Nothing
        Dim propAddress16 As String = Nothing
        Dim propAddress17 As String = Nothing
        Dim propAddress18 As String = Nothing
        Dim propAddress19 As String = Nothing
        Dim propAddress20 As String = Nothing
        Dim propAddress21 As String = Nothing
        Dim propAddress22 As String = Nothing
        Dim propAddress23 As String = Nothing
        Dim propAddress24 As String = Nothing
        Dim propAddress25 As String = Nothing


        If propertyAddress2.Text.Trim.Length > 0 Then
            propAddress2 = "Property 2: " & propertyAddress2.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress2)
            mm.Body = mm.Body & propAddress2

        End If


        If propertyAddress3.Text.Trim.Length > 0 Then
            propAddress3 = "Property 3: " & propertyAddress3.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress3)
            mm.Body = mm.Body & propAddress3
        End If

        If propertyAddress4.Text.Trim.Length > 0 Then
            propAddress4 = "Property 4: " & propertyAddress4.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress4)
            mm.Body = mm.Body & propAddress4
        End If


        If propertyAddress5.Text.Trim.Length > 0 Then
            propAddress5 = "Property 5: " & propertyAddress5.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress5)
            mm.Body = mm.Body & propAddress5
        End If


        If propertyAddress6.Text.Trim.Length > 0 Then
            propAddress6 = "Property 6: " & propertyAddress6.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress6)
            mm.Body = mm.Body & propAddress6
        End If

        If propertyAddress7.Text.Trim.Length > 0 Then
            propAddress7 = "Property 7: " & propertyAddress7.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress7)
            mm.Body = mm.Body & propAddress7
        End If

        If propertyAddress8.Text.Trim.Length > 0 Then
            propAddress8 = "Property 8: " & propertyAddress8.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress8)
            mm.Body = mm.Body & propAddress8
        End If

        If propertyAddress9.Text.Trim.Length > 0 Then
            propAddress9 = "Property 9: " & propertyAddress9.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress9)
            mm.Body = mm.Body & propAddress9
        End If


        If propertyAddress10.Text.Trim.Length > 0 Then
            propAddress10 = "Property 10: " & propertyAddress10.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress10)
            mm.Body = mm.Body & propAddress10
        End If


        If propertyAddress11.Text.Trim.Length > 0 Then
            propAddress11 = "Property 11: " & propertyAddress11.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress11)
            mm.Body = mm.Body & propAddress11
        End If


        If propertyAddress12.Text.Trim.Length > 0 Then
            propAddress12 = "Property 12: " & propertyAddress12.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress12)
            mm.Body = mm.Body & propAddress12
        End If


        If propertyAddress13.Text.Trim.Length > 0 Then
            propAddress13 = "Property 13: " & propertyAddress13.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress13)
            mm.Body = mm.Body & propAddress13
        End If


        If propertyAddress14.Text.Trim.Length > 0 Then
            propAddress14 = "Property 14: " & propertyAddress14.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress14)
            mm.Body = mm.Body & propAddress14
        End If


        If propertyAddress15.Text.Trim.Length > 0 Then
            propAddress15 = "Property 15: " & propertyAddress15.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress15)
            mm.Body = mm.Body & propAddress15
        End If


        If propertyAddress16.Text.Trim.Length > 0 Then
            propAddress16 = "Property 16: " & propertyAddress16.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress16)
            mm.Body = mm.Body & propAddress16
        End If


        If propertyAddress17.Text.Trim.Length > 0 Then
            propAddress17 = "Property 17: " & propertyAddress17.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress17)
            mm.Body = mm.Body & propAddress17
        End If


        If propertyAddress18.Text.Trim.Length > 0 Then
            propAddress18 = "Property 18: " & propertyAddress18.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress18)
            mm.Body = mm.Body & propAddress18
        End If


        If propertyAddress19.Text.Trim.Length > 0 Then
            propAddress19 = "Property 19: " & propertyAddress19.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress19)
            mm.Body = mm.Body & propAddress19
        End If


        If propertyAddress20.Text.Trim.Length > 0 Then
            propAddress20 = "Property 20: " & propertyAddress20.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress20)
            mm.Body = mm.Body & propAddress20
        End If


        If propertyAddress21.Text.Trim.Length > 0 Then
            propAddress21 = "Property 21: " & propertyAddress21.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress21)
            mm.Body = mm.Body & propAddress21
        End If


        If propertyAddress22.Text.Trim.Length > 0 Then
            propAddress22 = "Property 22: " & propertyAddress22.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress22)
            mm.Body = mm.Body & propAddress22
        End If


        If propertyAddress23.Text.Trim.Length > 0 Then
            propAddress23 = "Property 23: " & propertyAddress23.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress23)
            mm.Body = mm.Body & propAddress23
        End If



        If propertyAddress24.Text.Trim.Length > 0 Then
            propAddress24 = "Property 24: " & propertyAddress24.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress24)
            mm.Body = mm.Body & propAddress24
        End If


        If propertyAddress25.Text.Trim.Length > 0 Then
            propAddress25 = "Property 25: " & propertyAddress25.Text & vbCrLf & vbCrLf
            sb.AppendLine(propAddress25)
            mm.Body = mm.Body & propAddress25
        End If


        Dim tenantAddr1 As String = Nothing
        Dim tenantAddr2 As String = Nothing
        Dim tenantAddr3 As String = Nothing
        Dim tenantAddr4 As String = Nothing
        Dim tenantAddr5 As String = Nothing
        Dim tenantAddr6 As String = Nothing


        If tenantName1.Text.Trim.Length > 0 Then
            tenantAddr1 = "Tenant Name1: " & tenantName1.Text & vbCrLf & vbCrLf & _
                "Tenant Property Address1: " & tenantPropertyAddress1.Text & vbCrLf & vbCrLf & _
                "Tenant E-Mail Address1: " & tenantEmailAddress1.Text & vbCrLf & vbCrLf
            sb.AppendLine(tenantAddr1)
            mm.Body = mm.Body & tenantAddr1
        End If


        If tenantName2.Text.Trim.Length > 0 Then
            tenantAddr2 = "Tenant Name2: " & tenantName2.Text & vbCrLf & vbCrLf & _
                "Tenant Property Address2: " & tenantPropertyAddress2.Text & vbCrLf & vbCrLf & _
                "Tenant E-Mail Address2: " & tenantEmailAddress2.Text & vbCrLf & vbCrLf
            sb.AppendLine(tenantAddr2)
            mm.Body = mm.Body & tenantAddr2
        End If


        If tenantName3.Text.Trim.Length > 0 Then
            tenantAddr3 = "Tenant Name3: " & tenantName3.Text & vbCrLf & vbCrLf & _
                "Tenant Property Address3: " & tenantPropertyAddress3.Text & vbCrLf & vbCrLf & _
                "Tenant E-Mail Address3: " & tenantEmailAddress3.Text & vbCrLf & vbCrLf
            sb.AppendLine(tenantAddr3)
            mm.Body = mm.Body & tenantAddr3
        End If


        If tenantName4.Text.Trim.Length > 0 Then
            tenantAddr4 = "Tenant Name4: " & tenantName4.Text & vbCrLf & vbCrLf & _
                "Tenant Property Address4: " & tenantPropertyAddress4.Text & vbCrLf & vbCrLf & _
                "Tenant E-Mail Address4: " & tenantEmailAddress4.Text & vbCrLf & vbCrLf
            sb.AppendLine(tenantAddr4)
            mm.Body = mm.Body & tenantAddr4
        End If


        If tenantName5.Text.Trim.Length > 0 Then
            tenantAddr5 = "Tenant Name5: " & tenantName5.Text & vbCrLf & vbCrLf & _
                "Tenant Property Address5: " & tenantPropertyAddress5.Text & vbCrLf & vbCrLf & _
                "Tenant E-Mail Address5: " & tenantEmailAddress5.Text & vbCrLf & vbCrLf
            sb.AppendLine(tenantAddr5)
            mm.Body = mm.Body & tenantAddr5
        End If


        If tenantName6.Text.Trim.Length > 0 Then
            tenantAddr6 = "Tenant Name6: " & tenantName6.Text & vbCrLf & vbCrLf & _
                "Tenant Property Address6: " & tenantPropertyAddress6.Text & vbCrLf & vbCrLf & _
                "Tenant E-Mail Address6: " & tenantEmailAddress6.Text & vbCrLf & vbCrLf
            sb.AppendLine(tenantAddr6)
            mm.Body = mm.Body & tenantAddr6
        End If


        mm.IsBodyHtml = False

        Dim smtp As New System.Net.Mail.SmtpClient
        smtp.Send(mm)



    End Sub

    
End Class
