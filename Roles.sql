CREATE TABLE [dbo].[Roles] (

	RolesPID BIGINT IDENTITY(1,1) NOT NULL,
	Name VARCHAR(50) NOT NULL,
	CreatedON DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedOn DATETIME NULL,
	CreatedBy BIGINT NOT NULL,
	UpdatedBy BIGINT NULL
)

GO

--PK_Roles
ALTER TABLE [dbo].[Roles]
	ADD CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED ([RolesPID] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY= OFF, STATISTICS_NORECOMPUTE = OFF)

GO

SET IDENTITY_INSERT [dbo].[Roles] OFF

INSERT INTO [dbo].[Roles] (RolesPID,Name,CreatedBy) VALUES(1,'Admin',1/*System*/)
INSERT INTO [dbo].[Roles] (RolesPID,Name,CreatedBy) VALUES(2,'Read Only',1/*System*/)
INSERT INTO [dbo].[Roles] (RolesPID,Name,CreatedBy) VALUES(3,'Read and Write',1/*System*/)

SET IDENTITY_INSERT [dbo].[Roles] ON

GO
