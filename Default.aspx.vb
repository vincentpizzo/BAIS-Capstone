
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub btn_search_Click(sender As Object, e As EventArgs) Handles btn_company.Click
        Dim searchCompany As String
        Dim searchMajor As String
        Dim searchPosition As String
        Dim searchSemester As String
        Dim searchState As String

        searchCompany = "Select * From dbo.PlacementDB2 where (Company Like '%" + tb_Company.Text.ToString() + "%')"
        searchMajor = "Select * From dbo.PlacementDB2 where (Major Like '%" + tb_Company.Text.ToString() + "%')"
        searchPosition = "Select * From dbo.PlacementDB2 where (Position Like '%" + tb_Company.Text.ToString() + "%')"
        searchSemester = "Select * From dbo.PlacementDB2 where (Semester Like '%" + tb_Company.Text.ToString() + "%')"
        searchState = "Select * From dbo.State where (StateName Like '%" + tb_Company.Text.ToString() + "%')"

        sql_Company.SelectCommand = searchCompany
        sql_Major.SelectCommand = searchMajor
        sql_Position.SelectCommand = searchPosition
        sql_Semester.SelectCommand = searchSemester
        sql_State.SelectCommand = searchState

    End Sub
End Class
