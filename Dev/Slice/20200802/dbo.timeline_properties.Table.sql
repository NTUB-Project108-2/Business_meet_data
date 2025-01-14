USE [BeMet]
GO
/****** Object:  Table [dbo].[timeline_properties]    Script Date: 2020/8/2 上午 11:28:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timeline_properties](
	[timeline_properties_no] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[timeline_properties_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[timeline_properties] ON 

INSERT [dbo].[timeline_properties] ([timeline_properties_no], [name], [create_date], [modify_date]) VALUES (1, N'活動', CAST(N'2020-08-01T15:15:32.370' AS DateTime), NULL)
INSERT [dbo].[timeline_properties] ([timeline_properties_no], [name], [create_date], [modify_date]) VALUES (2, N'遇見', CAST(N'2020-08-01T15:15:32.370' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[timeline_properties] OFF
GO
