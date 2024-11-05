package org.example.sql;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class BrowsersDAOImpl implements BrowsersDAO {
    private DataSource dataSource;
    public BrowsersDAOImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    @Override
    public List<Browser> listBrowsers() {
        String SQL = "Select * from browsers";
        List<Browser> listBrowsers = new ArrayList<>();
        try(Connection conn = dataSource.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Browser temp = new Browser(
                        rs.getInt("bid"),
                        rs.getString("name")

                );
                listBrowsers.add(temp);
            }
            rs.close();
            ps.close();
            return listBrowsers;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}