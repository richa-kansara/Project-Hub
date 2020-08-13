using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public class DLL
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ph"].ConnectionString);
    int x;
	public DLL()
	{
		 
	}
    public int insert(string sp, SqlParameter[] pdata)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand(sp);
        cmd.Connection = this.con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(pdata);
        int x = cmd.ExecuteNonQuery();
        return x;
    }
    public object max(string str)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand(str,con);
        object sc = cmd.ExecuteScalar();
        return sc;
    }
    public int check(string str)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
            return 1;
        else
            return 0;
    }
    public DataSet selecall(string str)
    {
        con.Close();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public int update(string str)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        int x = cmd.ExecuteNonQuery();
        return x;
    }
    public object fetch(string str)
    {
        con.Close();
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        object sc = cmd.ExecuteScalar();
        
        return sc;
    }

}