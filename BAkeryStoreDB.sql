USE [BakeryStoreDB]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[CatgId] [int] IDENTITY(1,1) NOT NULL,
	[CatgName] [varchar](50) NOT NULL,
	[DeptId] [int] NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[CatgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Department]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Department](
	[DeptId] [int] IDENTITY(1,1) NOT NULL,
	[DeptName] [varchar](20) NOT NULL,
	[LocId] [int] NULL,
 CONSTRAINT [PK_tbl_Department] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Location]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Location](
	[LocId] [int] IDENTITY(1,1) NOT NULL,
	[LocName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_Location] PRIMARY KEY CLUSTERED 
(
	[LocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Role]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](10) NULL,
 CONSTRAINT [PK_tbl_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SkuDetails]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SkuDetails](
	[SKUId] [int] IDENTITY(1,1) NOT NULL,
	[SKUName] [varchar](50) NULL,
	[LocID] [int] NULL,
	[DeptId] [int] NULL,
	[CatgId] [int] NULL,
	[SubCatgId] [int] NULL,
 CONSTRAINT [PK_tbl_SkuDetails] PRIMARY KEY CLUSTERED 
(
	[SKUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SubCategory]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SubCategory](
	[SubCatgId] [int] IDENTITY(1,1) NOT NULL,
	[SubCatgName] [varchar](50) NOT NULL,
	[CatgId] [int] NULL,
 CONSTRAINT [PK_tbl_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCatgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](10) NOT NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[CategoryNames]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from tbl_role

create VIEW [dbo].[CategoryNames] AS SELECT CatgId,CatgName FROM [tbl_Category] 
GO
/****** Object:  View [dbo].[DepartmentNames]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from tbl_role

create VIEW [dbo].[DepartmentNames] AS SELECT DeptId,DeptName FROM [tbl_Department] 
GO
/****** Object:  View [dbo].[LocationNames]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from tbl_role

create VIEW [dbo].[LocationNames] AS SELECT LocId,LocName FROM [tbl_Location] 
GO
/****** Object:  View [dbo].[SubCategoryNames]    Script Date: 4/1/2020 2:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from tbl_role

create VIEW [dbo].[SubCategoryNames] AS SELECT SubCatgId,SubCatgName FROM [tbl_SubCategory] 
GO
ALTER TABLE [dbo].[tbl_Category]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Category_tbl_Department] FOREIGN KEY([DeptId])
REFERENCES [dbo].[tbl_Department] ([DeptId])
GO
ALTER TABLE [dbo].[tbl_Category] CHECK CONSTRAINT [FK_tbl_Category_tbl_Department]
GO
ALTER TABLE [dbo].[tbl_Department]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Department_tbl_Location] FOREIGN KEY([LocId])
REFERENCES [dbo].[tbl_Location] ([LocId])
GO
ALTER TABLE [dbo].[tbl_Department] CHECK CONSTRAINT [FK_tbl_Department_tbl_Location]
GO
ALTER TABLE [dbo].[tbl_SkuDetails]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SkuDetails_tbl_SubCategory] FOREIGN KEY([SubCatgId])
REFERENCES [dbo].[tbl_SubCategory] ([SubCatgId])
GO
ALTER TABLE [dbo].[tbl_SkuDetails] CHECK CONSTRAINT [FK_tbl_SkuDetails_tbl_SubCategory]
GO
ALTER TABLE [dbo].[tbl_SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SubCategory_tbl_Category] FOREIGN KEY([CatgId])
REFERENCES [dbo].[tbl_Category] ([CatgId])
GO
ALTER TABLE [dbo].[tbl_SubCategory] CHECK CONSTRAINT [FK_tbl_SubCategory_tbl_Category]
GO
ALTER TABLE [dbo].[tbl_User]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_tbl_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbl_Role] ([RoleId])
GO
ALTER TABLE [dbo].[tbl_User] CHECK CONSTRAINT [FK_tbl_User_tbl_Role]
GO
