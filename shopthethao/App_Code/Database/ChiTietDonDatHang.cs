﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace WebTheThao
{
    /// <summary>
    /// Summary description for ChiTietDonDatHang
    /// </summary>
    public class ChiTietDonDatHang
    {
        #region Phương thức xóa chi tiết đơn đặt hàng theo mã sản phẩm và mã đơn đặt hàng
        /// <summary>
        /// Phương thức xóa chi tiết đơn đặt hàng theo mã sản phẩm và mã đơn đặt hàng
        /// </summary>
        /// <param name="masp"></param>
        /// <param name="madondathang"></param>
        public static void Chitietdondathang_Delete(string masp, string madondathang)
        {
            OleDbCommand cmd = new OleDbCommand("chitietdondathang_delete");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@masp", masp);
            cmd.Parameters.AddWithValue("@madondathang", madondathang);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới chi tiết đơn đặt hàng vào bảng chi tiết đơn đặt hàng
       /// <summary>
        /// Phương thức thêm mới chi tiết đơn đặt hàng vào bảng chi tiết đơn đặt hàng
       /// </summary>
       /// <param name="masp"></param>
       /// <param name="madondathang"></param>
       /// <param name="soluongdat"></param>
       /// <param name="dongiadat"></param>
       /// <param name="ret"></param>
        public static void Chitietdondathang_Inser(string masp,string madondathang,string soluongdat,string dongiadat, string ret)
        {
            OleDbCommand cmd = new OleDbCommand("chitietdondathang_inser");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@masp", masp);
            cmd.Parameters.AddWithValue("@madondathang", madondathang);
            cmd.Parameters.AddWithValue("@soluongdat", soluongdat);
            cmd.Parameters.AddWithValue("@dongiadat", dongiadat);
            cmd.Parameters.AddWithValue("@ret", ret);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region  Phương thức chỉnh sửa thông tin một chi tiết đơn hàng
        /// <summary>
        /// Phương thức chỉnh sửa thông tin một chi tiết đơn hàng
        /// </summary>
        /// <param name="masp"></param>
        /// <param name="madondathang"></param>
        /// <param name="soluongdat"></param>
        /// <param name="dongiadat"></param>
        public static void Chitietdondathang_Update(string masp, string madondathang, string soluongdat, string dongiadat)
        {
            OleDbCommand cmd = new OleDbCommand("chitietdondathang_update");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@masp", masp);
            cmd.Parameters.AddWithValue("@madondathang", madondathang);
            cmd.Parameters.AddWithValue("@soluongdat", soluongdat);
            cmd.Parameters.AddWithValue("@dongiadat", dongiadat);
            SQLDatabase.ExecuteNoneQuery(cmd);
        }


        #endregion

        #region Phương thức lấy ra danh sách tất cả các chi tiết đơn đặt hàng
        /// <summary>
        ///  Phương thức lấy ra danh sách tất cả các chi tiết đơn đặt hàng
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Chitietdondathang()
        {
            OleDbCommand cmd = new OleDbCommand("thongtin_chitietdondathang");
            cmd.CommandType = CommandType.StoredProcedure;
            return SQLDatabase.GetData(cmd);
        }
        #endregion

        #region Phương thức lấy ra danh sách tất cả các chi tiết đơn đặt hàng theo mã đơn hàng
        /// <summary>
        ///  Phương thức lấy ra danh sách tất cả các chi tiết đơn đặt hàng theo mã đơn hàng
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Chitietdondathang_by_madondathang(string madondathang)
        {
            OleDbCommand cmd = new OleDbCommand("thongtin_chitietdondathang_by_madondathang");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@madondathang", madondathang);
            return SQLDatabase.GetData(cmd);
        }
        #endregion
    }
}
