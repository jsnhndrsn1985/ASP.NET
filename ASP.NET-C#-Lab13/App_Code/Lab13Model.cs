﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Attendance
{
    public Attendance()
    {
        this.ClassMeetings = new HashSet<ClassMeeting>();
    }

    public int AttendanceID { get; set; }
    public string Name { get; set; }
    public System.DateTime CreateDate { get; set; }

    public virtual ICollection<ClassMeeting> ClassMeetings { get; set; }
}

public partial class Calendar
{
    public Calendar()
    {
        this.ClassMeetings = new HashSet<ClassMeeting>();
    }

    public int CalendarID { get; set; }
    public System.DateTime Date { get; set; }
    public System.DateTime CreateDate { get; set; }

    public virtual ICollection<ClassMeeting> ClassMeetings { get; set; }
}

public partial class ClassMeeting
{
    public int ClassMeetingID { get; set; }
    public int CalendarID { get; set; }
    public int SectionID { get; set; }
    public int StudentID { get; set; }
    public int AttendanceID { get; set; }
    public System.DateTime CreateDate { get; set; }

    public virtual Attendance Attendance { get; set; }
    public virtual Calendar Calendar { get; set; }
    public virtual Section Section { get; set; }
    public virtual Student Student { get; set; }
}

public partial class Registration
{
    public int RegistrationID { get; set; }
    public int SectionID { get; set; }
    public int StudentID { get; set; }
    public System.DateTime CreateDate { get; set; }

    public virtual Section Section { get; set; }
    public virtual Student Student { get; set; }
}

public partial class Section
{
    public Section()
    {
        this.ClassMeetings = new HashSet<ClassMeeting>();
        this.Registrations = new HashSet<Registration>();
    }

    public int SectionID { get; set; }
    public string Name { get; set; }
    public int CreditHours { get; set; }
    public System.DateTime CreateDate { get; set; }

    public virtual ICollection<ClassMeeting> ClassMeetings { get; set; }
    public virtual ICollection<Registration> Registrations { get; set; }
}

public partial class Student
{
    public Student()
    {
        this.ClassMeetings = new HashSet<ClassMeeting>();
        this.Registrations = new HashSet<Registration>();
    }

    public int StudentID { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public decimal ScholarShip { get; set; }
    public Nullable<System.DateTime> Enrolled { get; set; }
    public System.DateTime CreateDate { get; set; }

    public virtual ICollection<ClassMeeting> ClassMeetings { get; set; }
    public virtual ICollection<Registration> Registrations { get; set; }
}