USE [SAGE_SF]
GO

/****** Object:  Table [dbo].[tblSageToContactsSF]    Script Date: 3/13/2021 6:11:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblSageToContactsSF](
	[SageCustomerNo] [nvarchar](30) NOT NULL,
	[SageContactCode] [nvarchar](10) NOT NULL,
	[SFContactID] [nvarchar](18) Not NULL,
	[SFAccountID] [nvarchar](18) Not NULL,
	[SageUpdateTime] [datetime] NULL,
	[LastSyncDateTime] [datetime] NULL
CONSTRAINT [PK_tblSageToContactsSF] PRIMARY KEY CLUSTERED 
(
	[SageCustomerNo] ASC,
	[SageContactCode] ASC,
	[SFAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


