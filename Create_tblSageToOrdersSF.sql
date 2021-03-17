USE [SAGE_SF]
GO

/****** Object:  Table [dbo].[tblSageToOrdersSF]    Script Date: 3/16/2021 3:17:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblSageToOrdersSF](
	[SageSalesOrderNumber] [varchar](7) NOT NULL,
	[SFAccountID] [nvarchar](18) NOT NULL,
	[SFOrderID] [nvarchar](18) NOT NULL,
	[SageUpdateTime] [datetime] NULL,
	[LastSyncDateTime] [datetime] NULL,
 CONSTRAINT [PK_tblSageToOrdersSF] PRIMARY KEY CLUSTERED 
(
	[SageSalesOrderNumber]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


