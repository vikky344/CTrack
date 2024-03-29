CREATE TABLE [dbo].[User] (

	UserPID BIGINT IDENTITY(1,1) NOT NULL,
	Name VARCHAR(50) NOT NULL,
	PhoneNumber BIGINT NOT NULL,
	PinNumber BIGINT NOT NULL,
	DeviseInfo VARCHAR(256) NOT NULL,
	CreatedON DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedOn DATETIME NULL,
	CreatedBy BIGINT NOT NULL,
	UpdatedBy BIGINT NULL
)

GO

--PK_User
ALTER TABLE [dbo].[User]
	ADD CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserPID] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY= OFF, STATISTICS_NORECOMPUTE = OFF)

GO
