
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub btn_search_Click(sender As Object, e As EventArgs) Handles btn_company.Click
        Dim searchCompany As String
        searchCompany = "Select * From dbo.PlacementDB2 where (Company Like '%" + tb_Company.Text.ToString() + "%')"
        sql_Company.SelectCommand = searchCompany

    End Sub

    Protected Sub btn_major_Click(sender As Object, e As EventArgs) Handles btn_major.Click
        Dim searchMajor As String
        searchMajor = "Select * From dbo.PlacementDB2 where (Major Like '%" + tb_Company.Text.ToString() + "%')"
        sql_Major.SelectCommand = searchMajor

    End Sub

    Protected Sub btn_position_Click(sender As Object, e As EventArgs) Handles btn_position.Click
        Dim searchPosition As String
        searchPosition = "Select * From dbo.PlacementDB2 where (Position Like '%" + tb_Company.Text.ToString() + "%')"
        sql_Position.SelectCommand = searchPosition

    End Sub

    Protected Sub btn_semester_Click(sender As Object, e As EventArgs) Handles btn_semester.Click
        Dim searchSemester As String
        searchSemester = "Select * From dbo.PlacementDB2 where (Semester Like '%" + tb_Company.Text.ToString() + "%')"
        sql_Semester.SelectCommand = searchSemester

    End Sub

    Protected Sub btn_state_Click(sender As Object, e As EventArgs) Handles btn_state.Click
        Dim searchState As String
        searchState = "Select * From dbo.State where (StateName Like '%" + tb_Company.Text.ToString() + "%')"
        sql_State.SelectCommand = searchState

    End Sub
End Class
