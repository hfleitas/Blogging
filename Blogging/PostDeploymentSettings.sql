SET NUMERIC_ROUNDABORT OFF;
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT ON;
SET QUOTED_IDENTIFIER, ANSI_NULLS, Nocount ON;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApplicationSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ApplicationSetting](
	[ApplicationSettingID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ApplicationSetting_ApplicationSettingID]  DEFAULT (newid()),
	[Name] [varchar](50) NOT NULL,
	[Value] [varchar](max) NULL,
	[Description] [varchar](1000) NOT NULL
) 
END
GO

DELETE FROM [dbo].[ApplicationSetting]
GO

INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'Database Publishing Date', getutcdate(), N'Database Publishing Date');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'DatabaseBuildNo', N'.01', N'Database build number');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'NumberofHoursAfterMidnightForJobStart', N'2', N'Number of Hours After Midnight For Job Start');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'NumberOfBufferHours', N'24', N'Number Of Buffer Hours Before Archival');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'TopNumberofRows', N'100000', N'Top Number of Rows');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'Logging Archival Hours', N'168', N'Number of hours after which ProcedureExecutionLog will be archived');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'DataArchivalDays', N'180', N'Data will archived after days of system time');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'Log Parameter Deletion Hours', N'72', N'Number of hours after which Procedure execution parameter Value will be deleted');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'Index Fill Factor', N'90', N'Index Fill Factor');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'Logging Mode', N'ErrorOnly', N'1: Verbose, 2: ErrorOnly, 3: CallOnly');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'MaintenanceJobMaxRunningHours', N'2', N'Maintenance Job Max Running Hours');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'MaxInactiveCyclesToKeep', N'4', N'MaxInactiveCyclesToKeep');
INSERT [dbo].[ApplicationSetting] ([Name], [Value], [Description]) VALUES (N'LogRetentionHours', N'360', N'Log Retention Hours')
GO