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

