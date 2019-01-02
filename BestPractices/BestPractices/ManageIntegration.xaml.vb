Imports MahApps.Metro.Controls
Imports ConnectWiseDotNetSDK.ConnectWise.Client
Imports ConnectWiseDotNetSDK.ConnectWise.Client.System.Api
Imports ConnectWiseDotNetSDK.ConnectWise.Client.Company.Api
Imports ConnectWiseDotNetSDK.ConnectWise.Client.Company.Model
Imports ConnectWiseDotNetSDK.ConnectWise.Client.System.Model


Class ManageIntegration
    Inherits MetroWindow
    Public Function getApiClient()
        Return New ApiClient("GUID",, txt_siteURL.Text, txt_loginCompany.Text).SetPublicPrivateKey(txt_publicKey.Text, txt_privateKey.Text)
    End Function
    Public Function mymembertest()
        Dim myMemberAPI As New MyMembersApi(getApiClient)
        Dim mmResult = myMemberAPI.GetMyMembers.GetResult(Of MyMember)
        Dim mmName = mmResult.FirstName
        Return mmResult
    End Function
    Public Sub New()
        InitializeComponent()
        txt_siteURL.Text = My.Settings.siteURL
        txt_loginCompany.Text = My.Settings.loginCompany
        txt_publicKey.Text = My.Settings.publicKey
        txt_privateKey.Text = My.Settings.privateKey
    End Sub

    Private Sub btn_save_Click(sender As Object, e As RoutedEventArgs) Handles btn_save.Click
        My.Settings.siteURL = txt_siteURL.Text
        My.Settings.loginCompany = txt_loginCompany.Text
        My.Settings.privateKey = txt_privateKey.Text
        My.Settings.publicKey = txt_publicKey.Text
        My.Settings.Save()
    End Sub

    Private Sub cb_siteURL_DropDownClosed(sender As Object, e As EventArgs) Handles cb_siteURL.DropDownClosed
        If cb_siteURL.Text = "Premise" Then
            txt_siteURL.IsEnabled = True
            txt_siteURL.Text = ""
        Else
            txt_siteURL.IsEnabled = False
            If cb_siteURL.Text = "NA Cloud" Then
                txt_siteURL.Text = "na.myconnectwise.net"
            ElseIf cb_siteURL.Text = "EU Cloud" Then
                txt_siteURL.Text = "eu.myconnectwise.net"
            ElseIf cb_siteURL.Text = "AU Cloud" Then
                txt_siteURL.Text = "au.myconnectwise.net"
            End If
        End If
    End Sub

    Private Sub btn_testConnection_Click(sender As Object, e As RoutedEventArgs) Handles btn_testConnection.Click
        Dim testCon As New InfoApi(getApiClient)
        Try
            If testCon.GetInfo.IsSuccessResponse = True Then
                lbl_testConnection.Visibility = Visibility.Visible
                lbl_testConnection.Content = "Successful"
            End If
        Catch ex As Exception
            lbl_testConnection.Visibility = Visibility.Visible
            lbl_testConnection.Content = ex.InnerException.Message.ToString
        End Try


    End Sub

    Private Sub btn_refresh_statuses_Click(sender As Object, e As RoutedEventArgs) Handles btn_refresh_statuses.Click
        Dim refstatus As New CompanyStatusesApi(getApiClient)
        lb_company_statuses.Items.Clear()
        For Each item In refstatus.GetStatuses.GetResult(Of List(Of CompanyStatus))
            lb_company_statuses.Items.Add("ID: " + item.Id.ToString + " Name: " + item.Name)
        Next
    End Sub

    Private Sub btn_refresh_types_Click(sender As Object, e As RoutedEventArgs) Handles btn_refresh_types.Click
        Dim reftype As New CompanyTypesApi(getApiClient)
        lb_company_types.Items.Clear()
        For Each item In reftype.GetTypes.GetResult(Of List(Of CompanyType))
            lb_company_types.Items.Add("ID: " + item.Id.ToString + " Name: " + item.Name)
        Next
    End Sub
    Public Function FindAllCompanies()
        Dim CompanyAPI As New CompaniesApi(getApiClient)
        Dim searchresults As New List(Of Company)

        Dim response = CompanyAPI.GetCompanies(pageSize:=10, pageId:=1)
        Dim nextpage = response.HasNextPage
        searchresults.AddRange(response.GetResult(Of List(Of Company)))

        Do While nextpage = True
            response.InvokeNextPage()
            nextpage = response.HasNextPage
            searchresults.AddRange(response.GetResult(Of List(Of Company)))
        Loop


        Return searchresults
    End Function

    Private Sub comboBox1_DropDownOpened_1(sender As Object, e As EventArgs) Handles comboBox1.DropDownOpened
        comboBox1.Items.Clear()
        Dim companydropdown As New CompaniesApi(getApiClient)
        For Each item In companydropdown.GetCompanies().GetResult(Of List(Of Company))
            comboBox1.Items.Add(item.Identifier)
        Next
    End Sub

    Private Sub button_Click(sender As Object, e As RoutedEventArgs) Handles button.Click
        FindAllCompanies()
    End Sub
End Class
