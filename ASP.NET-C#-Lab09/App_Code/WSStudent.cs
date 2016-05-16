using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WSStudent
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]  // Required to be able to call from the client.
public class WSStudent : System.Web.Services.WebService
{

    List<Student> _StudentList;

    public WSStudent()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent();

        // Create a list of students
        _StudentList = new List<Student>();

        _StudentList.Add(new Student(0, "Morrison", "Jim"));
        _StudentList.Add(new Student(1, "Hendrix", "Jimi"));
        _StudentList.Add(new Student(2, "Joplin", "Janis"));

    }

    [WebMethod]
    public Student GetStudent(string studentID)
    {
        Student myStudent = null;
        int id = 0;

        // convert the string to an integer
        id = int.Parse(studentID);

        // If the studentID is withinrange 
        if (id < 0 || id >= _StudentList.Count)
        {
            myStudent = new Student(int.MinValue, "Not", "Found");
        }
        else
        {
            myStudent = _StudentList[id];
        }

        return myStudent;
    }

    [WebMethod]
    public string GetStudentName(string studentID)
    {
        string name = string.Empty;
        int id = 0;

        // convert the string to an integer
        id = int.Parse(studentID);

        // If the studentID is withinrange 
        if (id < 0 || id >= _StudentList.Count)
        {
            name = "Not Found";
        }
        else
        {
            name = _StudentList[id].LastName + ", " + _StudentList[id].FirstName;
        }

        return name;
    }
}



