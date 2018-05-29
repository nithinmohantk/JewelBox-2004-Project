using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;
using System.Reflection;
using System.Runtime.InteropServices;
using JewelBox2004;


// General Information about an assembly is controlled through the following
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.

// Review the values of the assembly attributes

[assembly:AssemblyTitle("JewelBox 2004")]
[assembly:AssemblyDescription("This is an ultimate JewelleryShop Inventory Management System.")]
[assembly:AssemblyCompany("Dream Works Technologies India Ltd")]
[assembly:AssemblyProduct("JewelBox 2004")]
[assembly:AssemblyCopyright("Copyright 2002-2005 Dream Works Technologies India Ltd")]
[assembly:AssemblyTrademark("Your Security is our Primary Concern")]
[assembly:CLSCompliant(true)]

//The following GUID is for the ID of the typelib if this project is exposed to COM
//<Assembly: Guid("AB8AB2DB-F989-4D36-8C95-80868D424240")>

// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Build and Revision Numbers
// by using the '*' as shown below:

[assembly:AssemblyVersion("1.0.*")]

#region " Helper Class to Get Information for the About form. "
// This class uses the System.Reflection.Assembly class to
// access assembly meta-data
// This class is not a normal feature of AssemblyInfo.vb
public class AssemblyInfo
{
	// Used by Helper Functions to access information from Assembly Attributes
	private Type myType;
	
	public AssemblyInfo() {
		myType = typeof(frmMain);
	}
	
	public string AsmName
	{
		get{
			return myType.Assembly.GetName().Name.ToString();
		}
	}
	public string AsmFQName
	{
		get{
			return myType.Assembly.GetName().FullName.ToString();
		}
	}
	public string CodeBase
	{
		get{
			return myType.Assembly.CodeBase;
		}
	}
	public string Copyright
	{
		get{
			Type at = typeof(AssemblyCopyrightAttribute);
			object[] r = myType.Assembly.GetCustomAttributes(at, false);
			AssemblyCopyrightAttribute ct = ((AssemblyCopyrightAttribute)(r[0]));
			return ct.Copyright;
		}
	}
	public string Company
	{
		get{
			Type at = typeof(AssemblyCompanyAttribute);
			object[] r = myType.Assembly.GetCustomAttributes(at, false);
			AssemblyCompanyAttribute ct = ((AssemblyCompanyAttribute)(r[0]));
			return ct.Company;
		}
	}
	public string Description
	{
		get{
			Type at = typeof(AssemblyDescriptionAttribute);
			object[] r = myType.Assembly.GetCustomAttributes(at, false);
			AssemblyDescriptionAttribute da = ((AssemblyDescriptionAttribute)(r[0]));
			return da.Description;
		}
	}
	public string Product
	{
		get{
			Type at = typeof(AssemblyProductAttribute);
			object[] r = myType.Assembly.GetCustomAttributes(at, false);
			AssemblyProductAttribute pt = ((AssemblyProductAttribute)(r[0]));
			return pt.Product;
		}
	}
	public string Title
	{
		get{
			Type at = typeof(AssemblyTitleAttribute);
			object[] r = myType.Assembly.GetCustomAttributes(at, false);
			AssemblyTitleAttribute ta = ((AssemblyTitleAttribute)(r[0]));
			return ta.Title;
		}
	}
	public string Version
	{
		get{
			return myType.Assembly.GetName().Version.ToString();
		}
	}
}

#endregion


