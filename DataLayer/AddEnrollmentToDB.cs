using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DataLayer
{
    public class AddEnrollmentToDB
    {
        public bool AddDatatoDB(string name, string emailId)
        {
            SqlConnection sqlcon = new SqlConnection("Password = A!s2d3f4g5h6; Persist Security Info = True; User ID = amit.x.agarwal; Initial Catalog = appservicedevacademydb; Data Source = sqlservergeneralpurpose.database.windows.net");

            try
            {
                SqlCommand command = new SqlCommand();

                sqlcon.Open();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "addenrollmenttodb";
                command.Connection = sqlcon;

                command.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                command.Parameters.Add("@emailid", SqlDbType.VarChar).Value = emailId;
                command.Parameters.Add("@enrolleddatetime", SqlDbType.DateTime).Value = (DateTime.Now);

                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sqlcon.Close();
            }
        }

    }
}
