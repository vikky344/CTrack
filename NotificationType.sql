CREATE TABLE [dbo].[NotificationType] (

	NotificationTypePID BIGINT IDENTITY(1,1) NOT NULL,
	[Type] VARCHAR(50) NOT NULL,
	CreatedON DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedOn DATETIME NULL,
	CreatedBy BIGINT NOT NULL,
	UpdatedBy BIGINT NULL
)

GO

--PK_NotificationType
ALTER TABLE [dbo].[NotificationType]
	ADD CONSTRAINT [PK_NotificationType] PRIMARY KEY CLUSTERED ([NotificationTypePID] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY= OFF, STATISTICS_NORECOMPUTE = OFF)

GO

SET IDENTITY_INSERT [dbo].[NotificationType] OFF

INSERT INTO [dbo].[NotificationType] (NotificationTypePID,[Type],CreatedBy) VALUES(1,'SendConformation',1/*System*/)
INSERT INTO [dbo].[NotificationType] (NotificationTypePID,[Type],CreatedBy) VALUES(2,'Conformed',1/*System*/)

SET IDENTITY_INSERT [dbo].[NotificationType] ON

GO
