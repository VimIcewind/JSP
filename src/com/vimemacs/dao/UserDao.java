package com.vimemacs.dao;

import com.vimemacs.entity.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by hwd on 2015/10/3.
 */
public interface UserDao {
    public void save(Connection conn, User user) throws SQLException;

    public void update(Connection conn, Long id, User user) throws SQLException;

    public void delete(Connection conn, User user) throws SQLException;

    public ResultSet get(Connection conn, User user) throws SQLException;
}
