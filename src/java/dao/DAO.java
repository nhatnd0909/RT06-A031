/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Account;
import entity.Car;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ACER
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Car> getAllCar() {
        List<Car> list = new ArrayList<>();
        String query = "select xe.MaXe,tenxe,tenloaixe,tenhangsanxuat,LoaiNhienLieu,MauSac,SoGhe,TrangThai,TinhTrangXe,NamSanXuat,Img,GiaThueNgay,GiaThueGio \n"
                + "from Xe inner join LoaiXe on xe.IDLoaiXe = LoaiXe.IDLoaiXe\n"
                + "inner join hangsanxuat on xe.IDHSX = HangSanXuat.IDHSX";
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getTotalCar() {
        String query = "select Count(MaXe)\n"
                + "from Xe";
        int total = 0;
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return total;
    }

    public List<Car> getAllFeeaturedCar() {
        List<Car> list = new ArrayList<>();
        String query = "select top 5 xe.MaXe,tenxe,tenloaixe,tenhangsanxuat,LoaiNhienLieu,MauSac,SoGhe,TrangThai,TinhTrangXe,NamSanXuat,Img,GiaThueNgay,GiaThueGio \n"
                + "from Xe inner join LoaiXe on xe.IDLoaiXe = LoaiXe.IDLoaiXe\n"
                + "inner join hangsanxuat on xe.IDHSX = HangSanXuat.IDHSX\n"
                + "order by GiaThueNgay desc";
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Car> getCarByName(String txtSearch) {
        List<Car> list = new ArrayList<>();
        String query = "select xe.MaXe,tenxe,tenloaixe,tenhangsanxuat,LoaiNhienLieu,MauSac,SoGhe,TrangThai,TinhTrangXe,NamSanXuat,Img,GiaThueNgay,GiaThueGio\n"
                + "from Xe inner join LoaiXe on xe.IDLoaiXe = LoaiXe.IDLoaiXe\n"
                + "inner join hangsanxuat on xe.IDHSX = HangSanXuat.IDHSX\n"
                + "where TenXe like ?";
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Car> search(String txtSearch, int index) {
        List<Car> list = new ArrayList<>();
        String query = "with x as (select ROW_NUMBER() over (order by namsanxuat desc) as row,xe.MaXe,tenxe,tenloaixe,tenhangsanxuat,LoaiNhienLieu,MauSac,SoGhe,TrangThai,TinhTrangXe,NamSanXuat,Img,GiaThueNgay,GiaThueGio\n"
                + "from Xe inner join LoaiXe on xe.IDLoaiXe = LoaiXe.IDLoaiXe\n"
                + "inner join hangsanxuat on xe.IDHSX = HangSanXuat.IDHSX\n"
                + "where TenXe like ?)\n"
                + "select * from x\n"
                + "where row between ?*9-8 and ?*9";
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ps.setInt(2, index);
            ps.setInt(3, index);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(7), rs.getString(10), rs.getString(11), rs.getString(12), rs.getInt(13), rs.getInt(14)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int count(String txtSearch) {
        String query = "select count(*)\n"
                + "from Xe \n"
                + "where TenXe like ?";
        int count = 0;
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return count;
    }

    public List<Car> getCarByID(String idCar) {
        List<Car> list = new ArrayList<>();
        String query = "select xe.MaXe,tenxe,tenloaixe,tenhangsanxuat,LoaiNhienLieu,MauSac,SoGhe,TrangThai,TinhTrangXe,NamSanXuat,Img,GiaThueNgay,GiaThueGio\n"
                + "from Xe inner join LoaiXe on xe.IDLoaiXe = LoaiXe.IDLoaiXe\n"
                + "inner join hangsanxuat on xe.IDHSX = HangSanXuat.IDHSX\n"
                + "where MaXe =?";
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idCar);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Car> getCarRelated(String typeCar, String manufactor) {
        List<Car> list = new ArrayList<>();
        String query = "select top 3 xe.MaXe,tenxe,tenloaixe,tenhangsanxuat,LoaiNhienLieu,MauSac,SoGhe,TrangThai,TinhTrangXe,NamSanXuat,Img,GiaThueNgay,GiaThueGio\n"
                + "from Xe inner join LoaiXe on xe.IDLoaiXe = LoaiXe.IDLoaiXe\n"
                + "inner join hangsanxuat on xe.IDHSX = HangSanXuat.IDHSX\n"
                + "where tenloaixe =? and TenHangSanXuat = ?";
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, typeCar);
            ps.setString(2, manufactor);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Car(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from NguoiDung";
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getBoolean(10), rs.getString(11), rs.getString(12), rs.getBoolean(13),rs.getString(14)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Account getAccountByID(int id){
        List<Account> list = getAllAccount();
        for (Account a : list) {
            if (a.getID()==id) {
                return a;
            }
        }
        return null;
    }
    public Account login(String username, String password) {
        List<Account> list = getAllAccount();
        for (Account a : list) {
            if (a.getUserName().equals(username) && a.getPassword().equals(password)) {
                return a;
            }
        }
        return null;
    }

    public Account checkUserExit(String username) {
        List<Account> list = getAllAccount();
        for (Account a : list) {
            if (a.getUserName().equals(username)) {
                return a;
            }
        }
        return null;
    }

    public void createAccount(String user, String pass) {
        String query = "INSERT INTO NguoiDung(TaiKhoan, MatKhau,role)\n"
                + "VALUES (?,?,1);";
        try {
            conn = new dbcontext.DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        List<Car> list = dao.search("", 5);
//        for (Car o : list) {
//            System.out.println(o);
//        }
//        System.out.println(dao.count("toy"));
        Account a = dao.getAccountByID(3);
        System.out.println(a);
    }
}
