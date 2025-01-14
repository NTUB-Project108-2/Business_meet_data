USE [BeMet]
GO
/****** Object:  Table [dbo].[activity_invite]    Script Date: 2020/9/2 下午 10:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_invite](
	[activityInvite_no] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](100) NOT NULL,
	[activity_no] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[modify_date] [datetime] NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK__activity__B60E543D0891B2C5] PRIMARY KEY CLUSTERED 
(
	[activityInvite_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[activity_invite]  WITH CHECK ADD  CONSTRAINT [FK__activity___activ__49C3F6B7] FOREIGN KEY([activity_no])
REFERENCES [dbo].[timeline] ([timeline_no])
GO
ALTER TABLE [dbo].[activity_invite] CHECK CONSTRAINT [FK__activity___activ__49C3F6B7]
GO
ALTER TABLE [dbo].[activity_invite]  WITH CHECK ADD  CONSTRAINT [FK__activity___user___48CFD27E] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_information] ([user_id])
GO
ALTER TABLE [dbo].[activity_invite] CHECK CONSTRAINT [FK__activity___user___48CFD27E]
GO
