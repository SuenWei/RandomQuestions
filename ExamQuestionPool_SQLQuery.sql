Create database dbQuestionPool; 

use dbQuestionPool

drop table tblQuestionPool
drop table tblExamPaper

CREATE TABLE [dbo].[tblQuestionPool](
	[fQuestionID] int IDENTITY(1,1) PRIMARY KEY,
	[fQuestion] [nvarchar](500) NOT NULL DEFAULT 0,
	[fChoice1] [nvarchar](500) NOT NULL DEFAULT 0,
	[fChoice2] [nvarchar](500) NOT NULL DEFAULT 0,
	[fChoice3] [nvarchar](500) NOT NULL DEFAULT 0,
	[fChoice4] [nvarchar](500) NOT NULL DEFAULT 0,
	[fAnswer] [nvarchar](500) NOT NULL DEFAULT 0
	)





CREATE TABLE [dbo].[tblExamPaper](
	[fExamPaperID] int IDENTITY(1,1) PRIMARY KEY,
	[fQuestion1] [nvarchar](500) NOT NULL,
	[fQuestion2] [nvarchar](500) NOT NULL,
	[fQuestion3] [nvarchar](500) NOT NULL,
	[fQuestion4] [nvarchar](500) NOT NULL,
	[fQuestion5] [nvarchar](500) NOT NULL,
	[fQuestion6] [nvarchar](500) NOT NULL,
	[fQuestion7] [nvarchar](500) NOT NULL,
	[fQuestion8] [nvarchar](500) NOT NULL,
	[fQuestion9] [nvarchar](500) NOT NULL,
	[fQuestion10] [nvarchar](500) NOT NULL
)


SET IDENTITY_INSERT [dbo].[tblQuestionPool] ON 
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (3, N'What is M in MVC ?', N'Manage', N'Mail', N'Major', N'Model', N'Model')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (4, N'What is V in MVC ?', N'Value', N'View', N'Vehicle', N'Vein', N'View')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (5, N'What is C in MVC ?', N'Calculate', N'Cancer', N'Card', N'Controller', N'Controller')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (43, N'請問 21 的平方等於 ?', N'5865', N'4946', N'7667', N'441', N'441')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (44, N'請問 46 的平方等於 ?', N'5301', N'1275', N'4859', N'2116', N'2116')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (45, N'請問 37 的平方等於 ?', N'8771', N'459', N'8768', N'1369', N'111')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (47, N'請問 11 的平方等於 ?', N'2282', N'7492', N'121', N'5504', N'121')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (49, N'請問 8 的平方等於 ?', N'782', N'5634', N'64', N'3333', N'64')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (50, N'請問 95 的平方等於 ?', N'8733', N'8471', N'9025', N'5255', N'9025')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (51, N'請問 27 的平方等於 ?', N'8222', N'8059', N'729', N'240', N'729')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (52, N'請問 78 的平方等於 ?', N'9939', N'8385', N'6084', N'7045', N'6084')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (53, N'請問 8 的平方等於 ?', N'7833', N'2721', N'64', N'9086', N'64')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (54, N'請問 49 的平方等於 ?', N'3492', N'8158', N'2401', N'4444', N'2401')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (57, N'請問 57 的平方等於 ?', N'542', N'5742', N'3249', N'1478', N'3249')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (58, N'請問 94 的平方等於 ?', N'6263', N'5195', N'8836', N'4734', N'8836')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (59, N'請問 13 的平方等於 ?', N'7108', N'8894', N'169', N'2378', N'169')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (60, N'請問 35 的平方等於 ?', N'5994', N'2724', N'1225', N'2656', N'1225')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (61, N'請問 52 的平方等於 ?', N'8584', N'5376', N'2704', N'2832', N'2704')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (62, N'請問 48 的平方等於 ?', N'159', N'1907', N'2304', N'4622', N'2304')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (64, N'請問 32 的平方等於 ?', N'5194', N'3765', N'1024', N'1254', N'1024')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (66, N'請問 45 的平方等於 ?', N'4420', N'787', N'2025', N'8732', N'2025')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (67, N'請問 62 的平方等於 ?', N'6168', N'7496', N'3844', N'272', N'3844')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (68, N'請問 21 的平方等於 ?', N'9292', N'3583', N'441', N'2410', N'441')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (70, N'請問 86 的平方等於 ?', N'7262', N'5549', N'7396', N'6003', N'7396')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (71, N'請問 67 的平方等於 ?', N'4948', N'9370', N'4489', N'9063', N'4489')
INSERT [dbo].[tblQuestionPool] ([fQuestionID], [fQuestion], [fChoice1], [fChoice2], [fChoice3], [fChoice4], [fAnswer]) VALUES (72, N'請問 92 的平方等於 ?', N'7644', N'6386', N'8464', N'6823', N'8464')
SET IDENTITY_INSERT [dbo].[tblQuestionPool] OFF
GO
