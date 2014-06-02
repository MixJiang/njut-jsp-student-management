package db;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/**
 * ���ݿ�������
 *
 * @author ������
 */
public class dbconn {
    String driverName = null;//���ݿ�������
    String connString = null;//�����ַ���
    String userName = null;//�û���
    String password = null;//����
    String propertyFileName = null;//.properties�ļ�����

    public dbconn() {
    }

    public Connection getDBConn() {//�õ����ݿ����Ӷ���
        driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        connString = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=chengji";
        userName = "sa";
        password = "";
        if (driverName == null || connString == null || userName == null) return null;
        try {
            Connection connDBObject = null;
            Class.forName(driverName);
            return DriverManager.getConnection(connString, userName, password);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("���ݿ�����ʧ��");
            return null;
        }
    }

    public String getConnString() {
        return connString;
    }

    public String getDriverName() {
        return driverName;
    }

    public String getPassword() {
        return password;
    }

    public String getUserName() {
        return userName;
    }

    public void setPropertyFileName(String propertyFileName) {
        this.propertyFileName = propertyFileName;
    }

    public String getPropertyFileName() {
        return propertyFileName;
    }

    public String getPropertyFromFile(String refName) {//��.properties�ļ��еõ�refName���Ե�ֵ
        if (this.getPropertyFileName() == null) return new String("");
        try {
            InputStream fin = getClass().getResourceAsStream(this.getPropertyFileName());
            Properties props = new Properties();
            props.load(fin);
            return (String) props.getProperty(refName);
        } catch (Exception e) {
            e.printStackTrace();
            return new String("");
        }
    }
}
