using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;

namespace JewelBox2004
{
	sealed class modMain
	{
		
		public static int RowsAffected;
		public static int index;
		public static int numVals;
		public static int numRows;
		public static int x;
		public static string te1;
		public static string te2;
		public static string te3;
		public static string strConn = "Provider = SQLOLEDB;data source=DREAMWORKS;initial catalog=JewelBox;persist security info=False;user id=admin;password = velocity;workstation id=DREAMWORKS;packet size=4096";
		public static int repMod;
		public static string mytime;
		public static string loguser;
		public static string logpass;
		public static bool logsuccess;
		public static string sql;
		public static System.Data.SqlClient.SqlDataAdapter adapt = new System.Data.SqlClient.SqlDataAdapter();
		public static System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
		public static System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
		public static DataSet rslogin = new DataSet();
		public static string connString;
		
		public static void ConnectDB ()
		{
			connString = "initial catalog=JewelBox;password=delta123;persist security info=True;user id=sa;workstation id=GOLDENTIGER;packet size=4096";
			conn = new System.Data.SqlClient.SqlConnection(connString);
			comm = new System.Data.SqlClient.SqlCommand(connString, conn);
			comm.CommandType = CommandType.Text;
			try
			{
				conn.Open();
				Debug.WriteLine("Connection Success");
			}
			catch (System.Data.SqlClient.SqlException SqlExcep)
			{
				Debug.WriteLine(SqlExcep.Message);
			}
		}
		public static void commitDB ()
		{
			conn.Close();
			conn.Dispose();
			conn = null;
			ConnectDB();
		}
		
		public static void closeDB ()
		{
			
		}
		
		public static void Main ()
		{
			frmSplash frm = new frmSplash();
			frm.ShowDialog();
			ConnectDB();
		}
		
		public static string encrypt_pass(string pass)
		{
			string returnValue;
			string[] pass1 = new string[41];
			string[] ascii = new string[41];
			string pass2 = "";
			int lenp;
			int i;
			lenp = Strings.Len(pass);
			i = 0;
			while (i < lenp)
			{
				i = i + 1;
				pass1[i] = Strings.Mid(pass, i, 1);
				ascii[i] = System.Convert.ToString(Strings.Asc(pass1[i]));
				ascii[i] = ascii[i] +(i +(i - 4));
				pass2 = pass2 + Strings.Chr(System.Convert.ToInt32(ascii[i]));
			}
			returnValue = pass2;
			return returnValue;
		}
		public static string decrypt_pass(string pass)
		{
			string returnValue;
			string[] pass1 = new string[41];
			int[] ascii = new int[41];
			string pass2 = "";
			int lenp;
			int i;
			//			int j;
			//			int k;
			lenp = Strings.Len(pass);
			i = 1;
			while (i <= lenp)
			{
				pass1[i] = Strings.Mid(pass, i, 1);
				ascii[i] = Strings.Asc(pass1[i]);
				ascii[i] = ascii[i] -(i +(i - 4));
				pass2 = pass2 + Strings.Chr(ascii[i]);
				i = i + 1;
			}
			returnValue = pass2;
			return returnValue;
		}
	}
	
}
