﻿using System;
using System.Data;

public partial class cms_display_TinTuc_ChiTietTinTuc : System.Web.UI.UserControl
{
    private string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
            id = Request.QueryString["id"];

        if (!IsPostBack)
            LayChiTietTinTuc(id);
    }

    private void LayChiTietTinTuc(string id)
    {
        CapNhatLuotXemTin(id);

        DataTable dt = new DataTable();
        dt = WebTheThao.TinTuc.Thongtin_Tintuc_by_id(id);
        if (dt.Rows.Count > 0)
        {
            ltrTieuDeTin.Text = dt.Rows[0]["TieuDe"].ToString();
            ltrNgayDang.Text = ((DateTime)dt.Rows[0]["NgayDang"]).ToString("dd/MM/yyyy");
            ltrLuotXem.Text = dt.Rows[0]["LuotXem"].ToString();
            ltrNoiDungChiTiet.Text = dt.Rows[0]["ChiTiet"].ToString();
        }
    }

    private void CapNhatLuotXemTin(string id)
    {
        WebTheThao.TinTuc.CapNhatLuotXemTinTuc(id);
    }
}