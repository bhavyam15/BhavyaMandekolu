--***********************************************************************************************
-- Script Name :     CA_7_WRK_REP_INW_OUTW_CCY_SPLIT_SHARE_CALC.sql

-- Description:               Script to create new table WRK_REP_INW_OUTW_CCY_SPLIT_SHARE_CALC
                
-- Modification Log:
-- Version 1.0.0                    <Meena Murali>                 10/06/2020             Initial version.
-- ************************************************************************************************************************************************************************************


USE $(REPORTING_DB)


GO

-- ***************** WRK_REP_INW_OUTW_CCY_SPLIT_SHARE_CALC ********************* 

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.tables 
WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'WRK_REP_INW_OUTW_CCY_SPLIT_SHARE_CALC')


DROP TABLE WRK_REP_INW_OUTW_CCY_SPLIT_SHARE_CALC
GO

CREATE TABLE [dbo].WRK_REP_INW_OUTW_CCY_SPLIT_SHARE_CALC(
	[DIM_SYNDICATE_KEY] [int] NULL,
	[DIM_UNDERWRITING_DIVISION_KEY] [int] NULL,
	[DIM_INW_SYNDICATE_CONTRACT_KEY] [int] NULL,
	[DIM_YEAR_OF_ACCOUNT_KEY] [int] NULL,
	[ORIG_DIM_CURRENCY_KEY] [int] NULL,
	[DIM_DURG_CLASS_KEY] [int] NULL,
	[DIM_CALENDAR_KEY] [int] NULL,
	[ORIG_CURRENCY_CODE] [varchar](3) NULL,
	[SETTL_CURRENCY_CODE] [varchar](3) NULL,
	[CLASS_OF_BUSINESS] [varchar](50) NULL,
	[PLATFORM] [varchar](50) NULL,
	[ORIG_IW_TOTAL_PREM_PAID] [decimal](21, 6) NULL,
	[ORIG_IW_INCURRED_CLAIMS] [decimal](21, 6) NULL,
	[ORIG_IW_PAID_CLAIMS] [decimal](21, 6) NULL,
	[ORIG_IW_OUTSTANDING_CLAIMS] [decimal](21, 6) NULL,
	[ORIG_EPI_BUDGET_AMT] [decimal](21, 6) NULL
) ON [PRIMARY]
GO
