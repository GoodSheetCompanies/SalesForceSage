USE [SAGE_SF]
GO

/****** Object:  Table [dbo].[tblSageToAccountsSF]    Script Date: 3/13/2021 6:11:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblSageToAccountsSF](
	[SageCustomerNo] [nvarchar](30) NOT NULL,
	[SFAccountID] [nvarchar](18) NOT NULL,
	[SageUpdateTime] [datetime] NULL,
	[LastSyncDateTime] [datetime] NULL
CONSTRAINT [PK_tblSageToAccountsSF] PRIMARY KEY CLUSTERED 
(
	[SageCustomerNo] ASC,
	[SFAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


