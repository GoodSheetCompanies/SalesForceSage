USE [SAGE_SF]
GO

/****** Object:  Table [dbo].[tblSageToOrderLinesSF]    Script Date: 3/30/2021 2:13:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblSageToOrderLinesSF](
	[SFOrderID] [nvarchar](18) NOT NULL,
	[SFOrderLineID] [nvarchar](18) NOT NULL,
	[SFProductID] [nvarchar](18) NOT NULL,
	[SageLineKey] [varchar](6) NOT NULL,
	[SequenceNo] [varchar](14) NOT NULL,
	[SageUpdateTime] [datetime] NULL,
	[LastSyncDateTime] [datetime] NULL,
 CONSTRAINT [PK_tblSageToOrderLinesSF] PRIMARY KEY CLUSTERED 
(
	[SFOrderLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


