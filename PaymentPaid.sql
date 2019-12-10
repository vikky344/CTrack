CREATE TABLE [dbo].[PaymentPaid] (

	PaymentPaidPID BIGINT IDENTITY(1,1) NOT NULL,
	PeoplePID BIGINT  NOT NULL,
	ChittiPID BIGINT NOT NULL,
	PaidAmount MONEY NOT NULL,
	[Date] DATETIME NOT NULL,
	Comments VARCHAR(256)  NULL,
	NotificationTypePID BIGINT NOT NULL,	
	CreatedON DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedOn DATETIME NULL,
	CreatedBy BIGINT NOT NULL,
	UpdatedBy BIGINT NULL
)

GO

--PK_PaymentPaid
ALTER TABLE [dbo].[PaymentPaid]
	ADD CONSTRAINT [PK_PaymentPaid] PRIMARY KEY CLUSTERED ([PaymentPaid] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY= OFF, STATISTICS_NORECOMPUTE = OFF)

GO

--FK_PaymentPaid_People
ALTER TABLE [dbo].[PaymentPaid]
	ADD CONSTRAINT [FK_PaymentPaid_People] FOREIGN KEY ([PeoplePID]) REFERENCES [dbo].[People]([People]) ON DELETE NO ACTION ON UPDATE NO ACTION;

GO

	
--FK_PaymentPaid_Chitti
ALTER TABLE [dbo].[PaymentPaid]
	ADD CONSTRAINT [FK_PaymentPaid_Chitti] FOREIGN KEY ([ChittiPID]) REFERENCES [dbo].[Chitti]([ChittiPID]) ON DELETE NO ACTION ON UPDATE NO ACTION;

GO

--FK_PaymentPaid_NotificationType
ALTER TABLE [dbo].[PaymentPaid]
	ADD CONSTRAINT [FK_PaymentPaid_NotificationType] FOREIGN KEY ([NotificationTypePID]) REFERENCES [dbo].[NotificationType]([NotificationTypePID]) ON DELETE NO ACTION ON UPDATE NO ACTION;

GO
