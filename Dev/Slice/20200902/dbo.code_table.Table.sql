USE [BeMet]
GO
/****** Object:  Table [dbo].[code_table]    Script Date: 2020/9/2 下午 10:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[code_table](
	[table_name] [varchar](100) NOT NULL,
	[column_name] [varchar](100) NOT NULL,
	[code] [int] NOT NULL,
	[value] [varchar](100) NULL,
	[status] [char](1) NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
 CONSTRAINT [PK_code_table] PRIMARY KEY CLUSTERED 
(
	[table_name] ASC,
	[column_name] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[code_table] ([table_name], [column_name], [code], [value], [status], [create_date], [modify_date]) VALUES (N'activity_invite', N'status', 1, N'邀請中', N'Y', CAST(N'2020-09-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[code_table] ([table_name], [column_name], [code], [value], [status], [create_date], [modify_date]) VALUES (N'activity_invite', N'status', 2, N'已加入', N'Y', CAST(N'2020-09-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[code_table] ([table_name], [column_name], [code], [value], [status], [create_date], [modify_date]) VALUES (N'activity_invite', N'status', 3, N'已拒絕', N'Y', CAST(N'2020-09-02T00:00:00.000' AS DateTime), NULL)
