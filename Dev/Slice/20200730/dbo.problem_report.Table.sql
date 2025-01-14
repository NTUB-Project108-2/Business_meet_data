USE [BeMet]
GO
/****** Object:  Table [dbo].[problem_report]    Script Date: 2020/7/30 下午 06:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[problem_report](
	[problem_report_no] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](3000) NOT NULL,
	[user_id] [varchar](100) NOT NULL,
	[status] [varchar](3) NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[create_date] [datetime] NOT NULL,
	[modify_date] [datetime] NULL,
 CONSTRAINT [PK__problem___2F3B1AD2FFAE5162] PRIMARY KEY CLUSTERED 
(
	[problem_report_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[problem_report]  WITH CHECK ADD  CONSTRAINT [FK__problem_r__user___4CA06362] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_information] ([user_id])
GO
ALTER TABLE [dbo].[problem_report] CHECK CONSTRAINT [FK__problem_r__user___4CA06362]
GO
