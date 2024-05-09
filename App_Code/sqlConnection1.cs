using System;
using System.Data.SqlClient;

public class sqlConnection
{
    public sqlConnection()
    {
    }

    public static implicit operator SqlCommand(sqlConnection v)
    {
        throw new NotImplementedException();
    }
}