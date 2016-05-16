 
/********************************************************************************************/
 
 
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[ClassMeeting]'))
DROP Table  ClassMeeting;

 IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[Registration]'))
DROP Table  Registration;

 
IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[Calendar]'))
DROP Table  Calendar;

 IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[Student]'))
DROP Table  Student;

 IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[Section]'))
DROP Table  Section;

 IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[Attendance]'))
DROP Table  Attendance;

IF  EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[AppUser]'))
DROP Table  [AppUser];



CREATE TABLE [dbo].[Calendar] (
    [CalendarID] INT      NOT NULL,
    [Date]       DATE     NOT NULL,
    [CreateDate] DATETIME CONSTRAINT [DF_Calendar_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [aaaPK_Calendar] PRIMARY KEY NONCLUSTERED ([CalendarID] ASC)
);



CREATE TABLE [dbo].[Section] (
    [SectionID]  INT           IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (50) NOT NULL,
    [CreditHours] INT DEFAULT (3) NOT NULL,
    [CreateDate] DATETIME      CONSTRAINT [DF_Section_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [aaaPK_Section] PRIMARY KEY NONCLUSTERED ([SectionID] ASC)
);


CREATE TABLE [dbo].[Student] (
    [StudentID]  INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]  NVARCHAR (50) NOT NULL,
    [LastName]   NVARCHAR (50) CONSTRAINT [DF_Student_MCVersion] DEFAULT ((1)) NOT NULL,
    [ScholarShip]   MONEY DEFAULT (0) NOT NULL,
    [Enrolled]   DATE          NULL,
    [CreateDate] DATETIME      CONSTRAINT [DF_Student_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [aaaPK_Student] PRIMARY KEY NONCLUSTERED ([StudentID] ASC)
);



 CREATE TABLE [dbo].[Attendance] (
    [AttendanceID] INT        NOT NULL,
    [Name]         NCHAR (25) NOT NULL,
    [CreateDate]   DATETIME   DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([AttendanceID] ASC)
);


CREATE TABLE [dbo].[ClassMeeting] (
    [ClassMeetingID] INT      IDENTITY (1, 1) NOT NULL,
    [CalendarID]     INT      NOT NULL,
    [SectionID]      INT      NOT NULL,
    [StudentID]      INT      NOT NULL,
    [AttendanceID]   INT      DEFAULT ((1)) NOT NULL,
    [CreateDate]     DATETIME CONSTRAINT [DF_ClassMeeting_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [aaaPK_Attendance] PRIMARY KEY NONCLUSTERED ([ClassMeetingID] ASC),
    CONSTRAINT [FK_ClassMeeting_Calendar] FOREIGN KEY ([CalendarID]) REFERENCES [dbo].[Calendar] ([CalendarID]),
    CONSTRAINT [FK_ClassMeeting_Section] FOREIGN KEY ([SectionID]) REFERENCES [dbo].[Section] ([SectionID]),
    CONSTRAINT [FK_ClassMeeting_Student] FOREIGN KEY ([StudentID]) REFERENCES [dbo].[Student] ([StudentID]),
    CONSTRAINT [FK_ClassMeeting_Attendance] FOREIGN KEY ([AttendanceID]) REFERENCES [dbo].[Attendance] ([AttendanceID])
);

 
CREATE TABLE [dbo].[Registration] (
    [RegistrationID] INT      IDENTITY (1, 1) NOT NULL,
    [SectionID]      INT      NOT NULL,
    [StudentID]      INT      NOT NULL,
    [CreateDate]     DATETIME  DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [aaaPK_Registration] PRIMARY KEY NONCLUSTERED ([RegistrationID] ASC),
    CONSTRAINT [FK_Registration_Section] FOREIGN KEY ([SectionID]) REFERENCES [dbo].[Section] ([SectionID]),
    CONSTRAINT [FK_Registration_Student] FOREIGN KEY ([StudentID]) REFERENCES [dbo].[Student] ([StudentID])
    
);

 
CREATE TABLE [dbo].[AppUser] (
    [AppUserID]  INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]  NVARCHAR (50) NOT NULL,
    [LastName]   NVARCHAR (50)   NOT NULL,
    [EMail]      NVARCHAR (50)  NOT NULL,
    [Password]    NVARCHAR (50)   NOT NULL,
    [CreateDate] DATETIME      CONSTRAINT [DF_AppUser_CreateDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [aaaPK_User] PRIMARY KEY NONCLUSTERED ([AppUserID] ASC)
);



/********************************************************************************************/
/********************************************************************************************/
/***** Load Data ****************************************************************************/
/********************************************************************************************/
/********************************************************************************************/



INSERT INTO Calendar (CalendarID, Date) VALUES (1, '1/1/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (2, '1/2/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (3, '1/3/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (4, '1/4/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (5, '1/5/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (6, '1/6/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (7, '1/7/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (8, '1/8/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (9, '1/9/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (10, '1/10/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (11, '1/11/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (12, '1/12/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (13, '1/13/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (14, '1/14/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (15, '1/15/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (16, '1/16/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (17, '1/17/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (18, '1/18/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (19, '1/19/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (20, '1/20/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (21, '1/21/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (22, '1/22/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (23, '1/23/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (24, '1/24/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (25, '1/25/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (26, '1/26/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (27, '1/27/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (28, '1/28/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (29, '1/29/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (30, '1/30/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (31, '1/31/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (32, '2/1/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (33, '2/2/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (34, '2/3/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (35, '2/4/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (36, '2/5/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (37, '2/6/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (38, '2/7/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (39, '2/8/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (40, '2/9/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (41, '2/10/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (42, '2/11/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (43, '2/12/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (44, '2/13/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (45, '2/14/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (46, '2/15/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (47, '2/16/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (48, '2/17/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (49, '2/18/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (50, '2/19/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (51, '2/20/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (52, '2/21/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (53, '2/22/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (54, '2/23/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (55, '2/24/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (56, '2/25/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (57, '2/26/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (58, '2/27/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (59, '2/28/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (60, '3/1/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (61, '3/2/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (62, '3/3/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (63, '3/4/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (64, '3/5/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (65, '3/6/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (66, '3/7/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (67, '3/8/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (68, '3/9/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (69, '3/10/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (70, '3/11/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (71, '3/12/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (72, '3/13/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (73, '3/14/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (74, '3/15/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (75, '3/16/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (76, '3/17/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (77, '3/18/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (78, '3/19/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (79, '3/20/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (80, '3/21/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (81, '3/22/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (82, '3/23/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (83, '3/24/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (84, '3/25/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (85, '3/26/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (86, '3/27/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (87, '3/28/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (88, '3/29/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (89, '3/30/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (90, '3/31/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (91, '4/1/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (92, '4/2/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (93, '4/3/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (94, '4/4/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (95, '4/5/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (96, '4/6/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (97, '4/7/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (98, '4/8/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (99, '4/9/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (100, '4/10/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (101, '4/11/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (102, '4/12/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (103, '4/13/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (104, '4/14/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (105, '4/15/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (106, '4/16/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (107, '4/17/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (108, '4/18/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (109, '4/19/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (110, '4/20/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (111, '4/21/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (112, '4/22/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (113, '4/23/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (114, '4/24/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (115, '4/25/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (116, '4/26/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (117, '4/27/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (118, '4/28/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (119, '4/29/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (120, '4/30/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (121, '5/1/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (122, '5/2/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (123, '5/3/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (124, '5/4/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (125, '5/5/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (126, '5/6/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (127, '5/7/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (128, '5/8/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (129, '5/9/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (130, '5/10/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (131, '5/11/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (132, '5/12/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (133, '5/13/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (134, '5/14/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (135, '5/15/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (136, '5/16/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (137, '5/17/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (138, '5/18/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (139, '5/19/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (140, '5/20/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (141, '5/21/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (142, '5/22/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (143, '5/23/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (144, '5/24/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (145, '5/25/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (146, '5/26/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (147, '5/27/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (148, '5/28/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (149, '5/29/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (150, '5/30/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (151, '5/31/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (152, '6/1/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (153, '6/2/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (154, '6/3/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (155, '6/4/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (156, '6/5/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (157, '6/6/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (158, '6/7/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (159, '6/8/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (160, '6/9/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (161, '6/10/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (162, '6/11/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (163, '6/12/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (164, '6/13/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (165, '6/14/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (166, '6/15/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (167, '6/16/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (168, '6/17/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (169, '6/18/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (170, '6/19/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (171, '6/20/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (172, '6/21/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (173, '6/22/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (174, '6/23/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (175, '6/24/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (176, '6/25/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (177, '6/26/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (178, '6/27/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (179, '6/28/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (180, '6/29/2016') ;
INSERT INTO Calendar (CalendarID, Date) VALUES (181, '6/30/2016') ;
 

INSERT INTO Section (Name, CreditHours) VALUES ('ENG 1010', 3) ;
INSERT INTO Section (Name, CreditHours) VALUES ('IT 1025', 4) ;
INSERT INTO Section (Name, CreditHours) VALUES ('ITWM 1010', 3) ;
INSERT INTO Section (Name, CreditHours) VALUES ('ITWM 2030', 2) ;


INSERT INTO Student (FirstName, LastName, ScholarShip, Enrolled) VALUES ('George', 'Gilby', 0, '5/18/2010') ;
INSERT INTO Student (FirstName, LastName, ScholarShip, Enrolled) VALUES ('Bob', 'Biggs', 1000, '8/18/2011') ;
INSERT INTO Student (FirstName, LastName, ScholarShip, Enrolled) VALUES ('Debbie', 'Dutton', 550, '6/1/2011') ;
INSERT INTO Student (FirstName, LastName, ScholarShip, Enrolled) VALUES ('Gretta', 'Schwartz', 0, '7/22/2012') ;
INSERT INTO Student (FirstName, LastName, ScholarShip, Enrolled) VALUES ('Jerry', 'Bechtel', 1050, '11/28/2011') ;
INSERT INTO Student (FirstName, LastName, ScholarShip, Enrolled) VALUES ('Jack', 'Schmucki', 0, '10/08/2010') ;
INSERT INTO Student (FirstName, LastName, ScholarShip, Enrolled) VALUES ('Polly', 'McIntire', 0, '09/02/2010') ;
INSERT INTO Student (FirstName, LastName, ScholarShip, Enrolled) VALUES ('Yolonda', 'Secundo', 0, '09/15/2009') ;
INSERT INTO Student (FirstName, LastName, ScholarShip, Enrolled) VALUES ('Clarice', 'Stanton', 0, '08/15/2010') ;
 


INSERT INTO Attendance(AttendanceID, Name) VALUES (1, 'Present') ;
INSERT INTO Attendance(AttendanceID, Name) VALUES (2, 'Absent') ;
INSERT INTO Attendance(AttendanceID, Name) VALUES (3, 'Unexcused Absence') ;

DELETE FROM Registration ;

INSERT INTO Registration (SectionID, StudentID) VALUES (1,	1) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (1,	2) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (1,	3) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (1,	4) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (1,	5) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (1,	6) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (1,	7) ;


INSERT INTO Registration (SectionID, StudentID) VALUES (2,	1) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (2,	2) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (2,	3) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (2,	5) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (2,	6) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (2,	7) ;

INSERT INTO Registration (SectionID, StudentID) VALUES (3,	1) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (3,	2) ;
INSERT INTO Registration (SectionID, StudentID) VALUES (3,	3) ;

INSERT INTO Registration (SectionID, StudentID) VALUES (4,	1) ;



DELETE FROM ClassMeeting ;

INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	17	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	22	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	24	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	29	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	31	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	36	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	38	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	43	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	45	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	50	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	52	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	57	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	59	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	64	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	66	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	71	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	73	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	78	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	80	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	85	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	87	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	92	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	94	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	99	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	101	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	106	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	108	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	113	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	115	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	120	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	122	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	127	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	129	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	134	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	136	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	141	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	143	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	148	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	150	,	2	,	1	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	15	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	17	,	2	,	2	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	22	,	2	,	2	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	24	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	29	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	31	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	36	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	38	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	43	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	45	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	50	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	52	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	57	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	59	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	64	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	66	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	71	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	73	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	78	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	80	,	2	,	2	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	85	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	87	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	92	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	94	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	99	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	101	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	106	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	108	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	113	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	115	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	120	,	2	,	2	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	122	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	127	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	129	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	134	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	136	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	141	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	143	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	148	,	2	,	2	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	150	,	2	,	2	,	1	) ;


INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	15	,	2	,	3	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	17	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	22	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	24	,	2	,	3	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	29	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	31	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	36	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	38	,	2	,	3	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	43	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	45	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	50	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	52	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	57	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	59	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	64	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	66	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	71	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	73	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	78	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	80	,	2	,	3	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	85	,	2	,	3	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	87	,	2	,	3	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	92	,	2	,	3	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	94	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	99	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	101	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	106	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	108	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	113	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	115	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	120	,	2	,	3	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	122	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	127	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	129	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	134	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	136	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	141	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	143	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	148	,	2	,	3	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	150	,	2	,	3	,	1	) ;


INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	15	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	17	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	22	,	2	,	4	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	24	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	29	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	31	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	36	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	38	,	2	,	4	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	43	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	45	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	50	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	52	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	57	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	59	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	64	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	66	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	71	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	73	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	78	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	80	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	85	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	87	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	92	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	94	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	99	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	101	,	2	,	4	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	106	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	108	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	113	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	115	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	120	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	122	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	127	,	2	,	4	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	129	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	134	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	136	,	2	,	4	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	141	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	143	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	148	,	2	,	4	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	150	,	2	,	4	,	1	) ;




INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	15	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	17	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	22	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	24	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	29	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	31	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	36	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	38	,	2	,	5	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	43	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	45	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	50	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	52	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	57	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	59	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	64	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	66	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	71	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	73	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	78	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	80	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	85	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	87	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	92	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	94	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	99	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	101	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	106	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	108	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	113	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	115	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	120	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	122	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	127	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	129	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	134	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	136	,	2	,	5	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	141	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	143	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	148	,	2	,	5	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	150	,	2	,	5	,	1	) ;


INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	15	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	17	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	22	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	24	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	29	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	31	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	36	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	38	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	43	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	45	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	50	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	52	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	57	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	59	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	64	,	2	,	6	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	66	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	71	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	73	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	78	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	80	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	85	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	87	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	92	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	94	,	2	,	6	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	99	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	101	,	2	,	6	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	106	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	108	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	113	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	115	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	120	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	122	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	127	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	129	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	134	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	136	,	2	,	6	,	2	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	141	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	143	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	148	,	2	,	6	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	150	,	2	,	6	,	1	) ;

INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	15	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	17	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	22	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	24	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	29	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	31	,	2	,	7	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	36	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	38	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	43	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	45	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	50	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	52	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	57	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	59	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	64	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	66	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	71	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	73	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	78	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	80	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	85	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	87	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	92	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	94	,	2	,	7	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	99	,	2	,	7	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	101	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	106	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	108	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	113	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	115	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	120	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	122	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	127	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	129	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	134	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	136	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	141	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	143	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	148	,	2	,	7	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	150	,	2	,	7	,	1	) ;

INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	15	,	2	,	8	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	17	,	2	,	8	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	22	,	2	,	8	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	24	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	29	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	31	,	2	,	8	,	3	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	36	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	38	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	43	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	45	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	50	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	52	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	57	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	59	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	64	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	66	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	71	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	73	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	78	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	80	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	85	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	87	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	92	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	94	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	99	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	101	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	106	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	108	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	113	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	115	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	120	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	122	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	127	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	129	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	134	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	136	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	141	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	143	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	148	,	2	,	8	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	150	,	2	,	8	,	1	) ;

INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	15	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	17	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	22	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	24	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	29	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	31	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	36	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	38	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	43	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	45	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	50	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	52	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	57	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	59	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	64	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	66	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	71	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	73	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	78	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	80	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	85	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	87	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	92	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	94	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	99	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	101	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	106	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	108	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	113	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	115	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	120	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	122	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	127	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	129	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	134	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	136	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	141	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	143	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	148	,	2	,	9	,	1	) ;
INSERT INTO ClassMeeting (CalendarID, SectionID, StudentID,  AttendanceID) VALUES (	150	,	2	,	9	,	1	) ;


INSERT INTO [AppUser] (FirstName, LastName, Email, Password) VALUES ('Ace', 'Gayhart', 'Ace.Gayhart@tri-c.edu', 'P@$$word!') ;
 
