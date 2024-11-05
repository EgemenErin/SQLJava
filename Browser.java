package org.example.sql;

public class Browser {
    private int bid;
    private String name;
    public Browser(int bid, String name) {
        this.bid = bid;
        this.name = name;
    }
    public Browser() {}
    public int getBid() {
        return bid;
    }
    public void setBid(int bid) {
        this.bid = bid;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
}
