USE [BeMet]
GO
/****** Object:  Table [dbo].[activity_remind]    Script Date: 2020/7/3 下午 05:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_remind](
	[activity_remind_no] [int] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NULL,
	[activity_no] [int] NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[activity_remind_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[activity_remind]  WITH CHECK ADD FOREIGN KEY([activity_no])
REFERENCES [dbo].[timeline] ([timeline_no])
GO
