Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Xpo
Imports DevExpress.Web.ASPxEditors

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Private session As Session = XpoHelper.GetNewSession()

	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
		xds.Session = session
	End Sub
	Protected Sub rblMeals_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim list As ASPxRadioButtonList = TryCast(sender, ASPxRadioButtonList)

		list.ValueType = GetType(CommonMeals)
	End Sub
End Class
