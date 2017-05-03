package com.vimemacs.test;

import com.vimemacs.dao.UserDao;
import com.vimemacs.dao.impl.UserDaoImpl;
import com.vimemacs.entity.User;
import com.vimemacs.util.ConnectionFactory;

import java.sql.Connection;

/**
 * Created by hwd on 2015/10/3.
 */
public class UserDaoTest {
    public static void main(String[] args) {
        Connection conn = null;
        try {
            conn = ConnectionFactory.getInstance().makeConnection();
            conn.setAutoCommit(false);

            UserDao userDao = new UserDaoImpl();
            User tom = new User();
            tom.setName("tom");
            tom.setPassword("123457");
            tom.setEmail("tom@gmail.com");

            userDao.save(conn, tom);

            conn.commit();
        } catch (Exception e) {
            try {
                conn.rollback();
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }
    }
}
