Option Strict On
Imports System.Reflection
Imports System.Runtime.InteropServices

' General Information about an assembly is controlled through the following 
' set of attributes. Change these attribute values to modify the information
' associated with an assembly.

' Review the values of the assembly attributes

<Assembly: AssemblyTitle("JewelBox 2004")> 
<Assembly: AssemblyDescription("This is an ultimate JewelleryShop Inventory Management System.")> 
<Assembly: AssemblyCompany("Dream Works Technologies India Ltd")> 
<Assembly: AssemblyProduct("JewelBox 2004")> 
<Assembly: AssemblyCopyright("Copyright ©2002-2005 Dream Works Technologies India Ltd")> 
<Assembly: AssemblyTrademark("Your Security is our Primary Concern")> 
<Assembly: CLSCompliant(True)> 

'The following GUID is for the ID of the typelib if this project is exposed to COM
'<Assembly: Guid("AB8AB2DB-F989-4D36-8C95-80868D424240")> 

' Version information for an assembly consists of the following four values:
'
'      Major Version
'      Minor Version 
'      Build Number
'      Revision
'
' You can specify all the values or you can default the Build and Revision Numbers 
' by using the '*' as shown below:

<Assembly: AssemblyVersion("1.0.*")> 

#Region " Helper Class to Get Information for the About form. "
' This class uses the System.Reflection.Assembly class to
' access assembly meta-data
' This class is not a normal feature of AssemblyInfo.vb
Public Class AssemblyInfo
    ' Used by Helper Functions to access information from Assembly Attributes
    Private myType As Type

    Public Sub New()
        myType = GetType(frmMain)
    End Sub

    Public ReadOnly Property AsmName() As String
        Get
            Return myType.Assembly.GetName.Name.ToString()
        End Get
    End Property
    Public ReadOnly Property AsmFQName() As String
        Get
            Return myType.Assembly.GetName.FullName.ToString()
        End Get
    End Property
    Public ReadOnly Property CodeBase() As String
        Get
            Return myType.Assembly.CodeBase
        End Get
    End Property
    Public ReadOnly Property Copyright() As String
        Get
            Dim at As Type = GetType(AssemblyCopyrightAttribute)
            Dim r() As Object = myType.Assembly.GetCustomAttributes(at, False)
            Dim ct As AssemblyCopyrightAttribute = CType(r(0), AssemblyCopyrightAttribute)
            Return ct.Copyright
        End Get
    End Property
    Public ReadOnly Property Company() As String
        Get
            Dim at As Type = GetType(AssemblyCompanyAttribute)
            Dim r() As Object = myType.Assembly.GetCustomAttributes(at, False)
            Dim ct As AssemblyCompanyAttribute = CType(r(0), AssemblyCompanyAttribute)
            Return ct.Company
        End Get
    End Property
    Public ReadOnly Property Description() As String
        Get
            Dim at As Type = GetType(AssemblyDescriptionAttribute)
            Dim r() As Object = myType.Assembly.GetCustomAttributes(at, False)
            Dim da As AssemblyDescriptionAttribute = CType(r(0), AssemblyDescriptionAttribute)
            Return da.Description
        End Get
    End Property
    Public ReadOnly Property Product() As String
        Get
            Dim at As Type = GetType(AssemblyProductAttribute)
            Dim r() As Object = myType.Assembly.GetCustomAttributes(at, False)
            Dim pt As AssemblyProductAttribute = CType(r(0), AssemblyProductAttribute)
            Return pt.Product
        End Get
    End Property
    Public ReadOnly Property Title() As String
        Get
            Dim at As Type = GetType(AssemblyTitleAttribute)
            Dim r() As Object = myType.Assembly.GetCustomAttributes(at, False)
            Dim ta As AssemblyTitleAttribute = CType(r(0), AssemblyTitleAttribute)
            Return ta.Title
        End Get
    End Property
    Public ReadOnly Property Version() As String
        Get
            Return myType.Assembly.GetName.Version.ToString()
        End Get
    End Property
End Class

#End Region

