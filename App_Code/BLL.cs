using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class BLL
{
    DLL dobj = new DLL();
    public BLL()
    {
    }
    public int insert(string sp, SqlParameter[] pdata)
    {
        int x = dobj.insert(sp, pdata);
        return x;
    }

}