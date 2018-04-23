<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.1, Version=10.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.1, Version=10.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Xpo.v10.1.Web, Version=10.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to bind a control in EditForm template to XPObject enum field</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="xds"
                KeyFieldName="Oid">
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0">
                        <EditButton Visible="True">
                        </EditButton>
                        <NewButton Visible="True">
                        </NewButton>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="1" SortOrder="Ascending"
                        SortIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Title" VisibleIndex="2">
                        <EditFormSettings ColumnSpan="2" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Meal" VisibleIndex="3">
                        <EditFormSettings ColumnSpan="2" />
                        <EditItemTemplate>
                            <dx:ASPxRadioButtonList ID="rblMeals" runat="server" Value='<%# Bind("Meal") %>'
                                RepeatLayout="Table" OnInit="rblMeals_Init" RepeatColumns="2">
                                <Items>
                                    <dx:ListEditItem Text="Breakfast - morning" Value="Breakfast" />
                                    <dx:ListEditItem Text="Lunch - 11 am and 2 pm" Value="Lunch" />
                                    <dx:ListEditItem Text="Dinner - evening" Value="Dinner" />
                                    <dx:ListEditItem Text="Supper - late :(" Value="Supper" />
                                </Items>
                            </dx:ASPxRadioButtonList>
                        </EditItemTemplate>
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <dx:XpoDataSource ID="xds" runat="server" TypeName="MyObject">
            </dx:XpoDataSource>
        </div>
    </form>
</body>
</html>
