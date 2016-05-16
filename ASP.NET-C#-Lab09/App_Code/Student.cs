using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Student
/// </summary>
public class Student
{
    public Student()
    {
        // A Constructor without parameters is required
        // for the class to be used in a Web Service
    }

    /// <summary>
    /// Constructor initialized with the ID and name
    /// </summary>
    /// <param name="lastName"></param>
    /// <param name="firstName"></param>
    public Student(int id, string lastName, string firstName)
    {
        ID = id;
        FirstName = firstName;
        LastName = lastName;
    }

    public int ID { get; set; }

    public string FirstName { get; set; }

    public string LastName { get; set; }
}