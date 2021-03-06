USE [KB]
GO
/****** Object:  Table [dbo].[ChangeRecord]    Script Date: 01/12/2013 12:23:21 ******/
DROP TABLE [dbo].[ChangeRecord]
GO
/****** Object:  Table [dbo].[ClinicalProblemDefinition]    Script Date: 01/12/2013 12:23:21 ******/
DROP TABLE [dbo].[ClinicalProblemDefinition]
GO
/****** Object:  Table [dbo].[ClinicalProblemDefinition_ContextItemDefinition_Association]    Script Date: 01/12/2013 12:23:21 ******/
DROP TABLE [dbo].[ClinicalProblemDefinition_ContextItemDefinition_Association]
GO
/****** Object:  Table [dbo].[ClinicalProblemDefinition_PlanDefinition_Association]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[ClinicalProblemDefinition_PlanDefinition_Association]
GO
/****** Object:  Table [dbo].[ClinicalProblemInstance]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[ClinicalProblemInstance]
GO
/****** Object:  Table [dbo].[Concept]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[Concept]
GO
/****** Object:  Table [dbo].[ContextItemDefinition]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[ContextItemDefinition]
GO
/****** Object:  Table [dbo].[EBM]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[EBM]
GO
/****** Object:  Table [dbo].[Encounter]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[Encounter]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[Event]
GO
/****** Object:  Table [dbo].[Fact]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[Fact]
GO
/****** Object:  Table [dbo].[MedicalOrderDefinition]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[MedicalOrderDefinition]
GO
/****** Object:  Table [dbo].[MedicalOrderDefinition_EBM_Association]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[MedicalOrderDefinition_EBM_Association]
GO
/****** Object:  Table [dbo].[MedicalOrderInstance]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[MedicalOrderInstance]
GO
/****** Object:  Table [dbo].[PhaseDefinition]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[PhaseDefinition]
GO
/****** Object:  Table [dbo].[PhaseDefinition_EBM_Association]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[PhaseDefinition_EBM_Association]
GO
/****** Object:  Table [dbo].[PlanDefinition]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[PlanDefinition]
GO
/****** Object:  Table [dbo].[PlanDefinition_EBM_Association]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[PlanDefinition_EBM_Association]
GO
/****** Object:  Table [dbo].[PlanInstance]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[PlanInstance]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[Report]
GO
/****** Object:  Table [dbo].[TaskDefinition]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[TaskDefinition]
GO
/****** Object:  Table [dbo].[TaskDefinition_EBM_Association]    Script Date: 01/12/2013 12:23:20 ******/
DROP TABLE [dbo].[TaskDefinition_EBM_Association]
GO
/****** Object:  Table [dbo].[TriggerRule]    Script Date: 01/12/2013 12:23:19 ******/
DROP TABLE [dbo].[TriggerRule]
GO
/****** Object:  Table [dbo].[TriggerRule_EBM_Association]    Script Date: 01/12/2013 12:23:19 ******/
DROP TABLE [dbo].[TriggerRule_EBM_Association]
GO
/****** Object:  Table [dbo].[TriggerRule_EBM_Association]    Script Date: 01/12/2013 12:23:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriggerRule_EBM_Association](
	[TriggerRule_Id] [int] NOT NULL,
	[EBM_Id] [int] NOT NULL,
 CONSTRAINT [PK_TriggerRule_EBM_Association] PRIMARY KEY NONCLUSTERED 
(
	[TriggerRule_Id] ASC,
	[EBM_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_TriggerRule] ON [dbo].[TriggerRule_EBM_Association] 
(
	[TriggerRule_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TriggerRule]    Script Date: 01/12/2013 12:23:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriggerRule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Version] [nvarchar](max) NULL,
	[PPV] [nvarchar](max) NULL,
	[Name] [nvarchar](128) NULL,
	[RuleSet] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[AssemblyPath] [nvarchar](256) NULL,
	[ActivityName] [nvarchar](128) NULL,
	[TimeStamp] [datetime2](7) NULL,
	[ClinicalProblemDefinition_Id] [int] NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_ClinicalProblemDefinition] ON [dbo].[TriggerRule] 
(
	[ClinicalProblemDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskDefinition_EBM_Association]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskDefinition_EBM_Association](
	[TaskDefinition_Id] [int] NOT NULL,
	[EBM_Id] [int] NOT NULL,
 CONSTRAINT [PK_TaskDefinition_EBM_Association] PRIMARY KEY NONCLUSTERED 
(
	[TaskDefinition_Id] ASC,
	[EBM_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_TaskDefinition] ON [dbo].[TaskDefinition_EBM_Association] 
(
	[TaskDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskDefinition]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskDefinition](
	[Optional] [bit] NOT NULL,
	[MultiSelect] [bit] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CodingSystem] [nvarchar](max) NULL,
	[PhaseDefinition_Id] [int] NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_PhaseDefinition_Id] ON [dbo].[TaskDefinition] 
(
	[PhaseDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](max) NULL,
	[ReportType] [nvarchar](max) NULL,
	[TimeStamp] [datetime] NOT NULL,
	[Event_Id] [int] NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_Event_Id] ON [dbo].[Report] 
(
	[Event_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanInstance]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanInstance](
	[State] [nvarchar](max) NULL,
	[CurrentPhase] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlanDefinition_Id] [int] NULL,
	[ClinicalProblemInstance_Id] [int] NULL,
 CONSTRAINT [PK_PlanInstance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ClinicalProblemInstance_Id] ON [dbo].[PlanInstance] 
(
	[ClinicalProblemInstance_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanDefinition_EBM_Association]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanDefinition_EBM_Association](
	[PlanDefinition_Id] [int] NOT NULL,
	[EBM_Id] [int] NOT NULL,
 CONSTRAINT [PK_PlanDefinition_EBM_Association] PRIMARY KEY NONCLUSTERED 
(
	[PlanDefinition_Id] ASC,
	[EBM_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_PlanDefinition_Id] ON [dbo].[PlanDefinition_EBM_Association] 
(
	[PlanDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanDefinition]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanDefinition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Duration] [nvarchar](max) NULL,
	[Objective] [nvarchar](max) NULL,
	[Cost] [nvarchar](max) NULL,
	[Criteria] [nvarchar](max) NULL,
	[Version] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Author] [nvarchar](max) NULL,
	[TimeStamp] [datetime2](7) NULL,
 CONSTRAINT [PK_PlanDefinition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Name_Status] ON [dbo].[PlanDefinition] 
(
	[Name] ASC,
	[Status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhaseDefinition_EBM_Association]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhaseDefinition_EBM_Association](
	[PhaseDefinition_Id] [int] NOT NULL,
	[EBM_Id] [int] NOT NULL,
 CONSTRAINT [PK_PhaseDefinition_EBM_Association] PRIMARY KEY NONCLUSTERED 
(
	[PhaseDefinition_Id] ASC,
	[EBM_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_PhaseDefintion_Id] ON [dbo].[PhaseDefinition_EBM_Association] 
(
	[PhaseDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhaseDefinition]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhaseDefinition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Duration] [nvarchar](max) NULL,
	[Period] [nvarchar](max) NULL,
	[PlanDefinition_Id] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_PlanDefinition_Id] ON [dbo].[PhaseDefinition] 
(
	[PlanDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalOrderInstance]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalOrderInstance](
	[TimeStamp] [datetime] NULL,
	[FK_EMR_Order_Id] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MedicalOrderDefinition_Id] [int] NOT NULL,
	[ClinicalProblemInstance_Id] [int] NULL,
 CONSTRAINT [PK_MedicalOrderInstanceSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ClinicalProblemInstance_Id] ON [dbo].[MedicalOrderInstance] 
(
	[ClinicalProblemInstance_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalOrderDefinition_EBM_Association]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalOrderDefinition_EBM_Association](
	[MedicalOrderDefinition_Id] [int] NOT NULL,
	[EBM_Id] [int] NOT NULL,
 CONSTRAINT [PK_MedicalOrderDefinition_EBM_Association] PRIMARY KEY NONCLUSTERED 
(
	[MedicalOrderDefinition_Id] ASC,
	[EBM_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_MedicalOrderDefinition_Id] ON [dbo].[MedicalOrderDefinition_EBM_Association] 
(
	[MedicalOrderDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalOrderDefinition]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalOrderDefinition](
	[OrderType] [nvarchar](max) NULL,
	[AdministrationRoute] [nvarchar](max) NULL,
	[TemporalType] [nvarchar](max) NULL,
	[Frequency] [nvarchar](max) NULL,
	[Dosage] [nvarchar](max) NULL,
	[AdditionalInstruction] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CodingSystem] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[TaskDefinition_Id] [int] NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_TaskDefinition_Id] ON [dbo].[MedicalOrderDefinition] 
(
	[TaskDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumericValue] [float] NULL,
	[BooleanValue] [bit] NULL,
	[StringValue] [nvarchar](max) NULL,
	[IsAbnormal] [bit] NULL,
	[Confidence] [decimal](18, 0) NULL,
	[LifeSpan] [nvarchar](50) NULL,
	[Report_Id] [int] NULL,
	[ContextItemDefinition_Id] [int] NULL,
	[Encounter_Id] [int] NULL,
	[ChangeRecord_Id] [int] NULL,
 CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ChangeRecord_Id] ON [dbo].[Fact] 
(
	[ChangeRecord_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Encounter_Id_LifeSpan] ON [dbo].[Fact] 
(
	[LifeSpan] ASC,
	[Encounter_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Report] ON [dbo].[Fact] 
(
	[Report_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[EventType] [nvarchar](max) NULL,
	[TimeStamp] [datetime] NOT NULL,
	[Encounter_Id] [int] NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_Encounter_Id] ON [dbo].[Event] 
(
	[Encounter_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Encounter]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encounter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FK_EMR_Encounter_Id] [nvarchar](max) NULL,
 CONSTRAINT [PK_Encounter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EBM]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EvidenceLevel] [nvarchar](max) NULL,
	[RecommendationClass] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Source] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
 CONSTRAINT [PK_EBMSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContextItemDefinition]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContextItemDefinition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Unit] [nvarchar](max) NULL,
	[DataType] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CodingSystem] [nvarchar](max) NULL,
	[ReferenceRange] [nvarchar](max) NULL,
	[UpperBound] [decimal](18, 0) NULL,
	[LowerBound] [decimal](18, 0) NULL,
	[DefaultValue] [nvarchar](max) NULL,
	[InputCode] [nvarchar](max) NULL,
	[Version] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[NavigationPath] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[TimeStamp] [datetime2](7) NULL,
 CONSTRAINT [PK_ContextItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Name_Status] ON [dbo].[ContextItemDefinition] 
(
	[Name] ASC,
	[Status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航路径,比如"临床体液、血液专业|骨髓检查及常用染色技术"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ContextItemDefinition', @level2type=N'COLUMN',@level2name=N'NavigationPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据项的类型, 包括人口统计学, 体征, 检查所见, 检验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ContextItemDefinition', @level2type=N'COLUMN',@level2name=N'Type'
GO
/****** Object:  Table [dbo].[Concept]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concept](
	[Code] [nvarchar](50) NOT NULL,
	[CodingSystem] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Literal] [nvarchar](max) NULL,
	[Literal2] [nvarchar](max) NULL,
	[Literal3] [nvarchar](max) NULL,
	[Hierarchy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Concept] PRIMARY KEY CLUSTERED 
(
	[Code] ASC,
	[CodingSystem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClinicalProblemInstance]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicalProblemInstance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](max) NULL,
	[Priority] [nvarchar](max) NULL,
	[ClinicalProblemDefinition_Id] [int] NOT NULL,
	[Encounter_Id] [int] NOT NULL,
	[TriggerRuleDefinition_Id] [int] NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_Encounter] ON [dbo].[ClinicalProblemInstance] 
(
	[Encounter_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClinicalProblemDefinition_PlanDefinition_Association]    Script Date: 01/12/2013 12:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicalProblemDefinition_PlanDefinition_Association](
	[ClinicalProblemDefinition_Id] [int] NOT NULL,
	[PlanDefinition_Id] [int] NOT NULL,
 CONSTRAINT [PK_ClinicalProblemDefinition_PlanDefinition_Association] PRIMARY KEY NONCLUSTERED 
(
	[ClinicalProblemDefinition_Id] ASC,
	[PlanDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_ClinicalProblemDefinition_Id] ON [dbo].[ClinicalProblemDefinition_PlanDefinition_Association] 
(
	[ClinicalProblemDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClinicalProblemDefinition_ContextItemDefinition_Association]    Script Date: 01/12/2013 12:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicalProblemDefinition_ContextItemDefinition_Association](
	[ClinicalProblemDefinition_Id] [int] NOT NULL,
	[ContextItemDefinition_Id] [int] NOT NULL,
 CONSTRAINT [PK_ClinicalProblemDefinition_ContextItemDefinition_Association] PRIMARY KEY NONCLUSTERED 
(
	[ClinicalProblemDefinition_Id] ASC,
	[ContextItemDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_ClinicalProblemDefinition] ON [dbo].[ClinicalProblemDefinition_ContextItemDefinition_Association] 
(
	[ClinicalProblemDefinition_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClinicalProblemDefinition]    Script Date: 01/12/2013 12:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicalProblemDefinition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ReferenceURL] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[CodingSystem] [nvarchar](max) NULL,
	[Infectious] [bit] NULL,
	[InputCode] [nvarchar](max) NULL,
	[Version] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_ClinicalProblemDefinition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Name] ON [dbo].[ClinicalProblemDefinition] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Name_Status] ON [dbo].[ClinicalProblemDefinition] 
(
	[Name] ASC,
	[Status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangeRecord]    Script Date: 01/12/2013 12:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChangeRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Operator] [nvarchar](max) NULL,
	[TimeStamp] [datetime] NULL,
	[OldState] [nvarchar](max) NULL,
	[NewState] [nvarchar](max) NULL,
	[Reason] [nvarchar](max) NULL,
	[ClinicalProblemInstance_Id] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IDX_ClinicalProblemInstance_Id] ON [dbo].[ChangeRecord] 
(
	[ClinicalProblemInstance_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
