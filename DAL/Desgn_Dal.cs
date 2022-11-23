using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Challenge6.DAL
{
    public class Desgn_Dal
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();

        public Desgn_Dal()
        {
            //conection string in web.config
            string conn = ConfigurationManager.ConnectionStrings["rose"].ConnectionString;
            con = new SqlConnection(conn);
            cmd.Connection = con;
        }
        public SqlConnection Getcon()
        {
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }

        public int designationInsert(BAL.Desgn_Bal obj)
        {
            string qry = "insert into designation_table values('" + obj.DesignationName + "','"+obj.Departmentid+"')";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }

        public DataTable viewDesignation()
        {
            string qry = "select desg.*,dept.* from designation_table desg join department_table dept  on desg.DepartmentId=dept.department_Id";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            return dt;

        }

        public int updateDesignation(BAL.Desgn_Bal obj)
        {
            string s = "update designation_table set DesignationName = '" + obj.DesignationName + "',DepartmentId='"+obj.Departmentid+"' where DesignationId = '" + obj.Designationtid + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();
        }

        public int deleteDesignation(BAL.Desgn_Bal obj)
        {
            string s = "Delete from designation_table where DesignationId = '" + obj.Designationtid + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();

        }


    }
}