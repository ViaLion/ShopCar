USE [Shopping]
GO

/****** Object:  Table [dbo].[Dingdan]    Script Date: 2019/11/24 18:01:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dingdan](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[uname] [nvarchar](50) NOT NULL,
	[gid] [int] NOT NULL,
	[number] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


insert into Dingdan(uname,gid,number) values('lion',1,1)