using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for Students
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class Students : System.Web.Services.WebService
{
    static List<string> studentList;

    /// <summary>
    /// The constructor sets up the list of students. We use classic rock 
    /// </summary>
    public Students()
    {

        studentList = new List<string>();

        studentList.Add("Jason Henderson");
        studentList.Add("Yogi Bear");
        studentList.Add("Scooby Doo");
    }

    [WebMethod]
    public string GetName(string id)
    {
        string name = string.Empty;
        int studentId = 0;

        //Convert the string to Integer.
        studentId = int.Parse(id);

        //Verify that the studentId is within range.
        if (studentId < 0 || studentId >= studentList.Count)
        {
            name = "Not Found";
        }
        else
        {
            name = studentList[studentId];
        }
        return name;
    }

}
