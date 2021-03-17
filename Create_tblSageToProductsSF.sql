USE [SAGE_SF]
GO

/****** Object:  Table [dbo].[tblSageToOrdersSF]    Script Date: 3/17/2021 11:56:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblSageToProductsSF](
	[SageItemCode] [varchar](30) NOT NULL,
	[SFProductID] [nvarchar](18) NOT NULL,
	[SageUpdateTime] [datetime] NULL,
	[LastSyncDateTime] [datetime] NULL,
 CONSTRAINT [PK_tblSageToProductsSF] PRIMARY KEY CLUSTERED 
(
	[SageItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


