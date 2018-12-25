﻿using System;

public partial class cms_admin_SanPham_QuanLyDonHang_Ajax_DonHang : System.Web.UI.Page
{
    string thaotac = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Code kiểm tra đăng nhập tại đây sau đó mới thực hiện các thao tác dưới
        //Kiểm tra nếu đã đăng nhập thì mới cho vào trang này
        if (Session["DangNhap"] != null && Session["DangNhap"].ToString() == "1")
        {
            //Đã đăng nhập
        }
        else
        {
            //Nếu chưa đăng nhập --> return để dừng không cho thực hiện các câu lệnh bên dưới
            return;
        }
        if (Request.Params["ThaoTac"] != null)
        {
            thaotac = Request.Params["ThaoTac"];
        }

        switch (thaotac)
        {
            case "XoaDonHang":
                XoaDonHang();
                break;

        }
    }

    private void XoaDonHang()
    {
        string id = "";
        if (Request.Params["id"] != null)
        {
            id = Request.Params["id"];

            //Thực hiện code xóa          
            WebTheThao.DonDatHang.Dondathang_Delete(id);

            // Trả về thông báo 1 thực hiện thành công 2 thực hiện không thành công
            Response.Write("1");
        }
    }
}