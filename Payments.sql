CREATE TABLE [dbo].[Payments] (

	PaymentsPID BIGINT IDENTITY(1,1) NOT NULL,
	PeoplePID BIGINT  NOT NULL,
	[Month]  INT NOT NULL,
	Amount MONEY NOT NULL,
	ChittiPID BIGINT NOT NULL,
	CreatedON DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedOn DATETIME NULL,
	CreatedBy BIGINT NOT NULL,
	UpdatedBy BIGINT NULL
)

GO

--PK_Payments
ALTER TABLE [dbo].[Payments]
	ADD CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED ([Payments] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY= OFF, STATISTICS_NORECOMPUTE = OFF)

GO

--FK_Payments_People
ALTER TABLE [dbo].[Payments]
	ADD CONSTRAINT [FK_Payments_People] FOREIGN KEY ([PeoplePID]) REFERENCES [dbo].[People] ([People]) ON DELETE NO ACTION ON UPDATE NO ACTION;

GO

	
--FK_Payments_Chitti
ALTER TABLE [dbo].[Payments]
	ADD CONSTRAINT [FK_Payments_Chitti] FOREIGN KEY ([ChittiPID]) REFERENCES [dbo].[Chitti] ([ChittiPID]) ON DELETE NO ACTION ON UPDATE NO ACTION;

GO

