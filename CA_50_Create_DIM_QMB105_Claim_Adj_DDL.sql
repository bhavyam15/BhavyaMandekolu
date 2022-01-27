--*********************************************************************************************************************************
-- Script Name :     CA_50_Create_DIM_QMB105_Claim_Adj_DDL.sql

-- Description:               Script to create new table '[DIM_QMB105_Claim_Adj]'
                
-- Modification Log:
-- Version 1.0.0                    <Jayasuriya>                20/05/2020            Create table structure DIM_QMB105_Claim_Adj
-- ************************************************************************************************************************************************************************************

USE $(REPORTING_DB) 

GO

-- ***************** [DIM_QMB105_Claim_Adj] *********************

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.tables 
WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'DIM_QMB105_Claim_Adj')
DROP TABLE DIM_QMB105_Claim_Adj

GO
CREATE TABLE [dbo].[DIM_QMB105_Claim_Adj](
	[DIM_QMB105_Claim_Adj_REPOS_KEY] [int] NOT NULL,
	[QMB105_Claim_Adj_SOURCE_ID] [varchar](50) NOT NULL,
	[EFFECTIVE_START_DT] [datetime] NOT NULL,
	[EFFECTIVE_END_DT] [datetime] NOT NULL,
	[CURRENT_IND] [char](1) NOT NULL,
	[DELETED_IND] [char](1) NOT NULL,
	[LOAD_ID] [int] NOT NULL,
	[INSERTED_DT] [datetime] NOT NULL,
	[LAST_UPDATED_DT] [datetime] NOT NULL,
	[Synd] [int] NOT NULL,
	[CoB] [varchar](50) NOT NULL,
	[DURG] [varchar](50) NOT NULL,
	[DURG_CLASS_SOURCE_ID] [varchar](50) NULL,
	[YOA] [int] NOT NULL,
	[Settlement_CCY] [varchar](50) NOT NULL,
	[INWARDS ULT CLAIMS ADJ] [decimal](15, 4) NULL,
	[OUTWARDS ULT CLAIMS ADJ] [decimal](15, 4) NULL,
 CONSTRAINT [DIM_QMB105_Claim_Adj_PK] PRIMARY KEY CLUSTERED 
(
	[DIM_QMB105_Claim_Adj_REPOS_KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO



