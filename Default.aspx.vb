
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub btn_search_Click(sender As Object, e As EventArgs) Handles btn_search.Click
        Dim searchword As String

        searchword = "Select * From dbo.PlacementDB2 where (Company Like '%" + tb_search.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub
End Class
