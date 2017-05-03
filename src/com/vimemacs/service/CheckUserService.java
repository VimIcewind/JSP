package com.vimemacs.service;

import com.vimemacs.dao.UserDao;
import com.vimemacs.dao.impl.UserDaoImpl;
import com.vimemacs.entity.User;
import com.vimemacs.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.ResultSet;

/**
 * Created by hwd on 2015/10/4.
 */
public class CheckUserService {

    private UserDao userDao = new UserDaoImpl();

    public boolean check(User user) {
        Connection conn = null;

        try {
            conn = ConnectionFactory.getInstance().makeConnection();
            conn.setAutoCommit(false);

            ResultSet resultSet = userDao.get(conn, user);

            while (resultSet.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            try {
                conn.rollback();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            try {
                conn.close();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return false;
    }
}
