USE [CP2]
GO
/****** Object:  Table [dbo].[CP_AUXILIARY_EXAM]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_AUXILIARY_EXAM]
GO
/****** Object:  Table [dbo].[CP_DICT_MEDICAL_HIST_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_DICT_MEDICAL_HIST_TYPE]
GO
/****** Object:  Table [dbo].[CP_DICT_NATION]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_DICT_NATION]
GO
/****** Object:  Table [dbo].[CP_DICT_ORDER_TEMP_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_DICT_ORDER_TEMP_TYPE]
GO
/****** Object:  Table [dbo].[CP_DICT_ORDER_TEMP_TYPE_UNIQUE]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_DICT_ORDER_TEMP_TYPE_UNIQUE]
GO
/****** Object:  Table [dbo].[CP_DICT_ORDER_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_DICT_ORDER_TYPE]
GO
/****** Object:  Table [dbo].[CP_DICT_PROGRESS_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_DICT_PROGRESS_TYPE]
GO
/****** Object:  Table [dbo].[CP_DICT_TEMPORAL_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_DICT_TEMPORAL_TYPE]
GO
/****** Object:  Table [dbo].[CP_EVA_DIAGNOSIS]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_EVA_DIAGNOSIS]
GO
/****** Object:  Table [dbo].[CP_EXAM]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_EXAM]
GO
/****** Object:  Table [dbo].[CP_LAB_TEST]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_LAB_TEST]
GO
/****** Object:  Table [dbo].[CP_MEDICAL_DOC]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_MEDICAL_DOC]
GO
/****** Object:  Table [dbo].[CP_MEDICAL_HIST_DOC]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_MEDICAL_HIST_DOC]
GO
/****** Object:  Table [dbo].[CP_MEDICAL_HIST_DOC_INDEX]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_MEDICAL_HIST_DOC_INDEX]
GO
/****** Object:  Table [dbo].[CP_ORDER]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_ORDER]
GO
/****** Object:  Table [dbo].[CP_ORGANIZATION_DEPARTMENT]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_ORGANIZATION_DEPARTMENT]
GO
/****** Object:  Table [dbo].[CP_ORGANIZATION_HOSPITAL]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_ORGANIZATION_HOSPITAL]
GO
/****** Object:  Table [dbo].[CP_OUT_ID]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_OUT_ID]
GO
/****** Object:  Table [dbo].[CP_PAT_ID_INDEX]    Script Date: 01/10/2013 14:56:05 ******/
DROP TABLE [dbo].[CP_PAT_ID_INDEX]
GO
/****** Object:  Table [dbo].[CP_PAT_INFO]    Script Date: 01/10/2013 14:56:06 ******/
DROP TABLE [dbo].[CP_PAT_INFO]
GO
/****** Object:  Table [dbo].[CP_PATINFO301]    Script Date: 01/10/2013 14:56:06 ******/
DROP TABLE [dbo].[CP_PATINFO301]
GO
/****** Object:  Table [dbo].[CP_PROGRESS]    Script Date: 01/10/2013 14:56:06 ******/
DROP TABLE [dbo].[CP_PROGRESS]
GO
/****** Object:  Table [dbo].[CP_RESOURCE_PERSONNEL]    Script Date: 01/10/2013 14:56:06 ******/
DROP TABLE [dbo].[CP_RESOURCE_PERSONNEL]
GO
/****** Object:  Table [dbo].[CP_VISIT]    Script Date: 01/10/2013 14:56:06 ******/
DROP TABLE [dbo].[CP_VISIT]
GO
/****** Object:  Table [dbo].[CP_VITAL_SIGN]    Script Date: 01/10/2013 14:56:06 ******/
DROP TABLE [dbo].[CP_VITAL_SIGN]
GO
/****** Object:  Table [dbo].[RXTERMS]    Script Date: 01/10/2013 14:56:06 ******/
DROP TABLE [dbo].[RXTERMS]
GO
/****** Object:  Table [dbo].[RXTERMS]    Script Date: 01/10/2013 14:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RXTERMS](
	[RXCUI] [varchar](8) NOT NULL,
	[GENERIC_RXCUI] [varchar](8) NULL,
	[TTY] [varchar](20) NOT NULL,
	[FULL_NAME] [varchar](3000) NOT NULL,
	[RXN_DOSE_FORM] [varchar](100) NOT NULL,
	[FULL_GENERIC_NAME] [varchar](3000) NOT NULL,
	[BRAND_NAME] [varchar](500) NULL,
	[DISPLAY_NAME] [varchar](3000) NOT NULL,
	[ROUTE] [varchar](100) NOT NULL,
	[NEW_DOSE_FORM] [varchar](100) NOT NULL,
	[STRENGTH] [varchar](500) NOT NULL,
	[SUPPRESS_FOR] [varchar](30) NULL,
	[DISPLAY_NAME_SYNONYM] [varchar](500) NULL,
	[IS_RETIRED] [varchar](8) NULL,
	[SXDG_RXCUI] [varchar](8) NULL,
	[SXDG_TTY] [varchar](20) NULL,
	[SXDG_NAME] [varchar](3000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CP_VITAL_SIGN]    Script Date: 01/10/2013 14:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_VITAL_SIGN](
	[Id] [int] NOT NULL,
	[HOSPITAL_ID] [nvarchar](50) NOT NULL,
	[OUTPATIENT_ID] [nvarchar](50) NULL,
	[CP_ID] [nvarchar](50) NULL,
	[VISIT_ID] [nvarchar](50) NULL,
	[MEASURING_TIME] [datetime] NULL,
	[VITAL_SIGN_NAME] [nvarchar](50) NULL,
	[RESULT_VALUE] [nvarchar](50) NULL,
	[RESULT_UNIT] [nvarchar](50) NULL,
	[ORDER_ID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_VISIT]    Script Date: 01/10/2013 14:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_VISIT](
	[VISIT_ID] [nvarchar](50) NULL,
	[HOSPITAL_ID] [nvarchar](50) NULL,
	[PAT_ID] [nvarchar](50) NULL,
	[VISIT_TIME] [datetime] NULL,
	[MEDICAL_HIST_DOC_INDEX_ID] [nvarchar](50) NULL,
	[EVA_DIAGNOSIS_ID] [nvarchar](50) NULL,
	[AUXIILIARY_EXAM_ID] [nvarchar](50) NULL,
	[CP_ID] [nvarchar](50) NULL,
	[DISCHARGE_TYPE] [nvarchar](50) NULL,
	[ADMISSION_TIME] [datetime] NULL,
	[DISCHARGE_TIME] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_RESOURCE_PERSONNEL]    Script Date: 01/10/2013 14:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_RESOURCE_PERSONNEL](
	[PERSONNEL_ID] [nvarchar](50) NULL,
	[NAME] [nvarchar](50) NULL,
	[GENDER] [nvarchar](4) NULL,
	[BIRTH_DATE] [date] NULL,
	[TITLE_ID] [nvarchar](50) NULL,
	[DEPARTMENT_ID] [nvarchar](50) NULL,
	[HOSPITAL_ID] [nvarchar](50) NULL,
	[MOBILE] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_PROGRESS]    Script Date: 01/10/2013 14:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_PROGRESS](
	[PROGRESS_ID] [nvarchar](50) NULL,
	[HOSPITAL_ID] [nvarchar](50) NULL,
	[PROGRESS_TYPE_ID] [nvarchar](50) NULL,
	[CP_ID] [nvarchar](50) NULL,
	[ISSUE_TIME] [datetime] NULL,
	[PROGRESS_CONTENT] [nvarchar](max) NULL,
	[AUTHOR_ID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_PATINFO301]    Script Date: 01/10/2013 14:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_PATINFO301](
	[CP_ID] [nvarchar](50) NULL,
	[OUTPATIENT_ID] [nvarchar](50) NULL,
	[VISIT_ID] [nvarchar](50) NULL,
	[INPATIENT_NO] [nvarchar](50) NULL,
	[DIAGNOSIS_DESC] [nvarchar](200) NULL,
	[DIAGNOSIS_DATE] [datetime] NULL,
	[DATE_OF_BIRTH] [date] NULL,
	[SEX] [nvarchar](50) NULL,
	[OCCUPATION_NAME] [nvarchar](50) NULL,
	[PAT_CONDITION_NAME] [nvarchar](50) NULL,
	[DEPT_NAME] [nvarchar](50) NULL,
	[ADMISSION_DATE_TIME] [datetime] NULL,
	[DISCHARGE_DATE_TIME] [datetime] NULL,
	[TOTAL_COSTS] [nvarchar](50) NULL,
	[TOTAL_PAYMENTS] [nvarchar](50) NULL,
	[DIRECTOR] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_PAT_INFO]    Script Date: 01/10/2013 14:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CP_PAT_INFO](
	[PAT_ID] [nvarchar](50) NULL,
	[NAME] [nvarchar](50) NULL,
	[GENDER] [nvarchar](4) NULL,
	[BIRTH_DATE] [date] NULL,
	[BIRTH_PLACE] [nvarchar](50) NULL,
	[MARTIAL_STATUS] [nvarchar](10) NULL,
	[NATION_ID] [nvarchar](50) NULL,
	[MAILING_ADDRESS] [nvarchar](100) NULL,
	[MOBILE] [nvarchar](20) NULL,
	[HOME_TEL] [nvarchar](20) NULL,
	[IDENTIFICATION_NUMBER] [char](18) NULL,
	[VOCATION] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CP_PAT_ID_INDEX]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_PAT_ID_INDEX](
	[PAT_ID] [nvarchar](50) NULL,
	[INPATIENT_ID] [nvarchar](50) NULL,
	[OUTPATIENT_ID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_OUT_ID]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_OUT_ID](
	[CP_ID] [nvarchar](50) NOT NULL,
	[OUTPATIENT_ID] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_ORGANIZATION_HOSPITAL]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_ORGANIZATION_HOSPITAL](
	[HOSPITAL_ID] [nvarchar](50) NULL,
	[HOSPITAL_NAME] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_ORGANIZATION_DEPARTMENT]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_ORGANIZATION_DEPARTMENT](
	[DEPARTMENT_ID] [nvarchar](50) NULL,
	[DEPARTMENT_NAME] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_ORDER]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_ORDER](
	[Id] [int] NOT NULL,
	[HOSPITAL_ID] [nvarchar](50) NOT NULL,
	[CP_ID] [nvarchar](50) NULL,
	[OUTPATIENT_ID] [nvarchar](50) NULL,
	[ORDER_TYPE_ID] [nvarchar](50) NULL,
	[ORDER_CONTENT] [nvarchar](100) NULL,
	[DOSAGE] [nvarchar](50) NULL,
	[UNIT] [nvarchar](50) NULL,
	[METHOD] [nvarchar](50) NULL,
	[START_TIME] [datetime] NULL,
	[END_TIME] [datetime] NULL,
	[FREQ] [nvarchar](50) NULL,
	[FREQ_UNIT] [nvarchar](50) NULL,
	[EXPECTED_EXECUTIVE_TIME] [nvarchar](50) NULL,
	[ISSUER] [nvarchar](50) NULL,
	[TERMINATOR] [nvarchar](50) NULL,
	[EXECUTOR] [nvarchar](50) NULL,
	[CHECKER] [nvarchar](50) NULL,
	[REAL_EXECUTIVE_TIME] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_MEDICAL_HIST_DOC_INDEX]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_MEDICAL_HIST_DOC_INDEX](
	[MEDICAL_HIST_DOC_INDEX_ID] [nvarchar](50) NULL,
	[HOSPITAL_ID] [nvarchar](50) NULL,
	[MEDICAL_HIST_DOC_ID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_MEDICAL_HIST_DOC]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_MEDICAL_HIST_DOC](
	[MEDICAL_HIST_DOC_ID] [nvarchar](50) NULL,
	[HOSPITAL_ID] [nvarchar](50) NULL,
	[DOC_CONTENT] [nvarchar](max) NULL,
	[MEDICAL_HIST_TYPE_ID] [nvarchar](50) NULL,
	[AUTHOR_ID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_MEDICAL_DOC]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_MEDICAL_DOC](
	[CP_ID] [nvarchar](50) NULL,
	[FULL_PATH] [nvarchar](500) NULL,
	[FILE_EXTENSION] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_LAB_TEST]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CP_LAB_TEST](
	[LAB_TEST_ID] [varchar](50) NULL,
	[HOSPITAL_ID] [varchar](50) NULL,
	[OUTPATIENT_ID] [varchar](50) NULL,
	[CP_ID] [varchar](50) NULL,
	[REPORT_ITEM_NAME] [varchar](50) NULL,
	[RESULT_VALUE] [varchar](50) NULL,
	[RESULT_UNIT] [varchar](50) NULL,
	[ABNORMAL_INDICATOR] [varchar](50) NULL,
	[REPORT_TIME] [varchar](50) NULL,
	[TEST_NO] [varchar](50) NULL,
	[ITEM_NO] [varchar](50) NULL,
	[VID] [varchar](50) NULL,
	[ORDER_ID] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CP_EXAM]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_EXAM](
	[Id] [int] NOT NULL,
	[HOSPITAL_ID] [nvarchar](50) NULL,
	[OUTPATIENT_ID] [nvarchar](50) NULL,
	[CP_ID] [nvarchar](50) NULL,
	[EXAM_CLASS] [nvarchar](50) NULL,
	[EXAM_SUB_CLASS] [nvarchar](50) NULL,
	[EXAM_TIME] [datetime] NULL,
	[RESULT_PARAGRAPH] [nvarchar](max) NULL,
	[RESULT_DESCRIPTION] [nvarchar](max) NULL,
	[RESULT_IMPRESSION] [nvarchar](max) NULL,
	[IS_ABNORMAL] [nvarchar](50) NULL,
	[ORDER_ID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_EVA_DIAGNOSIS]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_EVA_DIAGNOSIS](
	[EVA_DIAGNOSIS_ID] [nvarchar](50) NULL,
	[HOSPITAL_ID] [nvarchar](50) NULL,
	[DIAGNOSIS_CONTENT] [nvarchar](200) NULL,
	[DIAGNOSIS_REASON] [nvarchar](max) NULL,
	[DIAGNOSIS_TIME] [date] NULL,
	[DOCTOR_ID] [nvarchar](50) NULL,
	[PATIENT_CONDITION_TYPE] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_DICT_TEMPORAL_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_DICT_TEMPORAL_TYPE](
	[TEMPORAL_TYPE_ID] [nvarchar](50) NULL,
	[TEMPORAL_TYPE] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_DICT_PROGRESS_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_DICT_PROGRESS_TYPE](
	[PROGRESS_TYPE_ID] [nvarchar](50) NULL,
	[PROGRESS_TYPE] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_DICT_ORDER_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_DICT_ORDER_TYPE](
	[ORDER_TYPE_ID] [nvarchar](50) NULL,
	[ORDER_TYPE] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_DICT_ORDER_TEMP_TYPE_UNIQUE]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_DICT_ORDER_TEMP_TYPE_UNIQUE](
	[ORDER_CONTENT] [nvarchar](200) NULL,
	[TEMPORAL_TYPE_ID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_DICT_ORDER_TEMP_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_DICT_ORDER_TEMP_TYPE](
	[ORDER_CONTENT] [nvarchar](200) NULL,
	[TEMPORAL_TYPE_ID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_DICT_NATION]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_DICT_NATION](
	[NATION_ID] [nvarchar](50) NULL,
	[NATION_NAME] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_DICT_MEDICAL_HIST_TYPE]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_DICT_MEDICAL_HIST_TYPE](
	[MEDICAL_HIST_TYPE_ID] [nvarchar](50) NULL,
	[MEDICAL_HIST_TYPE] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP_AUXILIARY_EXAM]    Script Date: 01/10/2013 14:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP_AUXILIARY_EXAM](
	[AUXILIARY_EXAM_ID] [nvarchar](50) NOT NULL,
	[HOSPITAL_ID] [nvarchar](50) NOT NULL,
	[EXAM_NAME] [nvarchar](200) NULL,
	[EXAM_RESULT] [nvarchar](500) NULL,
	[EXAM_TIME] [date] NULL,
	[DOCTOR_ID] [nvarchar](50) NULL,
	[EXECUTIVE_PERSONNEL_ID] [nvarchar](50) NULL
) ON [PRIMARY]
GO
