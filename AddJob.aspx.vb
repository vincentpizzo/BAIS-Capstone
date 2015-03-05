
Partial Class AddJob
    Inherits System.Web.UI.Page
    Protected Sub tb_searchState_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tb_searchState.TextChanged
        Dim searchword As String

        searchword = "Select * From dbo.State where (StateName Like '%" + tb_searchState.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub
End Class
