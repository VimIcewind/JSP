package com.vimemacs.test;

import com.vimemacs.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by hwd on 2015/10/3.
 */
public class ConnectionFactoryTest {
    public static void main(String[] args) throws SQLException {
        ConnectionFactory cf = ConnectionFactory.getInstance();

        Connection conn = cf.makeConnection();

        System.out.println(conn.getAutoCommit());
    }
}
