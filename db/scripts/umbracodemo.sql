USE [UmbracoDemo]
GO
/****** Object:  Table [dbo].[umbracoUserType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserType](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[userTypeAlias] [nvarchar](50) NULL,
	[userTypeName] [nvarchar](255) NOT NULL,
	[userTypeDefaultPermissions] [nvarchar](50) NULL,
 CONSTRAINT [PK_userType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoUserType] ON
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (2, N'writer', N'Writer', N'CAH:F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (4, N'translator', N'Translator', N'AF')
SET IDENTITY_INSERT [dbo].[umbracoUserType] OFF
/****** Object:  Table [dbo].[umbracoUserLogins]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserLogins](
	[contextID] [uniqueidentifier] NOT NULL,
	[userID] [int] NOT NULL,
	[timeout] [bigint] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'b07c596f-0c3a-4fb7-8322-7667d64f97bb', 0, 634544613784575910)
/****** Object:  Table [dbo].[cmsTaskType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTaskType](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[alias] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsTaskType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsTaskType] UNIQUE NONCLUSTERED 
(
	[alias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsTaskType] ON
INSERT [dbo].[cmsTaskType] ([id], [alias]) VALUES (1, N'toTranslate')
SET IDENTITY_INSERT [dbo].[cmsTaskType] OFF
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NOT NULL,
	[childObjectType] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON
INSERT [dbo].[umbracoRelationType] ([id], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
/****** Object:  Table [dbo].[umbracoApp]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoApp](
	[sortOrder] [tinyint] NOT NULL,
	[appAlias] [nvarchar](50) NOT NULL,
	[appIcon] [nvarchar](255) NOT NULL,
	[appName] [nvarchar](255) NOT NULL,
	[appInitWithTreeAlias] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoApp] PRIMARY KEY CLUSTERED 
(
	[appAlias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (0, N'content', N'.traycontent', N'Indhold', N'content')
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (7, N'developer', N'.traydeveloper', N'Developer', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (1, N'media', N'.traymedia', N'Mediearkiv', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (8, N'member', N'.traymember', N'Medlemmer', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (6, N'settings', N'.traysettings', N'Indstillinger', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (5, N'translation', N'.traytranslation', N'Translation', NULL)
INSERT [dbo].[umbracoApp] ([sortOrder], [appAlias], [appIcon], [appName], [appInitWithTreeAlias]) VALUES (5, N'users', N'.trayusers', N'Brugere', NULL)
/****** Object:  Table [dbo].[Comment]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mainid] [int] NOT NULL,
	[nodeid] [int] NOT NULL,
	[name] [nvarchar](250) NULL,
	[email] [nvarchar](250) NULL,
	[website] [nvarchar](250) NULL,
	[comment] [ntext] NULL,
	[spam] [bit] NULL,
	[ham] [bit] NULL,
	[created] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trashed] [bit] NOT NULL,
	[parentID] [int] NOT NULL,
	[nodeUser] [int] NULL,
	[level] [smallint] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_structure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoNode] ON
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-92, 0, -1, 0, 11, N'-1,-92', 37, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', N'Label', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-90, 0, -1, 0, 11, N'-1,-90', 35, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-89, 0, -1, 0, 11, N'-1,-89', 34, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', N'Textbox multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-88, 0, -1, 0, 11, N'-1,-88', 33, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-87, 0, -1, 0, 11, N'-1,-87', 32, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-51, 0, -1, 0, 11, N'-1,-51', 4, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-49, 0, -1, 0, 11, N'-1,-49', 2, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-43, 0, -1, 0, 1, N'-1,-43', 2, N'fbaf13a8-4036-41f2-93a3-974f678c312a', N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9C10E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-42, 0, -1, 0, 1, N'-1,-42', 2, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9BAC4 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-41, 0, -1, 0, 1, N'-1,-41', 2, N'5046194e-4237-453c-a547-15db3a07c4e1', N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9B543 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-40, 0, -1, 0, 1, N'-1,-40', 2, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9AF58 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-39, 0, -1, 0, 1, N'-1,-39', 2, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9A9C0 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-38, 0, -1, 0, 1, N'-1,-38', 2, N'fd9f1447-6c61-4a7c-9595-5aa39147d318', N'Folder Browser', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E9A102 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-37, 0, -1, 0, 1, N'-1,-37', 2, N'0225af17-b302-49cb-9176-b9f35cab9c17', N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E99976 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-36, 0, -1, 0, 1, N'-1,-36', 2, N'e4d66c0f-b935-4200-81f0-025f7256b89a', N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000958100E99096 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-21, 0, -1, 0, 0, N'-1,-21', 0, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(0x00009F7F00F0D5FE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-20, 0, -1, 0, 0, N'-1,-20', 0, N'0f582a79-1e41-4cf0-bfa0-76340651891a', N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(0x00009F7F00F0D5DD AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-1, 0, -1, 0, 0, N'-1', 0, N'916724a5-173d-4619-b97e-b9de133dd6f5', N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(0x0000957200E73750 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1031, 0, -1, 1, 1, N'-1,1031', 2, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x000095B00003C1CF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1032, 0, -1, 1, 1, N'-1,1032', 2, N'cc07b313-0843-4aa8-bbda-871c8da728c8', N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x000095B00003C551 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1033, 0, -1, 1, 1, N'-1,1033', 2, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x000095B00003C837 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1034, 0, -1, 0, 1, N'-1,1034', 2, N'a6857c73-d6e9-480c-b6e6-f15f6ad11125', N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D84A29 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1035, 0, -1, 0, 1, N'-1,1035', 2, N'93929b9a-93a2-4e2a-b239-d99334440a59', N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D8524B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1036, 0, -1, 0, 1, N'-1,1036', 2, N'2b24165f-9782-4aa3-b459-1de4a4d21f60', N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D8571E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1038, 0, -1, 0, 1, N'-1,1038', 2, N'1251c96c-185c-4e9b-93f4-b48205573cbd', N'Simple Editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1039, 0, -1, 0, 1, N'-1,1039', 2, N'06f349a9-c949-4b6a-8660-59c10451af42', N'Ultimate Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1040, 0, -1, 0, 1, N'-1,1040', 2, N'21e798da-e06e-4eda-a511-ed257f78d4fa', N'Related Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1041, 0, -1, 0, 1, N'-1,1041', 2, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1042, 0, -1, 0, 1, N'-1,1042', 2, N'0a452bd5-83f9-4bc3-8403-1286e13fb77e', N'Macro Container', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1043, 0, -1, 0, 1, N'-1,1043', 2, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000973E00D868AF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1044, 0, -1, 0, 1, N'-1,1044', 31, N'50d985c6-41fe-4bf2-90c1-e421907f54d2', N'Author Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x00009F7F00F0F34B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1045, 0, -1, 0, 1, N'-1,1045', 32, N'b066e07f-4467-4372-b83d-bbdddb8f92b8', N'Blog Datefolder', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F3CB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1046, 0, -1, 0, 1, N'-1,1046', 33, N'3b731e8b-efb8-44cc-b85c-b0e0b4a455e2', N'Blog post', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F3E0 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1047, 0, -1, 0, 1, N'-1,1047', 34, N'330d45d8-b05f-40f7-94ec-0757ebc5802d', N'CommentRss', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F3EB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1048, 0, -1, 0, 1, N'-1,1048', 35, N'5a40447a-955c-4c92-91d0-25578d663ffc', N'Business Homepage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F3F5 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1049, 0, -1, 0, 1, N'-1,1049', 36, N'ec86cd52-8045-4bc2-8076-0fa63a94b190', N'Homepage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F3FD AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1050, 0, -1, 0, 1, N'-1,1050', 37, N'85731e21-1434-4a8b-9b98-171ff201185c', N'News', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F408 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1051, 0, -1, 0, 1, N'-1,1051', 38, N'870b459c-8841-469c-aa06-5f46952490f8', N'News Article', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F411 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1052, 0, -1, 0, 1, N'-1,1052', 39, N'baa0604e-d978-44b7-92f7-34f4b7e9ceaf', N'Rss', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F41D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1053, 0, -1, 0, 1, N'-1,1053', 40, N'583456e0-66f2-4f55-abf3-fc175f51d7b8', N'Starterkit Master', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F427 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1054, 0, -1, 0, 1, N'-1,1054', 41, N'fcabf3bc-39f4-442f-b428-cbf5c64ebe14', N'Textpage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x00009F7F00F0F434 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1055, 0, -1, 0, 1, N'-1,1055', 42, N'34aa8d1a-c3f4-4eae-9150-b66620758327', N'Blog', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009F7F00F0F478 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1056, 0, -1, 0, 1, N'-1,1056', 43, N'4f27278a-194e-4861-b55c-f68e9d0210e3', N'Blog Post', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009F7F00F0F4DE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1057, 0, -1, 0, 1, N'-1,1057', 44, N'a97808c7-a0b1-40ab-9b6b-a988f5cd53df', N'DateFolder', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009F7F00F0F501 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1058, 0, -1, 0, 1, N'-1,1058', 45, N'3f7110e7-979c-47a2-98c0-5e5cb156f226', N'Homepage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009F7F00F0F50E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1059, 0, -1, 0, 1, N'-1,1059', 46, N'3942ace0-bf4d-4416-ada3-d4cd4c37b213', N'News Area', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009F7F00F0F526 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1060, 0, -1, 0, 1, N'-1,1060', 47, N'7afc0f7a-2e09-4f49-b6b9-312301024da5', N'News Article', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009F7F00F0F530 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1061, 0, -1, 0, 1, N'-1,1061', 48, N'9ac9c11e-c1e0-442d-9091-92379d22592f', N'Textpage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009F7F00F0F548 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1062, 0, -1, 0, 1, N'-1,1062', 49, N'd3d20109-8ad3-4116-923d-7dbfa4e0d21d', N'Starterkit', N'9f68da4f-a3a8-44c2-8226-dcbd125e4840', CAST(0x00009F7F00F0F569 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1063, 0, -1, 0, 1, N'-1,1063', 2, N'f06f2153-7670-4477-87d0-ea83f4aa4a58', N'Business Site', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DBA164 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1064, 0, 1063, 0, 2, N'-1,1063,1064', 1, N'bda1a7fc-d900-424f-a6eb-13f0f54203a9', N'Company News', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DC4C7C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1065, 0, 1064, 0, 3, N'-1,1063,1064,1065', 1, N'b4035230-f587-42e6-91ce-700e9a9857d6', N'Another record year', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DC5F3C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1066, 0, 1064, 0, 3, N'-1,1063,1064,1066', 2, N'cec37b6c-38c5-46ba-9f94-332394544dc4', N'Finance department news', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DC6FA4 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1067, 0, 1064, 0, 3, N'-1,1063,1064,1067', 3, N'd9eae8b5-14ac-4e62-9357-5641d5272d8e', N'Stocks are up', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DC84BC AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1068, 0, 1063, 0, 2, N'-1,1063,1068', 2, N'fd3a63ab-70b0-49eb-babf-a97162c0fbd0', N'Company Blog', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DD6B98 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1069, 0, 1068, 0, 3, N'-1,1063,1068,1069', 1, N'eb4bd7a7-c95d-4974-a871-6fa6a978ee61', N'Company blog post', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DEC54C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1070, 0, 1063, 0, 2, N'-1,1063,1070', 3, N'fd75ece9-2b21-4a96-b815-a40244d07d93', N'About', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00E4F804 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1071, 0, 1070, 0, 3, N'-1,1063,1070,1071', 1, N'07674c0e-1fa4-47cd-89b8-be1ba8718b42', N'Installing runway modules', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DBA290 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1072, 0, 1070, 0, 3, N'-1,1063,1070,1072', 2, N'7f45d056-a4a8-433b-b008-f0b8b128f620', N'Go further', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DBA290 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1073, 0, 1070, 0, 3, N'-1,1063,1070,1073', 3, N'ece955da-0244-4cf8-8216-f8f85ee07a22', N'Getting started', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DBA290 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1074, 0, 1063, 0, 2, N'-1,1063,1074', 4, N'4271d8ea-2ae8-453e-9556-2c09112b9efa', N'Contact us', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009DEA00DBC108 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1075, 0, -1, 0, 1, N'-1,1075', 51, N'71729b26-aa4a-4ab7-a856-c779659773d5', N'u.media slider', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009F7F00F10C53 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1076, 0, -1, 0, 1, N'-1,1076', 52, N'53cf00bb-0a6b-439f-81ce-be5daf6bb420', N'u.media sliders', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x00009F7F00F10CD1 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1077, 0, -1, 0, 1, N'-1,1077', 53, N'b33f69f9-acdc-43f6-8dfe-d014c239ea94', N'Custom', N'9f68da4f-a3a8-44c2-8226-dcbd125e4840', CAST(0x00009F7F00F10CDA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1078, 0, -1, 0, 1, N'-1,1078', 3, N'8eb285b3-9dc6-421f-9d3b-b1a1498970c3', N'Frontpage Sliders', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009E4400EC3268 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1079, 0, 1078, 0, 2, N'-1,1078,1079', 1, N'2eb297b4-f189-4f88-a3e0-66e9372d989b', N'Hello everybody!', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009E4400EC4528 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1080, 0, 1078, 0, 2, N'-1,1078,1080', 2, N'0407db0d-1c4d-488d-92b5-89667933e102', N'You can (of course) change these images!', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009E4400F3BB50 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1081, 0, 1078, 0, 2, N'-1,1078,1081', 3, N'5b7fc5ea-bac4-408b-a8e0-b4541e4a61cb', N'And changing the colors is easy as well!', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009E4400F3EDB4 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1082, 0, 1078, 0, 2, N'-1,1078,1082', 4, N'd2db8416-d9da-4fb2-a2b3-248be6125834', N'New to Umbraco?', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x00009E4400F41460 AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[NodeId] [int] NOT NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoLog] ON
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1, 0, -1, CAST(0x00009F7F00F0D5DD AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2, 0, -1, CAST(0x00009F7F00F0D5DD AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (3, 0, -1, CAST(0x00009F7F00F0D5E1 AS DateTime), N'System', N'Umbraco Exception (DataLayer): SQL helper exception in ExecuteReader while trying to build DTD for Xml schema; is Umbraco installed correctly and the connection string configured?')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (4, 0, -1, CAST(0x00009F7F00F0D5E1 AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (5, 0, -1, CAST(0x00009F7F00F0D5E1 AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (6, 0, -1, CAST(0x00009F7F00F0D5E6 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0027302')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (7, 0, -1, CAST(0x00009F7F00F0D63C AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (8, 0, -1, CAST(0x00009F7F00F0D63C AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (9, 0, -1, CAST(0x00009F7F00F0D641 AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (10, 0, -1, CAST(0x00009F7F00F0D641 AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (11, 0, -1, CAST(0x00009F7F00F0D646 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0018366')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (12, 0, -1, CAST(0x00009F7F00F0D646 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0016899')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (13, 0, -1, CAST(0x00009F7F00F0E9F3 AS DateTime), N'Login', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (14, 0, 1063, CAST(0x00009F7F00F0F592 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (15, 0, 1064, CAST(0x00009F7F00F0F682 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (16, 0, 1065, CAST(0x00009F7F00F0F690 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (17, 0, 1066, CAST(0x00009F7F00F0F6A8 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (18, 0, 1067, CAST(0x00009F7F00F0F6BA AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (19, 0, 1068, CAST(0x00009F7F00F0F6CD AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (20, 0, 1069, CAST(0x00009F7F00F0F6E0 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (21, 0, 1070, CAST(0x00009F7F00F0F6F3 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (22, 0, 1070, CAST(0x00009F7F00F0F6FC AS DateTime), N'Error', N'Couldn''t import property ''asdasd'' as the property type doesn''t exist on this document type')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (23, 0, 1071, CAST(0x00009F7F00F0F701 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (24, 0, 1071, CAST(0x00009F7F00F0F70A AS DateTime), N'Error', N'Couldn''t import property ''asdasd'' as the property type doesn''t exist on this document type')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (25, 0, 1072, CAST(0x00009F7F00F0F70F AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (26, 0, 1072, CAST(0x00009F7F00F0F718 AS DateTime), N'Error', N'Couldn''t import property ''asdasd'' as the property type doesn''t exist on this document type')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (27, 0, 1073, CAST(0x00009F7F00F0F71D AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (28, 0, 1073, CAST(0x00009F7F00F0F72B AS DateTime), N'Error', N'Couldn''t import property ''asdasd'' as the property type doesn''t exist on this document type')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (29, 0, 1074, CAST(0x00009F7F00F0F72F AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (30, 0, 1074, CAST(0x00009F7F00F0F734 AS DateTime), N'Error', N'Couldn''t import property ''asdasd'' as the property type doesn''t exist on this document type')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (31, 0, -1, CAST(0x00009F7F00F0F734 AS DateTime), N'Debug', N'&lt;Action runat=&quot;install&quot; alias=&quot;addXsltExtension&quot; assembly=&quot;umbraco.editorControls&quot; type=&quot;umbraco.editorControls.tags.library&quot; extensionAlias=&quot;tagsLib&quot; /&gt;')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (32, 0, -1, CAST(0x00009F7F00F0F77F AS DateTime), N'Debug', N'&lt;Action runat=&quot;install&quot; alias=&quot;addXsltExtension&quot; assembly=&quot;Runway.Blog&quot; type=&quot;Runway.Blog.BlogLibrary&quot; extensionAlias=&quot;BlogLibrary&quot; /&gt;')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (33, 0, -1, CAST(0x00009F7F00F0F77F AS DateTime), N'Debug', N'&lt;Action runat=&quot;install&quot; alias=&quot;blog_addRestExtension&quot;&gt;&lt;ext assembly=&quot;Runway.Blog&quot; type=&quot;Runway.Blog.Library.Base&quot; alias=&quot;umbBlog&quot;&gt;&lt;permission method=&quot;CreateComment&quot; returnXml=&quot;false&quot; allowAll=&quot;true&quot; /&gt;&lt;permission method=&quot;GetGravatarImage&quot; returnXml=&quot;false&quot; allowAll=&quot;true&quot; /&gt;&lt;/ext&gt;&lt;/Action&gt;')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (34, 0, -1, CAST(0x00009F7F00F0F784 AS DateTime), N'Debug', N'&lt;Action runat=&quot;install&quot; alias=&quot;addDashboardSection&quot; dashboardAlias=&quot;Comments&quot;&gt;&lt;section&gt;&lt;areas&gt;&lt;area&gt;content&lt;/area&gt;&lt;/areas&gt;&lt;tab caption=&quot;Comments&quot;&gt;&lt;control&gt;/usercontrols/blog/CommentModeration.ascx&lt;/control&gt;&lt;/tab&gt;&lt;/section&gt;&lt;/Action&gt;')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (35, 0, -1, CAST(0x00009F7F00F0F784 AS DateTime), N'Debug', N'&lt;Action runat=&quot;install&quot; undo=&quot;true&quot; alias=&quot;AddUrlRewriteRule&quot;&gt;&lt;add name=&quot;rsstagrewrite&quot; virtualUrl=&quot;^~/blog/rss/tags/(.*).aspx&quot; rewriteUrlParameter=&quot;ExcludeFromClientQueryString&quot; destinationUrl=&quot;~/blog/rss.aspx?tag=$1&quot; ignoreCase=&quot;true&quot; /&gt;&lt;/Action&gt;')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (36, 0, -1, CAST(0x00009F7F00F0F784 AS DateTime), N'Debug', N'&lt;Action runat=&quot;install&quot; alias=&quot;blog_executeNonQuery&quot;&gt;&lt;Sqlserver&gt;&lt;![CDATA[      	
     		CREATE TABLE [Comment](
     			  [id] [int] IDENTITY(1,1) NOT NULL CONSTRAINT [PK_Comment] PRIMARY KEY ,
     			  [mainid] [int] NOT NULL,
     			  [nodeid] [int] NOT NULL,
     			  [name] [nvarchar](250) NULL,
     			  [email] [nvarchar](250) NULL,
     			  [website] [nvarchar](250) NULL,
     			  [comment] [ntext] NULL,
     			  [spam] [bit] NULL,
     			  [ham] [bit] NULL,
     			  [created] [datetime] NULL
     				);
		  ]]&gt;&lt;/Sqlserver&gt;&lt;VistaDB&gt;&lt;![CDATA[
		  CREATE TABLE [Comment]
		  (
		  [id] INT NOT NULL PRIMARY KEY,
		  [mainid] INT NOT NULL,
		  [nodeid] INT NOT NULL,
		  [name] NVARCHAR (250),
		  [email] NVARCHAR (250),
		  [website] NVARCHAR (250),
		  [comment] NTEXT,
		  [spam] BIT,
		  [ham] BIT,
		  [created] DATETIME
		  );

		  ALTER TABLE [Comment]
		  ALTER COLUMN [id] INT NOT NULL IDENTITY (1, 1);
		  ]]&gt;&lt;/VistaDB&gt;&lt;MySQL&gt;&lt;![CDATA[
		  CREATE TABLE Comment (
		  id INTEGER UNSIGNED DEFAULT NULL AUTO_INCREMENT,
		  mainid INTEGER UNSIGNED NOT NULL,
		  nodeid INTEGER UNSIGNED NOT NULL,
		  name VARCHAR(250),
		  email VARCHAR(250),
		  website VARCHAR(250),
		  comment TEXT,
		  spam BOOLEAN,
		  ham BOOLEAN,
		  created DATETIME,
		  PRIMARY KEY (id)
		  );
		  ]]&gt;&lt;/MySQL&gt;&lt;/Action&gt;')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (37, 0, -1, CAST(0x00009F7F00F0F784 AS DateTime), N'Debug', N'&lt;Action runat=&quot;install&quot; alias=&quot;publishRootDocument&quot; documentName=&quot;Business Site&quot; /&gt;')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (38, 0, 1063, CAST(0x00009F7F00F0F789 AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (39, 0, 1064, CAST(0x00009F7F00F0F79B AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (40, 0, 1065, CAST(0x00009F7F00F0F7A5 AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (41, 0, 1066, CAST(0x00009F7F00F0F7AE AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (42, 0, 1067, CAST(0x00009F7F00F0F7B3 AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (43, 0, 1068, CAST(0x00009F7F00F0F7BC AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (44, 0, 1069, CAST(0x00009F7F00F0F7CA AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (45, 0, 1070, CAST(0x00009F7F00F0F7CF AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (46, 0, 1071, CAST(0x00009F7F00F0F7D8 AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (47, 0, 1072, CAST(0x00009F7F00F0F7DD AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (48, 0, 1073, CAST(0x00009F7F00F0F7E6 AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (49, 0, 1074, CAST(0x00009F7F00F0F7EB AS DateTime), N'Publish', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (50, 0, -1, CAST(0x00009F7F00F0F7EF AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (51, 0, -1, CAST(0x00009F7F00F0F7EF AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (52, 0, -1, CAST(0x00009F7F00F0F7EF AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (53, 0, -1, CAST(0x00009F7F00F0F7F4 AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (54, 0, -1, CAST(0x00009F7F00F0F7F4 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0026309')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (55, 0, -1, CAST(0x00009F7F00F0F7F4 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0022503')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (56, 0, -1, CAST(0x00009F7F00F0FA60 AS DateTime), N'Debug', N'CurrentVersion different from configStatus: ''4.7.1'',''''')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (57, 0, -1, CAST(0x00009F7F00F0FA60 AS DateTime), N'Debug', N'CurrentVersion different from configStatus: ''4.7.1'',''''')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (58, 0, -1, CAST(0x00009F7F00F0FA60 AS DateTime), N'System', N'Application started at 17/10/2011 14:37:22')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (59, 0, 1078, CAST(0x00009F7F00F10CF2 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (60, 0, 1079, CAST(0x00009F7F00F10D99 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (61, 0, 1080, CAST(0x00009F7F00F10DB0 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (62, 0, 1081, CAST(0x00009F7F00F10DC3 AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (63, 0, 1082, CAST(0x00009F7F00F10DCC AS DateTime), N'New', N'')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (64, 0, -1, CAST(0x00009F7F00F10DDA AS DateTime), N'System', N'Loading content from disk cache...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (65, 0, -1, CAST(0x00009F7F00F10DDF AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (66, 0, -1, CAST(0x00009F7F00F10DDF AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (67, 0, -1, CAST(0x00009F7F00F10DDF AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (68, 0, -1, CAST(0x00009F7F00F10DDF AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (69, 0, -1, CAST(0x00009F7F00F10DE4 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0037422')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (70, 0, -1, CAST(0x00009F7F00F10DE8 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0022875')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (71, 0, -1, CAST(0x00009F7F00F11057 AS DateTime), N'System', N'Loading content from disk cache...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (72, 0, -1, CAST(0x00009F7F00F11057 AS DateTime), N'Custom', N'[UmbracoExamine] JONATHAN-OPTI machine is the Executive Indexer with 1 servers in the cluster')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (73, 0, -1, CAST(0x00009F7F00F11057 AS DateTime), N'Custom', N'[UmbracoExamine] Adding examine event handlers for index providers: 2')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (74, 0, -1, CAST(0x00009F7F00F11057 AS DateTime), N'Custom', N'[UmbracoExamine] JONATHAN-OPTI machine is the Executive Indexer with 1 servers in the cluster')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (75, 0, 1081, CAST(0x00009F7F00F11057 AS DateTime), N'System', N'Document not published so XML cannot be generated')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (76, 0, 1080, CAST(0x00009F7F00F11057 AS DateTime), N'System', N'Document not published so XML cannot be generated')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (77, 0, 1082, CAST(0x00009F7F00F11057 AS DateTime), N'System', N'Document not published so XML cannot be generated')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (78, 0, -1, CAST(0x00009F7F00F11057 AS DateTime), N'System', N'Application started at 17/10/2011 14:37:41')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (79, 0, 1079, CAST(0x00009F7F00F11057 AS DateTime), N'System', N'Document not published so XML cannot be generated')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (80, 0, -1, CAST(0x00009F7F00F112D1 AS DateTime), N'System', N'Loading content from disk cache...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (81, 0, -1, CAST(0x00009F7F00F112D1 AS DateTime), N'Custom', N'[UmbracoExamine] (InternalIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (82, 0, -1, CAST(0x00009F7F00F112D1 AS DateTime), N'Custom', N'[UmbracoExamine] Adding examine event handlers for index providers: 2')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (83, 0, -1, CAST(0x00009F7F00F112D1 AS DateTime), N'Custom', N'[UmbracoExamine] (InternalMemberIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (84, 0, -1, CAST(0x00009F7F00F112D1 AS DateTime), N'System', N'Application started at 17/10/2011 14:37:43')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (85, 0, -1, CAST(0x00009F7F00F127A7 AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (86, 0, -1, CAST(0x00009F7F00F127A7 AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (87, 0, -1, CAST(0x00009F7F00F127AC AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (88, 0, -1, CAST(0x00009F7F00F127AC AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (89, 0, -1, CAST(0x00009F7F00F127AC AS DateTime), N'Error', N'At /?umbSkinning=true&umbSkinningConfigurator=true (Referred by: http://localhost:10471/?umbSkinning=true&umbSkinningConfigurator=true): System.ArgumentNullException: Object Graph cannot be null.
Parameter name: graph
   at System.Runtime.Serialization.Formatters.Binary.ObjectWriter.Serialize(Object graph, Header[] inHeaders, __BinaryWriter serWriter, Boolean fCheck)
   at System.Runtime.Serialization.Formatters.Binary.BinaryFormatter.Serialize(Stream serializationStream, Object graph, Header[] headers, Boolean fCheck)
   at umbraco.presentation.LiveEditing.DefaultLiveEditingContext.UpdateListSaver.Render(HtmlTextWriter writer)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.WebControls.WebControl.RenderContents(HtmlTextWriter writer)
   at System.Web.UI.WebControls.WebControl.Render(HtmlTextWriter writer)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.UpdatePanel.RenderChildren(HtmlTextWriter writer)
   at System.Web.UI.UpdatePanel.Render(HtmlTextWriter writer)
   at System.Web.UI.PageRequestManager.RenderFormCallback(HtmlTextWriter writer, Control containerControl)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.HtmlControls.HtmlForm.RenderChildren(HtmlTextWriter writer)
   at System.Web.UI.HtmlControls.HtmlContainerControl.Render(HtmlTextWriter writer)
   at System.Web.UI.Control.RenderControlInternal(HtmlTextWriter writer, ControlAdapter adapter)
   at System.Web.UI.HtmlFormWrapper.System.Web.UI.IHtmlForm.RenderControl(HtmlTextWriter writer)
   at System.Web.UI.PageRequestManager.RenderPageCallback(HtmlTextWriter writer, Control pageControl)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.Page.Render(HtmlTextWriter writer)
   at umbraco.UmbracoDefault.Render(HtmlTextWriter output)
   at System.Web.UI.Page.ProcessRequestMain(Boolean includeStagesBeforeAsyncPoint, Boolean includeStagesAfterAsyncPoint)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (90, 0, -1, CAST(0x00009F7F00F127B6 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0035082')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (91, 0, -1, CAST(0x00009F7F00F127B6 AS DateTime), N'Debug', N'Xml saved in 00:00:00.0037841')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (92, 0, -1, CAST(0x00009F7F00F2451A AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (93, 0, -1, CAST(0x00009F7F00F2451A AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (94, 0, -1, CAST(0x00009F7F00F2451A AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (95, 0, -1, CAST(0x00009F7F00F2451A AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (96, 0, -1, CAST(0x00009F7F00F2451A AS DateTime), N'Debug', N'Xml saved in 00:00:00.0029860')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (97, 0, -1, CAST(0x00009F7F00F2451A AS DateTime), N'Debug', N'Xml saved in 00:00:00.0020817')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (98, 0, -1, CAST(0x00009F7F00F2451F AS DateTime), N'Error', N'At /?umbSkinning=true&umbSkinningConfigurator=true (Referred by: http://localhost:10471/?umbSkinning=true&umbSkinningConfigurator=true): System.ArgumentNullException: Object Graph cannot be null.
Parameter name: graph
   at System.Runtime.Serialization.Formatters.Binary.ObjectWriter.Serialize(Object graph, Header[] inHeaders, __BinaryWriter serWriter, Boolean fCheck)
   at System.Runtime.Serialization.Formatters.Binary.BinaryFormatter.Serialize(Stream serializationStream, Object graph, Header[] headers, Boolean fCheck)
   at umbraco.presentation.LiveEditing.DefaultLiveEditingContext.UpdateListSaver.Render(HtmlTextWriter writer)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.WebControls.WebControl.RenderContents(HtmlTextWriter writer)
   at System.Web.UI.WebControls.WebControl.Render(HtmlTextWriter writer)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.UpdatePanel.RenderChildren(HtmlTextWriter writer)
   at System.Web.UI.UpdatePanel.Render(HtmlTextWriter writer)
   at System.Web.UI.PageRequestManager.RenderFormCallback(HtmlTextWriter writer, Control containerControl)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.HtmlControls.HtmlForm.RenderChildren(HtmlTextWriter writer)
   at System.Web.UI.HtmlControls.HtmlContainerControl.Render(HtmlTextWriter writer)
   at System.Web.UI.Control.RenderControlInternal(HtmlTextWriter writer, ControlAdapter adapter)
   at System.Web.UI.HtmlFormWrapper.System.Web.UI.IHtmlForm.RenderControl(HtmlTextWriter writer)
   at System.Web.UI.PageRequestManager.RenderPageCallback(HtmlTextWriter writer, Control pageControl)
   at System.Web.UI.Control.RenderChildrenInternal(HtmlTextWriter writer, ICollection children)
   at System.Web.UI.Page.Render(HtmlTextWriter writer)
   at umbraco.UmbracoDefault.Render(HtmlTextWriter output)
   at System.Web.UI.Page.ProcessRequestMain(Boolean includeStagesBeforeAsyncPoint, Boolean includeStagesAfterAsyncPoint)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (99, 0, -1, CAST(0x00009F7F00F2FCF4 AS DateTime), N'Custom', N'[UmbracoExamine] (InternalIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (100, 0, -1, CAST(0x00009F7F00F2FCF4 AS DateTime), N'Custom', N'[UmbracoExamine] Adding examine event handlers for index providers: 2')
GO
print 'Processed 100 total records'
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (101, 0, -1, CAST(0x00009F7F00F2FCF4 AS DateTime), N'Custom', N'[UmbracoExamine] (InternalMemberIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (102, 0, -1, CAST(0x00009F7F00F2FCF4 AS DateTime), N'System', N'Application started at 17/10/2011 14:44:41')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (103, 0, -1, CAST(0x00009F7F00F2FCF4 AS DateTime), N'System', N'Loading content from disk cache...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (104, 0, -1, CAST(0x00009F7F00F31462 AS DateTime), N'System', N'Loading content from disk cache...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (105, 0, -1, CAST(0x00009F7F00F31462 AS DateTime), N'Custom', N'[UmbracoExamine] (InternalMemberIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (106, 0, -1, CAST(0x00009F7F00F31462 AS DateTime), N'System', N'Application started at 17/10/2011 14:45:01')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (107, 0, -1, CAST(0x00009F7F00F31462 AS DateTime), N'Custom', N'[UmbracoExamine] Adding examine event handlers for index providers: 2')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (108, 0, -1, CAST(0x00009F7F00F31462 AS DateTime), N'Custom', N'[UmbracoExamine] (InternalIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (109, 0, -1, CAST(0x00009F7F00F567BE AS DateTime), N'System', N'Loading content from disk cache...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (110, 0, -1, CAST(0x00009F7F00F567BE AS DateTime), N'Custom', N'[UmbracoExamine] (InternalIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (111, 0, -1, CAST(0x00009F7F00F567BE AS DateTime), N'Custom', N'[UmbracoExamine] (InternalMemberIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (112, 0, -1, CAST(0x00009F7F00F567BE AS DateTime), N'Custom', N'[UmbracoExamine] Adding examine event handlers for index providers: 2')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (113, 0, -1, CAST(0x00009F7F00F567BE AS DateTime), N'System', N'Application started at 17/10/2011 14:53:29')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (114, 0, -1, CAST(0x00009F7F00F56D14 AS DateTime), N'Error', N'At /favicon.ico (Referred by: ): ')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (115, 0, -1, CAST(0x00009F7F00F575F3 AS DateTime), N'Error', N'At /favicon.ico (Referred by: ): ')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (116, 0, -1, CAST(0x00009F7F00F578C4 AS DateTime), N'Error', N'At /favicon.ico (Referred by: ): ')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (117, 0, -1, CAST(0x00009F7F00F57C66 AS DateTime), N'Error', N'At /company-blog/company-blog-post.aspx (Referred by: http://localhost:65316/company-blog.aspx): System.Web.HttpException (0x80004005): Cannot find ContentPlaceHolder ''cp_head'' in the master page ''/masterpages/umbMaster.master'', verify content control''s ContentPlaceHolderID attribute in the content page.
   at System.Web.UI.MasterPage.CreateMaster(TemplateControl owner, HttpContext context, VirtualPath masterPageFile, IDictionary contentTemplateCollection)
   at System.Web.UI.MasterPage.get_Master()
   at System.Web.UI.MasterPage.ApplyMasterRecursive(MasterPage master, IList appliedMasterFilePaths)
   at System.Web.UI.Page.ApplyMasterPage()
   at System.Web.UI.Page.PerformPreInit()
   at System.Web.UI.Page.ProcessRequestMain(Boolean includeStagesBeforeAsyncPoint, Boolean includeStagesAfterAsyncPoint)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (118, 0, -1, CAST(0x00009F7F00F57CDB AS DateTime), N'Error', N'At /favicon.ico (Referred by: ): ')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (119, 0, -1, CAST(0x00009F7F00F58198 AS DateTime), N'Error', N'At /favicon.ico (Referred by: ): ')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (120, 0, -1, CAST(0x00009F7F00F584CB AS DateTime), N'Error', N'At /favicon.ico (Referred by: ): ')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (121, 0, -1, CAST(0x00009F7F00F5AED3 AS DateTime), N'Error', N'At /favicon.ico (Referred by: ): ')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (122, 0, -1, CAST(0x00009F7F00F5EE08 AS DateTime), N'Error', N'At /favicon.ico (Referred by: ): ')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (123, 0, -1, CAST(0x00009F7F016816B3 AS DateTime), N'Debug', N'Republishing starting')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (124, 0, -1, CAST(0x00009F7F016816B3 AS DateTime), N'Debug', N'Xml Pages loaded')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (125, 0, -1, CAST(0x00009F7F016816B5 AS DateTime), N'Debug', N'Done republishing Xml Index')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (126, 0, -1, CAST(0x00009F7F016816C0 AS DateTime), N'System', N'Loading content from database...')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (127, 0, -1, CAST(0x00009F7F016816C1 AS DateTime), N'Custom', N'[UmbracoExamine] Adding examine event handlers for index providers: 2')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (128, 0, -1, CAST(0x00009F7F016816C9 AS DateTime), N'Custom', N'[UmbracoExamine] (InternalMemberIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (129, 0, -1, CAST(0x00009F7F016816CB AS DateTime), N'System', N'Application started at 17/10/2011 21:51:02')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (130, 0, -1, CAST(0x00009F7F016816CD AS DateTime), N'Custom', N'[UmbracoExamine] (InternalIndexer) Index is being optimized')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (131, 0, -1, CAST(0x00009F7F01681C7B AS DateTime), N'Debug', N'Xml saved in 00:00:00.0185763')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (132, 0, -1, CAST(0x00009F7F01681ECE AS DateTime), N'Error', N'At /favicon.ico (Referred by: ): ')
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](10) NULL,
	[languageCultureName] [nvarchar](100) NULL,
 CONSTRAINT [PK_language] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_umbracoLanguage] UNIQUE NONCLUSTERED 
(
	[languageISOCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (1, N'en-US', N'en-US')
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) NOT NULL,
	[macroName] [nvarchar](255) NULL,
	[macroScriptType] [nvarchar](255) NULL,
	[macroScriptAssembly] [nvarchar](255) NULL,
	[macroXSLT] [nvarchar](255) NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroPython] [nvarchar](255) NULL,
 CONSTRAINT [PK_macro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsMacro] ON
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (1, 0, 0, N'umb2ndLevelNavigation', N'2nd Level Navigation', N'', N'', N'umb2ndLevelNavigation.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (2, 0, 0, N'BlogArchive', N'Blog Archive', N'', N'', N'umbBlogArchive.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (3, 0, 0, N'BlogBlogroll', N'Blog Blogroll', N'', N'', N'umbBlogroll.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (4, 0, 0, N'BlogCategories', N'Blog Categories', N'', N'', N'umbBlogCategories.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (5, 0, 0, N'frmBlogComment', N'Blog Comment Form', N'usercontrols/Blog/AjaxCommentForm.ascx', N'', N'', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (6, 1, 0, N'BlogFullArchive', N'Blog Full Archive', N'', N'', N'umbBlogFullArchive.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (7, 0, 0, N'BlogLatestComments', N'Blog Latest Comments', N'', N'', N'umbBlogLatestComments.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (8, 1, 0, N'BlogListPosts', N'Blog List Posts', N'', N'', N'umbBlogListPosts.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (9, 0, 0, N'BlogMetaWeblogChannel', N'Blog Meta Weblog Channel', N'', N'', N'umbBlogMetaWeblogChannel.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (10, 0, 0, N'BlogPostListComments', N'Blog Post List Comments', N'', N'', N'umbBlogPostListComments.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (11, 0, 0, N'BlogRss', N'Blog Rss', N'', N'', N'umbBlogRss.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (12, 0, 0, N'BlogRssFeedLink', N'Blog Rss Feed Link', N'', N'', N'umbBlogRssFeedLink.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (13, 1, 0, N'BlogTagcloud', N'Blog Tagcloud', N'', N'', N'umbBlogTagcloud.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (14, 0, 0, N'Blogpages', N'Blogpages', N'', N'', N'umbBlogpages.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (15, 0, 0, N'BlogpostRelatedPages', N'Blogpost Related Pages', N'', N'', N'umbBlogpostRelatedPages.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (16, 1, 0, N'umbBusinessFrontpageNews', N'Business Frontpage News', N'', N'', N'umbBusinessFrontpageNews.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (17, 1, 0, N'umbBusinessFrontpageBlog', N'Business Frontpage Blog', N'', N'', N'umbBusinessFrontpageBlog.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (18, 1, 0, N'RunwayContactForm', N'Contact Form', N'usercontrols/RunwayContactForm/Contact.ascx', N'', N'', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (19, 1, 0, N'umbFeedViewer', N'Feed Viewer', N'', N'', N'umbfeedViewer.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (20, 0, 0, N'umbNewsListItems', N'News List Items', N'', N'', N'umbNewsListItems.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (21, 0, 0, N'umbTopNavigation', N'Top Navigation', N'', N'', N'umbTopNavigation.xslt', 1, 0, 0, N'')
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (22, 0, 0, N'umediaSliderImages', N'u.media Slider Images', N'', N'', N'u.mediaSliderImages.xslt', 1, 0, 0, N'')
SET IDENTITY_INSERT [dbo].[cmsMacro] OFF
/****** Object:  Table [dbo].[cmsTags]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [varchar](200) NULL,
	[parentId] [int] NULL,
	[group] [varchar](100) NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NOT NULL,
	[key] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsDictionary] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMacroPropertyType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroPropertyType](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[macroPropertyTypeAlias] [nvarchar](50) NULL,
	[macroPropertyTypeRenderAssembly] [nvarchar](255) NULL,
	[macroPropertyTypeRenderType] [nvarchar](255) NULL,
	[macroPropertyTypeBaseType] [nvarchar](255) NULL,
 CONSTRAINT [PK_macroPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsMacroPropertyType] ON
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (3, N'mediaCurrent', N'umbraco.macroRenderings', N'media', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (4, N'contentSubs', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (5, N'contentRandom', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (6, N'contentPicker', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (13, N'number', N'umbraco.macroRenderings', N'numeric', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (14, N'bool', N'umbraco.macroRenderings', N'yesNo', N'Boolean')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (16, N'text', N'umbraco.macroRenderings', N'text', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (17, N'contentTree', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (18, N'contentType', N'umbraco.macroRenderings', N'contentTypeSingle', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (19, N'contentTypeMultiple', N'umbraco.macroRenderings', N'contentTypeMultiple', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (20, N'contentAll', N'umbraco.macroRenderings', N'content', N'Int32')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (21, N'tabPicker', N'umbraco.macroRenderings', N'tabPicker', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (22, N'tabPickerMultiple', N'umbraco.macroRenderings', N'tabPickerMultiple', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (23, N'propertyTypePicker', N'umbraco.macroRenderings', N'propertyTypePicker', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (24, N'propertyTypePickerMultiple', N'umbraco.macroRenderings', N'propertyTypePickerMultiple', N'String')
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (25, N'textMultiLine', N'umbraco.macroRenderings', N'textMultiple', N'String')
SET IDENTITY_INSERT [dbo].[cmsMacroPropertyType] OFF
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroPropertyHidden] [bit] NOT NULL,
	[macroPropertyType] [smallint] NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [tinyint] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) NOT NULL,
	[macroPropertyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_macroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsMacroProperty] ON
INSERT [dbo].[cmsMacroProperty] ([id], [macroPropertyHidden], [macroPropertyType], [macro], [macroPropertySortOrder], [macroPropertyAlias], [macroPropertyName]) VALUES (1, 1, 16, 5, 0, N'CommentsClosedMessage', N'Comments Closed Message')
INSERT [dbo].[cmsMacroProperty] ([id], [macroPropertyHidden], [macroPropertyType], [macro], [macroPropertySortOrder], [macroPropertyAlias], [macroPropertyName]) VALUES (2, 1, 14, 11, 0, N'iscommentfeed', N'iscommentfeed')
INSERT [dbo].[cmsMacroProperty] ([id], [macroPropertyHidden], [macroPropertyType], [macro], [macroPropertySortOrder], [macroPropertyAlias], [macroPropertyName]) VALUES (3, 1, 16, 18, 0, N'Subject', N'Subject')
INSERT [dbo].[cmsMacroProperty] ([id], [macroPropertyHidden], [macroPropertyType], [macro], [macroPropertySortOrder], [macroPropertyAlias], [macroPropertyName]) VALUES (4, 1, 16, 18, 0, N'YourEmail', N'Your Email')
INSERT [dbo].[cmsMacroProperty] ([id], [macroPropertyHidden], [macroPropertyType], [macro], [macroPropertySortOrder], [macroPropertyAlias], [macroPropertyName]) VALUES (5, 1, 16, 19, 0, N'feedUrl', N'Url to feed (including http://)')
INSERT [dbo].[cmsMacroProperty] ([id], [macroPropertyHidden], [macroPropertyType], [macro], [macroPropertySortOrder], [macroPropertyAlias], [macroPropertyName]) VALUES (6, 1, 13, 19, 0, N'numberOfItems', N'Number of Items to list')
INSERT [dbo].[cmsMacroProperty] ([id], [macroPropertyHidden], [macroPropertyType], [macro], [macroPropertySortOrder], [macroPropertyAlias], [macroPropertyName]) VALUES (7, 1, 13, 19, 0, N'excerptLength', N'Excerpt Length (0 for full description)')
SET IDENTITY_INSERT [dbo].[cmsMacroProperty] OFF
/****** Object:  Table [dbo].[cmsStylesheetProperty]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsStylesheetProperty](
	[nodeId] [int] NOT NULL,
	[stylesheetPropertyEditor] [bit] NULL,
	[stylesheetPropertyAlias] [nvarchar](50) NULL,
	[stylesheetPropertyValue] [nvarchar](400) NULL,
 CONSTRAINT [PK_cmsStylesheetProperty] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsStylesheet]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsStylesheet](
	[nodeId] [int] NOT NULL,
	[filename] [nvarchar](100) NOT NULL,
	[content] [ntext] NULL,
 CONSTRAINT [PK_cmsStylesheet] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[cmsStylesheet] ([nodeId], [filename], [content]) VALUES (1062, N'', N'/*LAYOUT*/

body{text-align: left; padding: 0px; margin: 0px; background: #F6F7F9;}

#main{margin: auto; margin-top: 20px; text-align: left; width: 870px;}

#top{border-bottom: 1px solid #CED7DE;}

#top ul{list-style: none; padding: 0px 0px 15px 0px; margin: 0px;}
#top ul li{display: inline; margin: 0px; padding: 0xp;}
#top ul li a{padding: 10px 20px 10px 0px; color: #000}

#top ul li.current a{font-weight: bold}

#body{margin: auto; padding: 2em 0em 2em 0em;}
#footer{padding-top: 5px; clear: both;}

/* Subpages layout */
#content.textpage{text-align: left; float: left; width: 75%;}
#subNavigation{margin-top: 40px; width: 22%; float: right;} 
#subNavigation ul{list-style: none; border: 1px solid #FFE8CD; background: #FFF9D8; display: block; padding: 10px; padding-left: 0px;}
#subNavigation ul li{margin: 0; padding: 0px; padding-right: 10px;}

/* FONTS standards */
body {font-size: 14px; background:#fff; font-family: "Lucida Grande", Arial, sans-serif;}

h1, h2, h3, h4, h5, h6 {color: #426FC8; font-weight: 500;}
h1 {font-size:60px; line-height: 1; margin-bottom:0.5em; font-weight: bold; letter-spacing: -1px; width: auto; color: #666;}
h2 {font-size:25px; margin-bottom:0.75em;}

h3 {font-size: 18px;line-height:1;margin-bottom:1em;}
h4 {font-size:1.2em;line-height:1.25;margin-bottom:1.25em;}
h5 {font-size:1em;font-weight:bold;margin-bottom:1.5em;}
h6 {font-size:1em;font-weight:bold;}
h1 img, h2 img, h3 img, h4 img, h5 img, h6 img {margin:0;}

p {margin:0 0 1.5em; font-size: 16px;}
p img {float:left;margin:1.5em 1.5em 1.5em 0;padding:0;}
p img.right {float:right;margin:1.5em 0 1.5em 1.5em;}

/* LINKS standards */
a:hover {color:#000;}
a {color: #426FC8; text-decoration:underline;}
h1 a{color: #666; text-decoration: none;}

/* ELEMENTS standards */
blockquote {margin:1.5em;color:#666;font-style:italic;}
strong {font-weight:bold;}
em, dfn {font-style:italic;}
dfn {font-weight:bold;}
sup, sub {line-height:0;}
abbr, acronym {border-bottom:1px dotted #666;}
address {margin:0 0 1.5em;font-style:italic;}
del {color:#666;}
pre, code {margin:1.5em 0;white-space:pre;}
pre, code, tt {font:1em ''andale mono'', ''lucida console'', monospace;line-height:1.5;}
li ul, li ol {margin:0 1.5em;}
ul, ol {margin:0 1.5em 1.5em 1.5em;}
ul {list-style-type:disc;}
ol {list-style-type:decimal;}
dl {margin:0 0 1.5em 0;}
dl dt {font-weight:bold;}
dd {margin-left:1.5em;}
table {margin-bottom:1.4em;width:100%;}
th {font-weight:bold;background:#C3D9FF;}
th, td {padding:4px 10px 4px 5px;}
tr.even td {background:#E5ECF9;}
tfoot {font-style:italic;}
caption {background:#eee;}

/* FORM ELEMENTS */
label {font-weight:bold;}
fieldset {padding:1.4em;margin:0 0 1.5em 0;border:1px solid #ccc;}
legend {font-weight:bold;font-size:1.2em;}
input.text, input.title, textarea, select {margin:0.5em 0;border:1px solid #bbb;}
input.text:focus, input.title:focus, textarea:focus, select:focus {border:1px solid #666;}
input.text, input.title {width:300px;padding:5px;}
input.title {font-size:1.5em;}
textarea {width:300px;height:250px;padding:5px;}
.error, .notice, .success {padding:.8em;margin-bottom:1em;border:2px solid #ddd;}
.error {background:#FBE3E4;color:#8a1f11;border-color:#FBC2C4;}
.notice {background:#FFF6BF;color:#514721;border-color:#FFD324;}
.success {background:#E6EFC2;color:#264409;border-color:#C6D880;}
.error a {color:#8a1f11;}
.notice a {color:#514721;}
.success a {color:#264409;}

.error ul{margin-bottom: 0; padding-bottom: 0;}


/*BLOG STYLES */
#content .post{text-align: left;}

/* Clear fix to repleace br clear:both */ 
.clearfix:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
 
.clearfix {
  display: inline-block;
}
 
html[xmlns] .clearfix {
  display: block;
}
 
* html .clearfix {
  height: 1%;
}



















































')
INSERT [dbo].[cmsStylesheet] ([nodeId], [filename], [content]) VALUES (1077, N'', N'@charset "utf-8";

/* Body / Background */
body {
  background-color: #333440;
  background-image: url(/images/bg_overlay.png);
  background-position: top center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  color: #FFF;
  font-family: Arial, Helvetica, ''Helvetica Neue'', Verdana, sans-serif;
  padding: 0px;
  margin: 0px;
}

/* Font */
h1, h2, h3, h4{
  font-family: ''Droid Sans'', arial, serif;
  -webkit-transform: rotate(-0.0000000001deg); /* A little antialias hack for chrome */
}

/* Primary COLOR */
.newsbox .feedList h4 a,
#sitedescription h1,
a
{
  color: #ec008c;
}
/* Primary BACKGROUND */
.primary-bgcolor,
a.ui-btn-big,
.newsbox .feedList h4 a:hover,
#slider #imageSliderNav a.activeSlide
{
  background-color: #ec008c;
  color: #FFF;
}



/* Secondary COLOR */
/* Secondary BACKGROUND */
#header #mainmenu ul,
#header #mainmenu ul li
{
  background-color: #22212C;
}





a.ui-btn-big {
  background-image: url(/images/ui-btn-big-arrow.png);
  background-position: right center;
  background-repeat: no-repeat;
  border-radius: 5px;
  border-bottom: solid 1px rgba(0, 0, 0, 0.496094);
  color: white !important;
  display: inline-block;
  font-size: 18px;
  font-style: normal;
  font-weight: bold;
  line-height: 14px;
  padding: 12px 50px 12px 19px;
  text-decoration: none;
}


a {
  outline: none;
}

#page {
  width:950px;
  margin:0px auto;
  text-align:left;
  padding:15px;
  padding-bottom: 0px;
  background: #FFF;
}

/* Header */

#header {
  margin-bottom: 20px; 
  
}
  #header a,#header a img{
    border: none;
  }
  #header #sitedescription{
    float: right;
    text-align: right;
    margin: 7px;
  }
    #header #sitedescription h1 {
      font-weight: normal;
      position: relative;
      font-size: 16px;
      line-height: 0.5em;
    }  
  #header #mainmenu{
    margin: 0px;
    padding: 0px;
  }
    #header .mainmenucorner{
      margin: 0px;
      padding: 0px;
      background: url(/images/mainmenu_corner.gif) top left no-repeat;
      height: 20px;
      clear: both;
      position: relative;
      top: -15px;
      left: -25px;
      width: 20px;
      margin-bottom: -40px;
    }
  
  
    #header #mainmenu ul{
      width: 975px;
      float: left;
      margin-bottom: 15px; 
      margin-top: 20px; 
      padding: 0px;
      margin-left: -25px;
    }
      #header #mainmenu ul li{
        list-style: none;
        background-image: url(/images/icons/mainmenu_itembg.png);
        background-position: right bottom;
        background-repeat: no-repeat;
        float: left;
        font-size: 14px;
      }
        #header #mainmenu ul li a{
          padding: 15px 20px;
          display: block;
          color: #fff;
          text-decoration: none;
          background: url(/images/mainmenu_item_bottomshadow.jpg) bottom left no-repeat;
          margin-bottom: -13px;
          padding-bottom: 28px;
        }

           #header #mainmenu ul li.current{
               background-color: #a9a4a3;
          }

          #header #mainmenu ul li.home a{
         
            background-image: url(/images/icons/home_dark.png);
            background-position: 16px 16px;
            background-repeat: no-repeat;
            padding-left: 35px;  
          }
          
          
          
        #header #mainmenu ul li:hover{
          color: #FFF;
          text-decoration: none;
          background-color: #a9a4a3;
        }
        


#slider {
  overflow: auto;
  width: 100%;
  clear: both;
}
  #slider #imageSlider{
    padding: 0px;
    width: 100%;
  }
    #slider .imageSlide{
      padding: 0px;
      width: 100%;
    }
      #slider .imageSliderInfo{
        color: #444;
        float: right; 
        width: 370px;
        margin-right: 9px;
      }
        #slider .imageSliderInfo h2{
          color: #666;
          font-size: 26px;
        }
        #slider .imageSliderInfo p{
          color: #666;
          font-size: 20px;
        }
      #slider .imageSliderImage{
        float: left;
        padding: 17px;
        padding-bottom: 27px;
        background: url(/images/imageSliderImageBg.png) top center no-repeat;
      }
        #slider .imageSliderImage img{
          border: 3px #FFF solid;
        }
    #slider #imageSliderNav{
      float: left;
      overflow: auto;
      text-align: center;
      width: 540px;
    }
      #slider #imageSliderNav a{
        background-image: url(/images/imageSliderNav.png);
        background-position: center center;
        background-repeat: no-repeat;
        background-color: #dee4e4;  
        text-indent: -9000px;
        display: inline-block;
        height: 20px;
        width: 20px;
      }
        #slider #imageSliderNav a.activeSlide{
        }

#content {
  padding: 0px;
  color: #666;
  -background: url(/images/divider_left_top.png) top left no-repeat;
  margin-top: 15px;
  min-height: 200px;
}
  #leftcontent {
    float: left;
    width: 550px;
    padding: 20px;
    background: url(/images/divider_left_top.jpg) top left no-repeat;
    margin-bottom: 20px;
  }
    #leftcontent h1{
      margin: 0px;
      font-size: 32px;
      font-weight: normal;
    }
    #leftcontent h2{
      font-weight: normal;
      font-size: 28px;
    }
    #leftcontent h3{
      font-weight: normal;
      font-size: 22px;
    }
    #leftcontent h4{
      font-weight: normal;
      font-size: 16px;
    }
  
  
  
  
/* Special left column content */  
  
  #leftcontent .feedList {
    margin: 0px;
    padding: 0px;
  }
    #leftcontent .feedList LI{
      margin: 0px;
      padding: 0px;
      list-style: none;
    }

    #leftcontent .feedList h4{
      margin: 0px;
      padding: 0px;
      font-weight: normal;
    }
      #leftcontent .feedList h4 a{
        text-decoration: none;
      }
      #leftcontent .feedList h4 a:hover{
        text-decoration: underline;
      }
    #leftcontent .feedList p{
      font-size: 14px;
      display: inline;
      margin: 0px;
      padding: 0px;
    }
    #leftcontent .feedList small{
      display: block;
      font-size: 11px;
      margin: 0px;
      padding: 0px;
      margin-bottom: 20px;
      color: #999;
    }
  #rightcontent {
    float: right;
    width: 345px;
    min-height: 200px;
  }
    #rightcontent .hotspot {
      margin-bottom: 20px;
      padding: 20px;
      overflow: auto;
      background: url(/images/divider_right_top.jpg) top left no-repeat;
      font-size: 12px;
    }
      #rightcontent .hotspot a {
        float: right;
      }
    
    #rightcontent h4 {
      margin-top: 0px;
      font-size: 20px;
      font-weight: normal;
      margin-bottom: 10px;
    }
    #rightcontent img {
      float: left;
      margin-right: 15px;
      margin-bottom: 0px;
      margin-top: 8px;
    }
    
    
#footer {
  clear: both;

  font-size: 12px;
  color: #3a3c40;
  background-color: #050a0f;
  padding: 20px;
  overflow: auto;
}
  #footer a{
    font-size: 12px;
    color: #555;
    text-decoration: none;
  }
    #footer a:hover{
      color: #FFF;
    }
    #footer h4{
      font-size: 16px;
      color: #494e53;
      margin-top: 0px;
    }
  #footer #footermenu{
    width: 160px;
    float: left;
    margin-bottom: 15px;
    margin-right: 15px;
    height: 150px;
  }
    #footer #footermenu h4{
      font-size: 16px;
      color: #494e53;
      margin-top: 0px;
    }
    #footer #footermenu ul{
      list-style: none;
      padding: 0px;
      margin: 0px;
    }
      #footer #footermenu ul li{
        list-style: none;
        padding: 0px;
        margin-bottom: 3px;
      }
  #footer #footershare{
    width: 160px;
    float: left;
    margin-bottom: 15px;
    margin-right: 15px;
    height: 150px;
  }
    #footer #footershare ul{
      list-style: none;
      padding: 0px;
      margin: 0px;
    }
      #footer #footershare ul li{
        list-style: none;
        padding: 0px;
        margin-bottom: 3px;
      }
    #footer #footershare a{
      
    }
      #footer #footershare a img{
        vertical-align: middle;
        filter:alpha(opacity=25);
        -moz-opacity:0.25;
        -khtml-opacity: 0.25;
        opacity: 0.25;
        margin-right: 10px;
        border: none;
      }
        #footer #footershare a:hover img{
          vertical-align: middle;
          filter:alpha(opacity=100);
          -moz-opacity:1;
          -khtml-opacity: 1;
          opacity: 1;
        }
  #footer #footercontact{
    width: 235px;
    float: left;
    margin-bottom: 15px;
    margin-right: 15px;
    height: 150px;
  }
  #footer #footerabout{
    width: 265px;
    float: left;
    margin-bottom: 15px;
    margin-right: 15px;
    height: 150px;
  }
  #footer #footer-end{
    width: 100%;
    clear: both;
    border-top: 1px #0d1115 solid;
    padding-top: 15px;
  }
    
    
    




/*  COLOR!  */



.whitebox {
  background-color: #dee4e4;  
  height: 150px;
}









')
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[masterContentType] [int] NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsContentType] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContentType] ON
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (532, 1031, N'Folder', N'folder.gif', N'folder.png', NULL, NULL)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (533, 1032, N'Image', N'mediaPhoto.gif', N'folder.png', NULL, NULL)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (534, 1033, N'File', N'mediaMulti.gif', N'folder.png', NULL, NULL)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (535, 1055, N'umbBlog', N'.sprTreeFolder', N'folder.png', N'', 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (536, 1056, N'umbBlogPost', N'.sprTreeDoc3', N'doc.png', N'', 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (537, 1057, N'DateFolder', N'.sprTreeFolder', N'folder.png', N'', 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (538, 1058, N'umbHomepage', N'.sprTreeFolder', N'folder.png', N'The homepage of a starter kit website.', 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (539, 1059, N'umbNewsArea', N'folder.gif', N'folder.png', N'', 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (540, 1060, N'umbNewsArticle', N'.sprTreeDoc2', N'docWithImage.png', N'', 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (541, 1061, N'umbTextpage', N'.sprTreeDoc', N'doc.png', N'This is the standard content page for a starter kit website.', 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (542, 1075, N'umediaSlider', N'folder.gif', N'folder.png', N'', 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [masterContentType]) VALUES (543, 1076, N'umediaSliders', N'folder.gif', N'folder.png', N'', 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
/****** Object:  Table [dbo].[cmsContent]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContent](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[contentType] [int] NOT NULL,
 CONSTRAINT [PK_cmsContent] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsContent] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContent] ON
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (1, 1063, 1058)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (2, 1064, 1059)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (3, 1065, 1060)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (4, 1066, 1060)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (5, 1067, 1060)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (6, 1068, 1055)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (7, 1069, 1056)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (8, 1070, 1061)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (9, 1071, 1061)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (10, 1072, 1061)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (11, 1073, 1061)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (12, 1074, 1061)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (13, 1078, 1076)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (14, 1079, 1075)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (15, 1080, 1075)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (16, 1081, 1075)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (17, 1082, 1075)
SET IDENTITY_INSERT [dbo].[cmsContent] OFF
/****** Object:  Table [dbo].[cmsDataType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cmsDataType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[controlId] [uniqueidentifier] NOT NULL,
	[dbType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cmsDataType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsDataType] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cmsDataType] ON
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (4, -49, N'38b352c1-e9f8-4fd8-9324-9a2eab06d97a', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (6, -51, N'1413afcb-d19a-4173-8e9a-68288d2a73b8', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (8, -87, N'5e9b75ae-face-41c8-b47e-5f4b0fd82f83', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (9, -88, N'ec15c1e5-9d90-422a-aa52-4f7622c63bea', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (10, -89, N'67db8357-ef57-493e-91ac-936d305e0f2a', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (11, -90, N'5032a6e6-69e3-491d-bb28-cd31cd11086c', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (13, -92, N'6c738306-4c17-4d88-b9bd-6546f3771597', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (14, -36, N'b6fb1622-afa5-4bbf-a3cc-d9672a442222', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (15, -37, N'f8d60f68-ec59-4974-b43b-c46eb5677985', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (16, -38, N'cccd4ae9-f399-4ed2-8038-2e88d19e810c', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (17, -39, N'928639ed-9c73-4028-920c-1e55dbb68783', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (18, -40, N'a52c7c1c-c330-476e-8605-d63d3b84b6a6', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (19, -41, N'23e93522-3200-44e2-9f29-e61a6fcbb79a', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (20, -42, N'a74ea9c9-8e18-4d2a-8cf6-73c6206c5da6', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (21, -43, N'b4471851-82b6-4c75-afa4-39fa9c6a75e9', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (31, 1034, N'158aa029-24ed-4948-939e-c3da209e5fba', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (32, 1035, N'ead69342-f06d-4253-83ac-28000225583b', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (33, 1036, N'39f533e4-0551-4505-a64b-e0425c5ce775', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (35, 1038, N'60b7dabf-99cd-41eb-b8e9-4d2e669bbde9', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (36, 1039, N'cdbf0b5d-5cb2-445f-bc12-fcaaec07cf2c', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (37, 1040, N'71b8ad1a-8dc2-425c-b6b8-faa158075e63', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (38, 1041, N'4023e540-92f5-11dd-ad8b-0800200c9a66', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (39, 1042, N'474fcff8-9d2d-11de-abc6-ad7a56d89593', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (40, 1043, N'7a2d436c-34c2-410f-898f-4a23b3d79f54', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (41, 1044, N'e66af4a0-e8b4-11de-8a39-0800200c9a66', N'Ntext')
SET IDENTITY_INSERT [dbo].[cmsDataType] OFF
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDomains]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_domains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAppTree]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAppTree](
	[treeSilent] [bit] NOT NULL,
	[treeInitialize] [bit] NOT NULL,
	[treeSortOrder] [tinyint] NOT NULL,
	[appAlias] [nvarchar](50) NOT NULL,
	[treeAlias] [nvarchar](150) NOT NULL,
	[treeTitle] [nvarchar](255) NOT NULL,
	[treeIconClosed] [nvarchar](255) NOT NULL,
	[treeIconOpen] [nvarchar](255) NOT NULL,
	[treeHandlerAssembly] [nvarchar](255) NOT NULL,
	[treeHandlerType] [nvarchar](255) NOT NULL,
	[action] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoAppTree] PRIMARY KEY CLUSTERED 
(
	[appAlias] ASC,
	[treeAlias] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (1, 1, 0, N'content', N'content', N'Indhold', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadContent', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 0, N'content', N'contentRecycleBin', N'RecycleBin', N'folder.gif', N'folder_o.gif', N'umbraco', N'cms.presentation.Trees.ContentRecycleBin', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'developer', N'cacheBrowser', N'CacheBrowser', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadCache', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 0, N'developer', N'CacheItem', N'Cachebrowser', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadCacheItem', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'developer', N'datatype', N'Datatyper', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadDataTypes', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'developer', N'macros', N'Macros', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMacros', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 3, N'developer', N'packager', N'Packages', N'folder.gif', N'folder_o.gif', N'umbraco', N'loadPackager', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 1, N'developer', N'packagerPackages', N'Packager Packages', N'folder.gif', N'folder_o.gif', N'umbraco', N'loadPackages', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 4, N'developer', N'python', N'Python Files', N'folder.gif', N'folder_o.gif', N'umbraco', N'loadPython', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 5, N'developer', N'xslt', N'XSLT Files', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadXslt', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'media', N'media', N'Medier', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMedia', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 0, N'media', N'mediaRecycleBin', N'RecycleBin', N'folder.gif', N'folder_o.gif', N'umbraco', N'cms.presentation.Trees.MediaRecycleBin', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'member', N'member', N'Medlemmer', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMembers', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'member', N'memberGroup', N'MemberGroups', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMemberGroups', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'member', N'memberType', N'Medlemstyper', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMemberTypes', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 3, N'settings', N'dictionary', N'Dictionary', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadDictionary', N'openDictionary()')
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 4, N'settings', N'languages', N'Languages', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadLanguages', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 5, N'settings', N'mediaTypes', N'Medietyper', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadMediaTypes', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 6, N'settings', N'nodeTypes', N'Dokumenttyper', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadNodeTypes', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'settings', N'scripts', N'Scripts', N'folder.gif', N'folder_o.gif', N'umbraco', N'loadScripts', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 0, 0, N'settings', N'stylesheetProperty', N'Stylesheet Property', N'', N'', N'umbraco', N'loadStylesheetProperty', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'settings', N'stylesheets', N'Stylesheets', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadStylesheets', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'settings', N'templates', N'Templates', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadTemplates', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'translation', N'openTasks', N'Tasks assigned to you', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadOpenTasks', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'translation', N'yourTasks', N'Tasks created by you', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadYourTasks', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 2, N'users', N'userPermissions', N'User Permissions', N'folder.gif', N'folder_o.gif', N'umbraco', N'cms.presentation.Trees.UserPermissions', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 0, N'users', N'users', N'Brugere', N'.sprTreeFolder', N'.sprTreeFolder_o', N'umbraco', N'loadUsers', NULL)
INSERT [dbo].[umbracoAppTree] ([treeSilent], [treeInitialize], [treeSortOrder], [appAlias], [treeAlias], [treeTitle], [treeIconClosed], [treeIconOpen], [treeHandlerAssembly], [treeHandlerType], [action]) VALUES (0, 1, 1, N'users', N'userTypes', N'User Types', N'folder.gif', N'folder_o.gif', N'umbraco', N'cms.presentation.Trees.UserTypes', NULL)
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[master] [int] NULL,
	[alias] [nvarchar](100) NULL,
	[design] [ntext] NOT NULL,
 CONSTRAINT [PK_templates] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsTemplate] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (1, 1045, 1053, N'umbBlogDatefolder', N'<%@ Master Language="C#" MasterPageFile="~/masterpages/umbMaster.master" AutoEventWireup="true" %>

<asp:Content ContentPlaceHolderID="cp_content" runat="server">
  <div id="content" class="textpage">
    <umbraco:Macro Alias="BlogListPosts" runat="server"></umbraco:Macro>
  </div>
</asp:Content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (2, 1046, 1053, N'umbBlogpost', N'<%@ master language="C#" masterpagefile="~/masterpages/umbMaster.master" autoeventwireup="true" %>

  
<asp:content contentplaceholderid="cp_top" runat="server">
  <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.5.5/jquery.validate.min.js"></script>
</asp:content>
  
<asp:content contentplaceholderid="cp_content" runat="server">

<div id="content" class="textpage">
  
<div class="hentry p1 post publish">
<h2 class="entry-title"><umbraco:Item field="pageName" runat="server"></umbraco:Item></h2>

<div class="entry-date">
  <abbr class=''published'' title=''<umbraco:Item field="PostDate" useIfEmpty="createDate" formatAsDate="true" runat="server"/>''>
        <umbraco:Item field="PostDate" useIfEmpty="createDate" formatAsDate="true" runat="server"/>
    </abbr>
</div>

<div class="entry-content">
<umbraco:Item field="bodyText" runat="server"></umbraco:Item>
</div>

<div class="entry-meta">
This entry was written by <span class="author vcard"><spam class="fn n"><umbraco:Item field="writerName" runat="server"/></span></span>,
posted on <abbr class="published" title=''<umbraco:Item ID="Item1" field="PostDate" formatAsDate="true" runat="server"/>''><umbraco:Item field="PostDate" formatAsDate="true" runat="server"/></abbr>

Bookmark the <a href=''<umbraco:Item field="pageID" runat="server" xslt="umbraco.library:NiceUrl({0})"></umbraco:Item>'' title="Permalink" rel="bookmark">permalink</a>.

Follow any comments here with the
<umbraco:Item field="pageID" runat="server" xslt="concat(''&lt;a href=&quot;'',umbraco.library:Replace(umbraco.library:NiceUrl({0}),''.aspx'',''''),''/commentrss.aspx'',''&quot; title=&quot;Comments RSS&quot; rel=&quot;alternate&quot; type=&quot;application/rss+xml&quot;&gt;'',''RSS feed for this post'',''&lt;/a&gt;'')" xsltDisableEscaping="true" ></umbraco:Item>.
    You can <a class="comment-link" href="#respond" title="Post a comment">post a comment</a>.

</div>
  
</div>

<div id="related">
<umbraco:Macro Alias="BlogpostRelatedPages" runat="server"></umbraco:Macro>
</div>

<div id="comments">
<umbraco:Macro Alias="BlogPostListComments" runat="server"></umbraco:Macro>

<div id="respond">
<h3>Post a comment</h3>
<umbraco:Macro CommentsClosedMessage="Sorry, comments are closed" Alias="frmBlogComment" runat="server"></umbraco:Macro>
</div>

</div>

</div>

<div id="subNavigation">
      <umbraco:Macro Alias="umb2ndLevelNavigation" runat="server"></umbraco:Macro>
</div>

</asp:content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (3, 1047, NULL, N'CommentRss', N'<%@ Master Language="C#" MasterPageFile="~/umbraco/masterpages/default.master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolderDefault" runat="server"><umbraco:Macro iscommentfeed="1" Alias="BlogRss" runat="server"></umbraco:Macro></asp:Content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (4, 1048, 1053, N'umbBusinessHomepage', N'<%@ Master Language="C#" MasterPageFile="~/masterpages/umbMaster.master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="cp_content" runat="server">
  <div id="content" class="frontPage">
    <umbraco:Item runat="server" field="bodyText"/>
    
    
    <umbraco:Macro Alias="umbBusinessFrontpageNews" runat="server"></umbraco:Macro>
    
    <umbraco:Macro Alias="umbBusinessFrontpageBlog" runat="server"></umbraco:Macro>
    
    <h3>Business news</h3>
    <umbraco:Macro feedUrl="http://feeds.reuters.com/reuters/technologyNews" numberOfItems="5" excerptLength="120" Alias="umbFeedViewer" runat="server"></umbraco:Macro>
  </div>
</asp:Content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (5, 1049, 1053, N'umbHomepage', N'<%@ Master Language="C#" MasterPageFile="~/masterpages/umbMaster.master" AutoEventWireup="true" %>
    <asp:Content ContentPlaceHolderID="cp_content" runat="server">
      <div id="content" class="frontPage">
        <umbraco:Item runat="server" field="bodyText"/>
        

      </div>
    </asp:Content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (6, 1050, 1053, N'umbNews', N'<%@ Master Language="C#" MasterPageFile="~/masterpages/umbMaster.master" AutoEventWireup="true" %>

<asp:Content ContentPlaceHolderID="cp_content" runat="server">

<div id="content" class="textpage">
  
      <div id="contentHeader">  
          <h2><umbraco:Item runat="server" field="pageName"/></h2>
      </div>
      
      <umbraco:Macro Alias="umbNewsListItems" runat="server"></umbraco:Macro>
</div>
   

</asp:Content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (7, 1051, 1053, N'umbNewsArticle', N'<%@ Master Language="C#" MasterPageFile="~/masterpages/umbMaster.master" AutoEventWireup="true" %>

<asp:Content ContentPlaceHolderID="cp_content" runat="server">

<div id="content" class="textpage">
  
      <div id="contentHeader">  
          <h2><umbraco:Item runat="server" field="pageName"/></h2>
      </div>
        
      <h4><umbraco:Item field="introduction" convertLineBreaks="true" runat="server"></umbraco:Item></h4>
  
      <umbraco:Item runat="server" field="bodyText" />
</div>


</asp:Content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (8, 1052, NULL, N'Rss', N'<%@ Master Language="C#" MasterPageFile="~/umbraco/masterpages/default.master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolderDefault" runat="server"><umbraco:Macro Alias="BlogRss" runat="server"></umbraco:Macro>
</asp:Content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (9, 1053, NULL, N'umbMaster', N'<%@ Master Language="C#" MasterPageFile="~/umbraco/masterpages/default.master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolderDefault" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"[]> 
<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="head" runat="server">
    
  
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <title><asp:placeholder runat="server"><umbraco:Item runat="server" field="pageName" /> - <umbraco:Item runat="server" field="siteName" recursive="true" /></asp:placeholder></title>
    
  <link rel="stylesheet" type="text/css" href="/css/Starterkit.css" /> 
  
  <umbraco:Macro Alias="BlogRssFeedLink" runat="server"></umbraco:Macro>
    
  <asp:contentplaceholder id="cp_head" runat="server" />
</head>
  <body>    
    <div id="main">
      
      <asp:contentplaceholder id="cp_top" runat="server">
        <div id="top">
          <h1 id="siteName"><a href="/"><umbraco:Item runat="server" field="siteName" recursive="true" /></a></h1>
          <h2 id="siteDescription"><umbraco:Item runat="server" field="siteDescription" recursive="true" /></h2>
        
          <umbraco:Macro Alias="umbTopNavigation" runat="server" />
        </div>
      </asp:contentplaceholder>
            
      <div id="body" class="clearfix">
          <form id="RunwayMasterForm" runat="server">
            <asp:ContentPlaceHolder ID="cp_content" runat="server"></asp:ContentPlaceHolder>
          </form>
      </div> 
      
      <asp:contentplaceholder id="cp_footer" runat="server">
        <div id="footer"></div>
      </asp:contentplaceholder>
    </div>
  </body>
</html> 
</asp:content>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (10, 1054, 1053, N'umbTextpage', N'<%@ Master Language="C#" MasterPageFile="~/masterpages/umbMaster.master" AutoEventWireup="true" %>
<asp:Content ContentPlaceHolderID="cp_content" runat="server">

<div id="content" class="textpage">
  
      <div id="contentHeader">  
          <h2><umbraco:Item runat="server" field="pageName"/></h2>
      </div>
      
      <umbraco:Item runat="server" field="bodyText" />
</div>

<div id="subNavigation">
      <umbraco:Macro Alias="umb2ndLevelNavigation" runat="server"></umbraco:Macro>
</div>
  

</asp:Content>')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userType] [smallint] NOT NULL,
	[startStructureID] [int] NOT NULL,
	[startMediaID] [int] NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](125) NOT NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userDefaultPermissions] [nvarchar](50) NULL,
	[userLanguage] [nvarchar](10) NULL,
	[defaultToLiveEditing] [bit] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_umbracoUser] UNIQUE NONCLUSTERED 
(
	[userLogin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[umbracoUser] ON
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (0, 0, 0, 1, -1, -1, N'admin', N'admin', N'/7IIcyNxAts3fvQYe2PI3d19cDU=', N'test@cubeworks.co.uk', NULL, N'en', 0)
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
/****** Object:  Table [dbo].[umbracoUser2NodePermission]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[umbracoUser2NodePermission](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [char](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [char](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[umbracoUser2app]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2app](
	[user] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user2app] PRIMARY KEY CLUSTERED 
(
	[user] ASC,
	[app] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'users')
/****** Object:  Table [dbo].[cmsTask]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTask](
	[closed] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskTypeId] [tinyint] NOT NULL,
	[nodeId] [int] NOT NULL,
	[parentUserId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Comment] [nvarchar](500) NULL,
 CONSTRAINT [PK_cmsTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1055, 1049, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1056, 1046, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1057, 1045, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1058, 1048, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1059, 1050, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1060, 1051, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1061, 1054, 1)
/****** Object:  Table [dbo].[cmsDocument]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[documentUser] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[releaseDate] [datetime] NULL,
	[expireDate] [datetime] NULL,
	[updateDate] [datetime] NOT NULL,
	[templateId] [int] NULL,
	[alias] [nvarchar](255) NULL,
	[newest] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocument] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsDocument] UNIQUE NONCLUSTERED 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 0, 0, N'ab3b0609-3485-4731-8417-0e574ebeebcf', N'Stocks are up', NULL, NULL, CAST(0x00009F7F00F0F7B3 AS DateTime), 1051, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1074, 1, 0, N'0fce1d8e-643e-42f3-bdc5-1a3d5340f7df', N'Contact us', NULL, NULL, CAST(0x00009F7F00F0F734 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 1, 0, N'9a796a4a-4a0c-4751-9996-28d1a0d518d6', N'Another record year', NULL, NULL, CAST(0x00009F7F00F0F6A0 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 1, 0, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', N'Company Blog', NULL, NULL, CAST(0x00009F7F00F0F6D9 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1068, 0, 0, N'ef8dbe9a-96c8-41ec-8895-2bbb8c96b012', N'Company Blog', NULL, NULL, CAST(0x00009F7F00F0F7BC AS DateTime), 1049, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1067, 1, 0, N'977765a1-c316-4bf4-83c6-30ae1a222f16', N'Stocks are up', NULL, NULL, CAST(0x00009F7F00F0F6C4 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 1, 0, N'e9c4ff9d-812f-4021-a3a7-4c23af9a745c', N'Finance department news', NULL, NULL, CAST(0x00009F7F00F0F6B5 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1070, 1, 0, N'bf37b326-aedf-4f5e-9293-4d0a2378fed3', N'About', NULL, NULL, CAST(0x00009F7F00F0F6FB AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1071, 1, 0, N'41c3c619-8c77-436f-a049-50910618fc7f', N'Installing runway modules', NULL, NULL, CAST(0x00009F7F00F0F70B AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 1, 0, N'ae11eb09-75b3-44d0-89f0-5fbaa80a4ecc', N'Company blog post', NULL, NULL, CAST(0x00009F7F00F0F6ED AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1063, 1, 0, N'23fe28fd-95aa-42b2-9f25-60c38522f190', N'Business Site', NULL, NULL, CAST(0x00009F7F00F0F678 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1064, 1, 0, N'732b6601-37e2-4155-af8a-6868491322ef', N'Company News', NULL, NULL, CAST(0x00009F7F00F0F68B AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1072, 0, 0, N'318357c8-283b-496e-822d-75a772a6965a', N'Go further', NULL, NULL, CAST(0x00009F7F00F0F7DD AS DateTime), 1054, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1081, 0, 0, N'baa39b1c-8dc2-49f9-823b-7ef8102363fb', N'And changing the colors is easy as well!', NULL, NULL, CAST(0x00009F7F00F10DC9 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1073, 1, 0, N'ad54184f-b366-438f-9c80-8a7312fab9c9', N'Getting started', NULL, NULL, CAST(0x00009F7F00F0F72A AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1080, 0, 0, N'b496e032-8161-4352-922e-90fc51e60e35', N'You can (of course) change these images!', NULL, NULL, CAST(0x00009F7F00F10DBF AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1074, 0, 0, N'48ea29e3-1fcd-4a34-9a23-967dfbe2556c', N'Contact us', NULL, NULL, CAST(0x00009F7F00F0F7EB AS DateTime), 1054, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1065, 0, 0, N'b551fcdd-bdd4-4190-8f6a-9a1c12d5b72b', N'Another record year', NULL, NULL, CAST(0x00009F7F00F0F7A5 AS DateTime), 1051, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1073, 0, 0, N'4ce26c83-75f7-4626-90dc-a238b569d42f', N'Getting started', NULL, NULL, CAST(0x00009F7F00F0F7E6 AS DateTime), 1054, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1069, 0, 0, N'78af3c45-d360-4dbc-8621-a5eb69dcbb2e', N'Company blog post', NULL, NULL, CAST(0x00009F7F00F0F7CA AS DateTime), 1046, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1064, 0, 0, N'01dac1ab-4078-4ff8-abd7-a6032d2fb682', N'Company News', NULL, NULL, CAST(0x00009F7F00F0F79B AS DateTime), 1050, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1078, 0, 0, N'87087985-b6e3-4388-98a5-a912b1be6ee3', N'Frontpage Sliders', NULL, NULL, CAST(0x00009F7F00F10D96 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1066, 0, 0, N'52305e94-21d0-4fdb-af4a-b0bfd83780e4', N'Finance department news', NULL, NULL, CAST(0x00009F7F00F0F7AE AS DateTime), 1051, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1072, 1, 0, N'40699e58-26cb-492a-af9b-bfabe7764fca', N'Go further', NULL, NULL, CAST(0x00009F7F00F0F71A AS DateTime), NULL, NULL, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1079, 0, 0, N'f4fdc2da-9cdf-420a-91fa-db095ac0771e', N'Hello everybody!', NULL, NULL, CAST(0x00009F7F00F10DAD AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1082, 0, 0, N'51511466-14c8-4b1d-a06b-e76e8beb7ff9', N'New to Umbraco?', NULL, NULL, CAST(0x00009F7F00F10DD7 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1063, 0, 0, N'9c186206-e1f7-4bcd-afa0-f0fcfd7f8133', N'Business Site', NULL, NULL, CAST(0x00009F7F00F0F78D AS DateTime), 1048, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1070, 0, 0, N'6d71ab8d-8df2-4d5f-99d6-fbddebe5e60a', N'About', NULL, NULL, CAST(0x00009F7F00F0F7D4 AS DateTime), 1054, NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [alias], [newest]) VALUES (1071, 0, 0, N'5a4fdd9a-bcff-45c2-a036-ff2651c6b52d', N'Installing runway modules', NULL, NULL, CAST(0x00009F7F00F0F7D8 AS DateTime), 1054, NULL, 1)
/****** Object:  Table [dbo].[cmsContentXml]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentXml](
	[nodeId] [int] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1063, N'<umbHomepage id="1063" parentID="-1" level="1" writerID="0" creatorID="0" nodeType="1058" template="1048" sortOrder="2" createDate="2010-09-07T13:19:39" updateDate="2011-10-17T14:37:20" nodeName="Business Site" urlName="business-site" writerName="admin" creatorName="admin" path="-1,1063" isDoc=""><bodyText><![CDATA[<p>The Simple Starter Kit gives you a bare-bones website that introduces you to a set of well-defined conventions for building an Umbraco website.</p>
<p>The Simple website is very basic in form and provided without any design or functionality - unless you add a Skin, of course. By installing the Simple Starter Kit, you''ll begin with a minimal site built on best practices. You''ll also enjoy the benefits of speaking the same "language" as the rest of the Umbraco community by using common properties and naming conventions.</p>
<p>Now that you know what the Simple site is, it is time to get started using Umbraco.</p>]]></bodyText><siteName>Business site</siteName><siteDescription><![CDATA[Off to a great start]]></siteDescription></umbHomepage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1064, N'<umbNewsArea id="1064" parentID="1063" level="2" writerID="0" creatorID="0" nodeType="1059" template="1050" sortOrder="1" createDate="2010-09-07T13:22:05" updateDate="2011-10-17T14:37:20" nodeName="Company News" urlName="company-news" writerName="admin" creatorName="admin" path="-1,1063,1064" isDoc="" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1065, N'<umbNewsArticle id="1065" parentID="1064" level="3" writerID="0" creatorID="0" nodeType="1060" template="1051" sortOrder="1" createDate="2010-09-07T13:22:21" updateDate="2011-10-17T14:37:20" nodeName="Another record year" urlName="another-record-year" writerName="admin" creatorName="admin" path="-1,1063,1064,1065" isDoc=""><introduction><![CDATA[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id enim vel metus dignissim fermentum. Donec molestie pulvinar ultricies. Donec ullamcorper facilisis mattis. Sed id condimentum dui. Vivamus ornare congue facilisis. Nulla arcu lorem, sollicitudin at tincidunt nec, congue in dolor. Morbi mattis magna non risus convallis non dignissim sapien dictum.]]></introduction><bodyText><![CDATA[
<p>Nam consectetur risus quis diam dignissim convallis. Donec
congue arcu at ligula venenatis facilisis. Donec tincidunt, augue
vel venenatis suscipit, ipsum orci pretium lacus, et tempor felis
nisi eu diam. Fusce vel turpis quis nisl viverra pharetra sit amet
et risus. Donec interdum ullamcorper sodales. Mauris feugiat velit
rhoncus sapien sagittis venenatis quis non purus. Cras ac arcu
velit.</p>

<p>Class aptent taciti sociosqu ad litora torquent per conubia
nostra, per inceptos himenaeos. Etiam non tortor nec risus laoreet
auctor. Mauris ipsum ligula, suscipit fermentum interdum id,
facilisis eu felis. Proin ut porttitor tortor. Proin quis pulvinar
urna. Nullam cursus feugiat feugiat. Praesent iaculis lacus at arcu
feugiat suscipit. Proin elementum tortor vitae massa euismod
tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut
ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue
magna, sodales eu consectetur vestibulum, consequat in libero.
Nulla facilisi. Nunc id ligula urna. Sed tempus bibendum eros, a
posuere ante varius eu. Mauris quis neque nec felis laoreet
eleifend. Nullam bibendum molestie bibendum. Aenean vestibulum
sodales orci sed mollis.</p>

<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>
]]></bodyText></umbNewsArticle>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1066, N'<umbNewsArticle id="1066" parentID="1064" level="3" writerID="0" creatorID="0" nodeType="1060" template="1051" sortOrder="2" createDate="2010-09-07T13:22:35" updateDate="2011-10-17T14:37:20" nodeName="Finance department news" urlName="finance-department-news" writerName="admin" creatorName="admin" path="-1,1063,1064,1066" isDoc=""><introduction><![CDATA[Tortor vitae massa euismod tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue magna, sodales eu consectetur vestibulum, consequat in libero. Nulla facilisi. Nunc id ligula urna.]]></introduction><bodyText><![CDATA[
<p>Class aptent taciti sociosqu ad litora torquent per conubia
nostra, per inceptos himenaeos. Etiam non tortor nec risus laoreet
auctor. Mauris ipsum ligula, suscipit fermentum interdum id,
facilisis eu felis. Proin ut porttitor tortor. Proin quis pulvinar
urna. Nullam cursus feugiat feugiat. Praesent iaculis lacus at arcu
feugiat suscipit. Proin elementum tortor vitae massa euismod
tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut
ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue
magna, sodales eu consectetur vestibulum, consequat in libero.
Nulla facilisi. Nunc id ligula urna. Sed tempus bibendum eros, a
posuere ante varius eu. Mauris quis neque nec felis laoreet
eleifend. Nullam bibendum molestie bibendum. Aenean vestibulum
sodales orci sed mollis.</p>

<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>

<p>Pellentesque habitant morbi tristique senectus et netus et
malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque
urna sodales quis rutrum sapien consectetur. Nam consectetur semper
augue sit amet fringilla. Curabitur vel magna rhoncus ipsum
pharetra aliquet. Morbi et molestie justo. Fusce congue tellus
aliquam leo sollicitudin nec bibendum sapien egestas. Pellentesque
nec sapien enim. Phasellus justo leo, congue dapibus euismod id,
luctus ut ante. Curabitur justo metus, faucibus eget placerat sit
amet, fringilla eget urna. Aliquam a leo ipsum.</p>
]]></bodyText></umbNewsArticle>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1067, N'<umbNewsArticle id="1067" parentID="1064" level="3" writerID="0" creatorID="0" nodeType="1060" template="1051" sortOrder="3" createDate="2010-09-07T13:22:53" updateDate="2011-10-17T14:37:20" nodeName="Stocks are up" urlName="stocks-are-up" writerName="admin" creatorName="admin" path="-1,1063,1064,1067" isDoc=""><introduction><![CDATA[Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque urna sodales quis rutrum sapien consectetur. Nam consectetur semper augue sit amet fringilla. Curabitur vel magna rhoncus ipsum pharetra aliquet.]]></introduction><bodyText><![CDATA[
<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>

<p>Pellentesque habitant morbi tristique senectus et netus et
malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque
urna sodales quis rutrum sapien consectetur. Nam consectetur semper
augue sit amet fringilla. Curabitur vel magna rhoncus ipsum
pharetra aliquet. Morbi et molestie justo. Fusce congue tellus
aliquam leo sollicitudin nec bibendum sapien egestas. Pellentesque
nec sapien enim. Phasellus justo leo, congue dapibus euismod id,
luctus ut ante. Curabitur justo metus, faucibus eget placerat sit
amet, fringilla eget urna. Aliquam a leo ipsum.</p>

<p>In nec tristique odio. Proin fringilla lobortis neque sit amet
dapibus. Maecenas mollis tempor lacus, ac commodo sem condimentum
ac. Nulla facilisi. Duis eleifend placerat laoreet. In fringilla
accumsan leo a laoreet. Sed tincidunt nisl a risus blandit
pellentesque. Mauris in ante ac sapien semper sagittis. Etiam
luctus posuere pulvinar. Sed eros sem, sollicitudin a laoreet non,
ultrices nec nulla. Morbi tempus, nunc ac malesuada tempus, ipsum
neque sodales ipsum, et lacinia libero tellus a risus. Integer sit
amet purus nibh, in aliquam nisi. Curabitur non imperdiet libero.
Quisque magna massa, vestibulum vitae laoreet sit amet, luctus eu
elit. Nam eros mi, consectetur a eleifend sed, tincidunt id
odio.</p>
]]></bodyText></umbNewsArticle>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1068, N'<umbBlog id="1068" parentID="1063" level="2" writerID="0" creatorID="0" nodeType="1055" template="1049" sortOrder="2" createDate="2010-09-07T13:26:10" updateDate="2011-10-17T14:37:20" nodeName="Company Blog" urlName="company-blog" writerName="admin" creatorName="admin" path="-1,1063,1068" isDoc=""><siteName></siteName><siteDescription><![CDATA[ ]]></siteDescription><blogroll><links /></blogroll><akismetAPIKey></akismetAPIKey><owner><![CDATA[0]]></owner><pingServices><links /></pingServices><bodyText><![CDATA[<?UMBRACO_MACRO macroAlias="BlogListPosts" />]]></bodyText></umbBlog>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1069, N'<umbBlogPost id="1069" parentID="1068" level="3" writerID="0" creatorID="0" nodeType="1056" template="1046" sortOrder="1" createDate="2010-09-07T13:31:05" updateDate="2011-10-17T14:37:20" nodeName="Company blog post" urlName="company-blog-post" writerName="admin" creatorName="admin" path="-1,1063,1068,1069" isDoc=""><bodyText><![CDATA[
<p><strong>Hi there!</strong> , welcome to your new Umbraco powered
blog. Before you start posting away, there''s a handful of things we
thought you should know:</p>

<ol>
<li>
<p>There is a comprehensive and detailed usage and configuration
manual, which covers everything about setting up this blog and
about blogging in general</p>

<p><strong><a
href="http://our.umbraco.org/FileDownload?id=498">Download the
usage guide</a></strong></p>
</li>

<li>
<p>This package is open source and developement is community
driven. So if you have an idea for improvement or wish to be a part
of developing this package you should join the conversaion.</p>

<p><a
href="http://our.umbraco.org/projects/blog-4-umbraco"><strong>Go to
the Blog 4 Umbraco project page on our.umbraco.org</strong></a></p>
</li>

<li>
<p>You can change the appearance of this blog by changing the skin
in the umbraco back-end. The skins are powered by the umbraco
community. If you wish to do your own skin or just want to tweak
the current one, you can find guidance in the skinners guide</p>

<p><strong><a
href="http://our.umbraco.org/FileDownload?id=498">Download the
skinners manual</a></strong></p>
</li>

<li>
<p>Chainging the skin is just the first step, everything is
extendable and hackable. This blog uses open standards and follows
umbraco best practices, so everything can be tweaked. Want to know
how to get started? Ask the friendly community at
our.umbraco.org</p>

<p><strong><a href="http://our.umbraco.org">Go to our.umbraco.org
community</a></strong></p>
</li>
</ol>
]]></bodyText><tags><![CDATA[]]></tags><closeComments>1</closeComments><PostDate>2010-09-07T00:00:00</PostDate></umbBlogPost>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1070, N'<umbTextpage id="1070" parentID="1063" level="2" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="3" createDate="2010-09-07T13:53:39" updateDate="2011-10-17T14:37:20" nodeName="About" urlName="about" writerName="admin" creatorName="admin" path="-1,1063,1070" isDoc=""><bodyText><![CDATA[]]></bodyText><umbracoNaviHide></umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1071, N'<umbTextpage id="1071" parentID="1070" level="3" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="1" createDate="2010-09-07T13:19:40" updateDate="2011-10-17T14:37:20" nodeName="Installing runway modules" urlName="installing-runway-modules" writerName="admin" creatorName="admin" path="-1,1063,1070,1071" isDoc=""><bodyText><![CDATA[<p>Umbraco modules encapsulate specific bits of advanced functionality that are easily added to your website.</p>
<p>Once installed, Umbraco modules are open source and easy to customize if you want to modify the behavior for your specific needs.<br /> Because Umbraco modules are provided under the MIT license you are free to use and modify them any way you want, with no strings attached.</p>
<p>To add Umbraco modules to your website, go to the <strong>Settings</strong> section, expand the <strong>Templates</strong> item, select the <strong>Starterkit Master</strong> template, then click the <strong>Customize Skin</strong> button on the toolbar.</p>
<p>Umbraco modules are available for various kinds of navigation, a sitemap, social media feeds, and a contact form. The list of available Umbraco modules is growing rapidly and is automatically updated from a central source, always fresh and current.</p>
<p><a href="http://umbraco.org/get-started" title="Get Started with Umbraco">Get more information</a> about the umbraco way.</p>]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1072, N'<umbTextpage id="1072" parentID="1070" level="3" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="2" createDate="2010-09-07T13:19:40" updateDate="2011-10-17T14:37:20" nodeName="Go further" urlName="go-further" writerName="admin" creatorName="admin" path="-1,1063,1070,1072" isDoc=""><bodyText><![CDATA[<p>The Simple Starter Kit only scratches the surface of what''s possible with Umbraco. Below the Simple Starter Kit and its modules lies a great architecture that lets you implement whatever you need.</p>
<p>With Umbraco you''ve finally got a solid, open and reliable platform for websites as basic as the Simple site, and Umbraco can be rapidly expanded to support multi-language websites, collaboration platforms and intra/extranets, to name just a few.</p>
<p>Advanced functionality is created with Umbraco macros, built with XSLT and Umbraco''s award-winning .NET integration, including full support for any .NET User or Custom control. Create and integrate your own .NET macros in mere minutes with point and click simplicity. Simply copy your controls to the Umbraco website, go to the <strong>Developer</strong> section and create a new macro, selecting your control from the list.</p>
<p>You can also use <a href="http://umbraco.org/help-and-support/video-tutorials/getting-started/working-with-webmatrix" title="Working with Razor">Microsoft''s Razor</a> syntax to quickly add dynamic functionality to your site.</p>
<p>We''ve also gathered the best community macros into a repository that''s also accessed from the <strong>Developer</strong> section, in the <strong>Packages</strong> area. You can find more information <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/what-are-macros" title="About creating Umbraco macros">about creating macros</a>, on the Umbraco website.</p>
<p>The sky is the limit with Umbraco, and you have the benefit a friendly community, training, and guaranteed support. Find out how to <a href="http://umbraco.org/help-and-support" title="Get Umbraco Support">get help</a>.</p>]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1073, N'<umbTextpage id="1073" parentID="1070" level="3" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="3" createDate="2010-09-07T13:19:40" updateDate="2011-10-17T14:37:20" nodeName="Getting started" urlName="getting-started" writerName="admin" creatorName="admin" path="-1,1063,1070,1073" isDoc=""><bodyText><![CDATA[<p>You''ve installed Umbraco and the basic Simple website.</p>
<p>Edit the text on the homepage and create a site structure by adding new texpages to your site. This is all done in the <strong>Content</strong> section.</p>
<p>If you find the editing options provided by the Simple site too limited for you needs, simply add more properties to the page by going to the <strong>Settings</strong> section, expanding the <strong>Document Types</strong> item and adding new properties on the <strong>Generic Properties</strong> tab. You can find more information about <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/document-types" title="About Umbraco Document Types">document types and properties</a> at the <a href="http://umbraco.org" title="The Umbraco Website">Umbraco website</a>.</p>
<p>You''ll probably want to personalize your site by changing the current design. This is also done in the <strong>Settings</strong> section, either by editing the CSS styles and HTML templates or by selecting and applying a Skin. Umbraco uses master templates, so the main, common markup is placed in the <strong>Starterkit Master</strong> template, while the Homeage and Textpage have separate templates for their unique layouts. You can find more information about <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/templates" title="Umbraco Templates and Stylesheets">templates and css</a> in umbraco at the umbraco website.</p>
<p>Once you''re happy with your site''s design, you might want to add more functionality, such as automated navigation. This is done by <a href="http://umbraco.org/help-and-support/video-tutorials/getting-started" title="Umbraco Modules">installing Umbraco modules</a>.</p>]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1074, N'<umbTextpage id="1074" parentID="1063" level="2" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="4" createDate="2010-09-07T13:20:06" updateDate="2011-10-17T14:37:20" nodeName="Contact us" urlName="contact-us" writerName="admin" creatorName="admin" path="-1,1063,1074" isDoc=""><bodyText><![CDATA[<h3>Office address</h3>
<p>Company Name<br />Streetname 3432<br />DK-9872 City Name</p>
<p>Country</p>
<p><strong>Phone</strong>: +45 3728-282-829</p>
<p><strong>Fax</strong>:  +45 3728-282-829</p>
<p> </p>
<h3>Send us an email</h3>
<p>This contact form sends email to the addresse configured on the macro itself, edit the page in umbraco to change the addresse</p>
<p>Also ensure that your smtp email settings are correct, these are set in the <strong>web.config </strong>file located in the root of your website.</p>
<?UMBRACO_MACRO subject="Email from your website" youremail="name@domain.com" macroAlias="RunwayContactForm" />]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
/****** Object:  Table [dbo].[cmsContentVersion]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ContentId] [int] NOT NULL,
	[VersionId] [uniqueidentifier] NOT NULL,
	[VersionDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_cmsContentVersion] UNIQUE NONCLUSTERED 
(
	[VersionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContentVersion] ON
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (1, 1063, N'23fe28fd-95aa-42b2-9f25-60c38522f190', CAST(0x00009F7F00F0F584 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2, 1064, N'732b6601-37e2-4155-af8a-6868491322ef', CAST(0x00009F7F00F0F67E AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (3, 1065, N'9a796a4a-4a0c-4751-9996-28d1a0d518d6', CAST(0x00009F7F00F0F690 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (4, 1066, N'e9c4ff9d-812f-4021-a3a7-4c23af9a745c', CAST(0x00009F7F00F0F6A3 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (5, 1067, N'977765a1-c316-4bf4-83c6-30ae1a222f16', CAST(0x00009F7F00F0F6BA AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (6, 1068, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', CAST(0x00009F7F00F0F6C9 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (7, 1069, N'ae11eb09-75b3-44d0-89f0-5fbaa80a4ecc', CAST(0x00009F7F00F0F6DB AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (8, 1070, N'bf37b326-aedf-4f5e-9293-4d0a2378fed3', CAST(0x00009F7F00F0F6EE AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (9, 1071, N'41c3c619-8c77-436f-a049-50910618fc7f', CAST(0x00009F7F00F0F6FC AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (10, 1072, N'40699e58-26cb-492a-af9b-bfabe7764fca', CAST(0x00009F7F00F0F70F AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (11, 1073, N'ad54184f-b366-438f-9c80-8a7312fab9c9', CAST(0x00009F7F00F0F71D AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (12, 1074, N'0fce1d8e-643e-42f3-bdc5-1a3d5340f7df', CAST(0x00009F7F00F0F72B AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (13, 1063, N'9c186206-e1f7-4bcd-afa0-f0fcfd7f8133', CAST(0x00009F7F00F0F789 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (14, 1064, N'01dac1ab-4078-4ff8-abd7-a6032d2fb682', CAST(0x00009F7F00F0F79B AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (15, 1065, N'b551fcdd-bdd4-4190-8f6a-9a1c12d5b72b', CAST(0x00009F7F00F0F7A5 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (16, 1066, N'52305e94-21d0-4fdb-af4a-b0bfd83780e4', CAST(0x00009F7F00F0F7AE AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (17, 1067, N'ab3b0609-3485-4731-8417-0e574ebeebcf', CAST(0x00009F7F00F0F7B3 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (18, 1068, N'ef8dbe9a-96c8-41ec-8895-2bbb8c96b012', CAST(0x00009F7F00F0F7BC AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (19, 1069, N'78af3c45-d360-4dbc-8621-a5eb69dcbb2e', CAST(0x00009F7F00F0F7CA AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (20, 1070, N'6d71ab8d-8df2-4d5f-99d6-fbddebe5e60a', CAST(0x00009F7F00F0F7CF AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (21, 1071, N'5a4fdd9a-bcff-45c2-a036-ff2651c6b52d', CAST(0x00009F7F00F0F7D8 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (22, 1072, N'318357c8-283b-496e-822d-75a772a6965a', CAST(0x00009F7F00F0F7DD AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (23, 1073, N'4ce26c83-75f7-4626-90dc-a238b569d42f', CAST(0x00009F7F00F0F7E6 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (24, 1074, N'48ea29e3-1fcd-4a34-9a23-967dfbe2556c', CAST(0x00009F7F00F0F7EB AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (25, 1078, N'87087985-b6e3-4388-98a5-a912b1be6ee3', CAST(0x00009F7F00F10CEE AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (26, 1079, N'f4fdc2da-9cdf-420a-91fa-db095ac0771e', CAST(0x00009F7F00F10D99 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (27, 1080, N'b496e032-8161-4352-922e-90fc51e60e35', CAST(0x00009F7F00F10DB0 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (28, 1081, N'baa39b1c-8dc2-49f9-823b-7ef8102363fb', CAST(0x00009F7F00F10DBE AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (29, 1082, N'51511466-14c8-4b1d-a06b-e76e8beb7ff9', CAST(0x00009F7F00F10DCC AS DateTime))
SET IDENTITY_INSERT [dbo].[cmsContentVersion] OFF
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1031, 1031)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1031, 1032)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1031, 1033)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1055, 1056)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1055, 1057)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1055, 1061)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1057, 1056)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1061, 1061)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId]) VALUES (1076, 1075)
/****** Object:  Table [dbo].[cmsTab]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTab](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
 CONSTRAINT [PK_cmsTab] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsTab] ON
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (3, 1032, N'Image', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (4, 1033, N'File', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (5, 1031, N'Contents', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (6, 1055, N'Content', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (7, 1055, N'Settings', 2)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (8, 1055, N'Blogroll', 3)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (9, 1055, N'Spam settings', 4)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (10, 1055, N'Pings', 5)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (11, 1056, N'Content', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (12, 1056, N'Options', 2)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (13, 1058, N'Site', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (14, 1058, N'Content', 2)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (15, 1060, N'Introduction', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (16, 1060, N'Article', 2)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (17, 1061, N'Content', 1)
INSERT [dbo].[cmsTab] ([id], [contenttypeNodeId], [text], [sortorder]) VALUES (18, 1075, N'Content', 1)
SET IDENTITY_INSERT [dbo].[cmsTab] OFF
/****** Object:  Table [dbo].[cmsDataTypePreValues]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDataTypePreValues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datatypeNodeId] [int] NOT NULL,
	[value] [nvarchar](2500) NULL,
	[sortorder] [int] NOT NULL,
	[alias] [nvarchar](50) NULL,
 CONSTRAINT [PK_cmsDataTypePreValues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] ON
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (3, -87, N',code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,mcecharmap,|1|1,2,3,|0|500,400|1049,|', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (4, 1041, N'default', 0, N'group')
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] OFF
/****** Object:  Table [dbo].[cmsMember]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPreviewXml]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPreviewXml](
	[nodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentPreviewXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1063, N'23fe28fd-95aa-42b2-9f25-60c38522f190', CAST(0x00009F7F00F0F679 AS DateTime), N'<umbHomepage id="1063" parentID="-1" level="1" writerID="0" creatorID="0" nodeType="1058" template="1048" sortOrder="2" createDate="2010-09-07T13:19:39" updateDate="2011-10-17T14:37:18" nodeName="Business Site" urlName="business-site" writerName="admin" creatorName="admin" path="-1,1063" isDoc=""><bodyText><![CDATA[<p>The Simple Starter Kit gives you a bare-bones website that introduces you to a set of well-defined conventions for building an Umbraco website.</p>
<p>The Simple website is very basic in form and provided without any design or functionality - unless you add a Skin, of course. By installing the Simple Starter Kit, you''ll begin with a minimal site built on best practices. You''ll also enjoy the benefits of speaking the same "language" as the rest of the Umbraco community by using common properties and naming conventions.</p>
<p>Now that you know what the Simple site is, it is time to get started using Umbraco.</p>]]></bodyText><siteName>Business site</siteName><siteDescription><![CDATA[Off to a great start]]></siteDescription></umbHomepage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1064, N'732b6601-37e2-4155-af8a-6868491322ef', CAST(0x00009F7F00F0F68C AS DateTime), N'<umbNewsArea id="1064" parentID="1063" level="2" writerID="0" creatorID="0" nodeType="1059" template="1050" sortOrder="1" createDate="2010-09-07T13:22:05" updateDate="2011-10-17T14:37:19" nodeName="Company News" urlName="company-news" writerName="admin" creatorName="admin" path="-1,1063,1064" isDoc="" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1065, N'9a796a4a-4a0c-4751-9996-28d1a0d518d6', CAST(0x00009F7F00F0F6A0 AS DateTime), N'<umbNewsArticle id="1065" parentID="1064" level="3" writerID="0" creatorID="0" nodeType="1060" template="1051" sortOrder="1" createDate="2010-09-07T13:22:21" updateDate="2011-10-17T14:37:19" nodeName="Another record year" urlName="another-record-year" writerName="admin" creatorName="admin" path="-1,1063,1064,1065" isDoc=""><introduction><![CDATA[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id enim vel metus dignissim fermentum. Donec molestie pulvinar ultricies. Donec ullamcorper facilisis mattis. Sed id condimentum dui. Vivamus ornare congue facilisis. Nulla arcu lorem, sollicitudin at tincidunt nec, congue in dolor. Morbi mattis magna non risus convallis non dignissim sapien dictum.]]></introduction><bodyText><![CDATA[
<p>Nam consectetur risus quis diam dignissim convallis. Donec
congue arcu at ligula venenatis facilisis. Donec tincidunt, augue
vel venenatis suscipit, ipsum orci pretium lacus, et tempor felis
nisi eu diam. Fusce vel turpis quis nisl viverra pharetra sit amet
et risus. Donec interdum ullamcorper sodales. Mauris feugiat velit
rhoncus sapien sagittis venenatis quis non purus. Cras ac arcu
velit.</p>

<p>Class aptent taciti sociosqu ad litora torquent per conubia
nostra, per inceptos himenaeos. Etiam non tortor nec risus laoreet
auctor. Mauris ipsum ligula, suscipit fermentum interdum id,
facilisis eu felis. Proin ut porttitor tortor. Proin quis pulvinar
urna. Nullam cursus feugiat feugiat. Praesent iaculis lacus at arcu
feugiat suscipit. Proin elementum tortor vitae massa euismod
tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut
ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue
magna, sodales eu consectetur vestibulum, consequat in libero.
Nulla facilisi. Nunc id ligula urna. Sed tempus bibendum eros, a
posuere ante varius eu. Mauris quis neque nec felis laoreet
eleifend. Nullam bibendum molestie bibendum. Aenean vestibulum
sodales orci sed mollis.</p>

<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>
]]></bodyText></umbNewsArticle>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1066, N'e9c4ff9d-812f-4021-a3a7-4c23af9a745c', CAST(0x00009F7F00F0F6B8 AS DateTime), N'<umbNewsArticle id="1066" parentID="1064" level="3" writerID="0" creatorID="0" nodeType="1060" template="1051" sortOrder="2" createDate="2010-09-07T13:22:35" updateDate="2011-10-17T14:37:19" nodeName="Finance department news" urlName="finance-department-news" writerName="admin" creatorName="admin" path="-1,1063,1064,1066" isDoc=""><introduction><![CDATA[Tortor vitae massa euismod tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue magna, sodales eu consectetur vestibulum, consequat in libero. Nulla facilisi. Nunc id ligula urna.]]></introduction><bodyText><![CDATA[
<p>Class aptent taciti sociosqu ad litora torquent per conubia
nostra, per inceptos himenaeos. Etiam non tortor nec risus laoreet
auctor. Mauris ipsum ligula, suscipit fermentum interdum id,
facilisis eu felis. Proin ut porttitor tortor. Proin quis pulvinar
urna. Nullam cursus feugiat feugiat. Praesent iaculis lacus at arcu
feugiat suscipit. Proin elementum tortor vitae massa euismod
tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut
ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue
magna, sodales eu consectetur vestibulum, consequat in libero.
Nulla facilisi. Nunc id ligula urna. Sed tempus bibendum eros, a
posuere ante varius eu. Mauris quis neque nec felis laoreet
eleifend. Nullam bibendum molestie bibendum. Aenean vestibulum
sodales orci sed mollis.</p>

<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>

<p>Pellentesque habitant morbi tristique senectus et netus et
malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque
urna sodales quis rutrum sapien consectetur. Nam consectetur semper
augue sit amet fringilla. Curabitur vel magna rhoncus ipsum
pharetra aliquet. Morbi et molestie justo. Fusce congue tellus
aliquam leo sollicitudin nec bibendum sapien egestas. Pellentesque
nec sapien enim. Phasellus justo leo, congue dapibus euismod id,
luctus ut ante. Curabitur justo metus, faucibus eget placerat sit
amet, fringilla eget urna. Aliquam a leo ipsum.</p>
]]></bodyText></umbNewsArticle>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1067, N'977765a1-c316-4bf4-83c6-30ae1a222f16', CAST(0x00009F7F00F0F6C4 AS DateTime), N'<umbNewsArticle id="1067" parentID="1064" level="3" writerID="0" creatorID="0" nodeType="1060" template="1051" sortOrder="3" createDate="2010-09-07T13:22:53" updateDate="2011-10-17T14:37:19" nodeName="Stocks are up" urlName="stocks-are-up" writerName="admin" creatorName="admin" path="-1,1063,1064,1067" isDoc=""><introduction><![CDATA[Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque urna sodales quis rutrum sapien consectetur. Nam consectetur semper augue sit amet fringilla. Curabitur vel magna rhoncus ipsum pharetra aliquet.]]></introduction><bodyText><![CDATA[
<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>

<p>Pellentesque habitant morbi tristique senectus et netus et
malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque
urna sodales quis rutrum sapien consectetur. Nam consectetur semper
augue sit amet fringilla. Curabitur vel magna rhoncus ipsum
pharetra aliquet. Morbi et molestie justo. Fusce congue tellus
aliquam leo sollicitudin nec bibendum sapien egestas. Pellentesque
nec sapien enim. Phasellus justo leo, congue dapibus euismod id,
luctus ut ante. Curabitur justo metus, faucibus eget placerat sit
amet, fringilla eget urna. Aliquam a leo ipsum.</p>

<p>In nec tristique odio. Proin fringilla lobortis neque sit amet
dapibus. Maecenas mollis tempor lacus, ac commodo sem condimentum
ac. Nulla facilisi. Duis eleifend placerat laoreet. In fringilla
accumsan leo a laoreet. Sed tincidunt nisl a risus blandit
pellentesque. Mauris in ante ac sapien semper sagittis. Etiam
luctus posuere pulvinar. Sed eros sem, sollicitudin a laoreet non,
ultrices nec nulla. Morbi tempus, nunc ac malesuada tempus, ipsum
neque sodales ipsum, et lacinia libero tellus a risus. Integer sit
amet purus nibh, in aliquam nisi. Curabitur non imperdiet libero.
Quisque magna massa, vestibulum vitae laoreet sit amet, luctus eu
elit. Nam eros mi, consectetur a eleifend sed, tincidunt id
odio.</p>
]]></bodyText></umbNewsArticle>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1068, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', CAST(0x00009F7F00F0F6DA AS DateTime), N'<umbBlog id="1068" parentID="1063" level="2" writerID="0" creatorID="0" nodeType="1055" template="1049" sortOrder="2" createDate="2010-09-07T13:26:10" updateDate="2011-10-17T14:37:19" nodeName="Company Blog" urlName="company-blog" writerName="admin" creatorName="admin" path="-1,1063,1068" isDoc=""><siteName></siteName><siteDescription><![CDATA[ ]]></siteDescription><blogroll><links /></blogroll><akismetAPIKey></akismetAPIKey><owner><![CDATA[0]]></owner><pingServices><links /></pingServices><bodyText><![CDATA[<?UMBRACO_MACRO macroAlias="BlogListPosts" />]]></bodyText></umbBlog>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1069, N'ae11eb09-75b3-44d0-89f0-5fbaa80a4ecc', CAST(0x00009F7F00F0F6ED AS DateTime), N'<umbBlogPost id="1069" parentID="1068" level="3" writerID="0" creatorID="0" nodeType="1056" template="1046" sortOrder="1" createDate="2010-09-07T13:31:05" updateDate="2011-10-17T14:37:19" nodeName="Company blog post" urlName="company-blog-post" writerName="admin" creatorName="admin" path="-1,1063,1068,1069" isDoc=""><bodyText><![CDATA[
<p><strong>Hi there!</strong> , welcome to your new Umbraco powered
blog. Before you start posting away, there''s a handful of things we
thought you should know:</p>

<ol>
<li>
<p>There is a comprehensive and detailed usage and configuration
manual, which covers everything about setting up this blog and
about blogging in general</p>

<p><strong><a
href="http://our.umbraco.org/FileDownload?id=498">Download the
usage guide</a></strong></p>
</li>

<li>
<p>This package is open source and developement is community
driven. So if you have an idea for improvement or wish to be a part
of developing this package you should join the conversaion.</p>

<p><a
href="http://our.umbraco.org/projects/blog-4-umbraco"><strong>Go to
the Blog 4 Umbraco project page on our.umbraco.org</strong></a></p>
</li>

<li>
<p>You can change the appearance of this blog by changing the skin
in the umbraco back-end. The skins are powered by the umbraco
community. If you wish to do your own skin or just want to tweak
the current one, you can find guidance in the skinners guide</p>

<p><strong><a
href="http://our.umbraco.org/FileDownload?id=498">Download the
skinners manual</a></strong></p>
</li>

<li>
<p>Chainging the skin is just the first step, everything is
extendable and hackable. This blog uses open standards and follows
umbraco best practices, so everything can be tweaked. Want to know
how to get started? Ask the friendly community at
our.umbraco.org</p>

<p><strong><a href="http://our.umbraco.org">Go to our.umbraco.org
community</a></strong></p>
</li>
</ol>
]]></bodyText><tags><![CDATA[]]></tags><closeComments>1</closeComments><PostDate>2010-09-07T00:00:00</PostDate></umbBlogPost>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1070, N'bf37b326-aedf-4f5e-9293-4d0a2378fed3', CAST(0x00009F7F00F0F6FC AS DateTime), N'<umbTextpage id="1070" parentID="1063" level="2" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="3" createDate="2010-09-07T13:53:39" updateDate="2011-10-17T14:37:19" nodeName="About" urlName="about" writerName="admin" creatorName="admin" path="-1,1063,1070" isDoc=""><bodyText><![CDATA[]]></bodyText><umbracoNaviHide></umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1071, N'41c3c619-8c77-436f-a049-50910618fc7f', CAST(0x00009F7F00F0F70C AS DateTime), N'<umbTextpage id="1071" parentID="1070" level="3" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="1" createDate="2010-09-07T13:19:40" updateDate="2011-10-17T14:37:19" nodeName="Installing runway modules" urlName="installing-runway-modules" writerName="admin" creatorName="admin" path="-1,1063,1070,1071" isDoc=""><bodyText><![CDATA[<p>Umbraco modules encapsulate specific bits of advanced functionality that are easily added to your website.</p>
<p>Once installed, Umbraco modules are open source and easy to customize if you want to modify the behavior for your specific needs.<br /> Because Umbraco modules are provided under the MIT license you are free to use and modify them any way you want, with no strings attached.</p>
<p>To add Umbraco modules to your website, go to the <strong>Settings</strong> section, expand the <strong>Templates</strong> item, select the <strong>Starterkit Master</strong> template, then click the <strong>Customize Skin</strong> button on the toolbar.</p>
<p>Umbraco modules are available for various kinds of navigation, a sitemap, social media feeds, and a contact form. The list of available Umbraco modules is growing rapidly and is automatically updated from a central source, always fresh and current.</p>
<p><a href="http://umbraco.org/get-started" title="Get Started with Umbraco">Get more information</a> about the umbraco way.</p>]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1072, N'40699e58-26cb-492a-af9b-bfabe7764fca', CAST(0x00009F7F00F0F71B AS DateTime), N'<umbTextpage id="1072" parentID="1070" level="3" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="2" createDate="2010-09-07T13:19:40" updateDate="2011-10-17T14:37:19" nodeName="Go further" urlName="go-further" writerName="admin" creatorName="admin" path="-1,1063,1070,1072" isDoc=""><bodyText><![CDATA[<p>The Simple Starter Kit only scratches the surface of what''s possible with Umbraco. Below the Simple Starter Kit and its modules lies a great architecture that lets you implement whatever you need.</p>
<p>With Umbraco you''ve finally got a solid, open and reliable platform for websites as basic as the Simple site, and Umbraco can be rapidly expanded to support multi-language websites, collaboration platforms and intra/extranets, to name just a few.</p>
<p>Advanced functionality is created with Umbraco macros, built with XSLT and Umbraco''s award-winning .NET integration, including full support for any .NET User or Custom control. Create and integrate your own .NET macros in mere minutes with point and click simplicity. Simply copy your controls to the Umbraco website, go to the <strong>Developer</strong> section and create a new macro, selecting your control from the list.</p>
<p>You can also use <a href="http://umbraco.org/help-and-support/video-tutorials/getting-started/working-with-webmatrix" title="Working with Razor">Microsoft''s Razor</a> syntax to quickly add dynamic functionality to your site.</p>
<p>We''ve also gathered the best community macros into a repository that''s also accessed from the <strong>Developer</strong> section, in the <strong>Packages</strong> area. You can find more information <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/what-are-macros" title="About creating Umbraco macros">about creating macros</a>, on the Umbraco website.</p>
<p>The sky is the limit with Umbraco, and you have the benefit a friendly community, training, and guaranteed support. Find out how to <a href="http://umbraco.org/help-and-support" title="Get Umbraco Support">get help</a>.</p>]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1073, N'ad54184f-b366-438f-9c80-8a7312fab9c9', CAST(0x00009F7F00F0F72B AS DateTime), N'<umbTextpage id="1073" parentID="1070" level="3" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="3" createDate="2010-09-07T13:19:40" updateDate="2011-10-17T14:37:19" nodeName="Getting started" urlName="getting-started" writerName="admin" creatorName="admin" path="-1,1063,1070,1073" isDoc=""><bodyText><![CDATA[<p>You''ve installed Umbraco and the basic Simple website.</p>
<p>Edit the text on the homepage and create a site structure by adding new texpages to your site. This is all done in the <strong>Content</strong> section.</p>
<p>If you find the editing options provided by the Simple site too limited for you needs, simply add more properties to the page by going to the <strong>Settings</strong> section, expanding the <strong>Document Types</strong> item and adding new properties on the <strong>Generic Properties</strong> tab. You can find more information about <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/document-types" title="About Umbraco Document Types">document types and properties</a> at the <a href="http://umbraco.org" title="The Umbraco Website">Umbraco website</a>.</p>
<p>You''ll probably want to personalize your site by changing the current design. This is also done in the <strong>Settings</strong> section, either by editing the CSS styles and HTML templates or by selecting and applying a Skin. Umbraco uses master templates, so the main, common markup is placed in the <strong>Starterkit Master</strong> template, while the Homeage and Textpage have separate templates for their unique layouts. You can find more information about <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/templates" title="Umbraco Templates and Stylesheets">templates and css</a> in umbraco at the umbraco website.</p>
<p>Once you''re happy with your site''s design, you might want to add more functionality, such as automated navigation. This is done by <a href="http://umbraco.org/help-and-support/video-tutorials/getting-started" title="Umbraco Modules">installing Umbraco modules</a>.</p>]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1074, N'0fce1d8e-643e-42f3-bdc5-1a3d5340f7df', CAST(0x00009F7F00F0F735 AS DateTime), N'<umbTextpage id="1074" parentID="1063" level="2" writerID="0" creatorID="0" nodeType="1061" template="1054" sortOrder="4" createDate="2010-09-07T13:20:06" updateDate="2011-10-17T14:37:19" nodeName="Contact us" urlName="contact-us" writerName="admin" creatorName="admin" path="-1,1063,1074" isDoc=""><bodyText><![CDATA[<h3>Office address</h3>
<p>Company Name<br />Streetname 3432<br />DK-9872 City Name</p>
<p>Country</p>
<p><strong>Phone</strong>: +45 3728-282-829</p>
<p><strong>Fax</strong>:  +45 3728-282-829</p>
<p> </p>
<h3>Send us an email</h3>
<p>This contact form sends email to the addresse configured on the macro itself, edit the page in umbraco to change the addresse</p>
<p>Also ensure that your smtp email settings are correct, these are set in the <strong>web.config </strong>file located in the root of your website.</p>
<?UMBRACO_MACRO subject="Email from your website" youremail="name@domain.com" macroAlias="RunwayContactForm" />]]></bodyText><umbracoNaviHide>0</umbracoNaviHide></umbTextpage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1078, N'87087985-b6e3-4388-98a5-a912b1be6ee3', CAST(0x00009F7F00F10D96 AS DateTime), N'<umediaSliders id="1078" parentID="-1" level="1" writerID="0" creatorID="0" nodeType="1076" template="0" sortOrder="3" createDate="2010-12-06T14:19:58" updateDate="2011-10-17T14:37:38" nodeName="Frontpage Sliders" urlName="frontpage-sliders" writerName="admin" creatorName="admin" path="-1,1078" isDoc="" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1079, N'f4fdc2da-9cdf-420a-91fa-db095ac0771e', CAST(0x00009F7F00F10DAE AS DateTime), N'<umediaSlider id="1079" parentID="1078" level="2" writerID="0" creatorID="0" nodeType="1075" template="0" sortOrder="1" createDate="2010-12-06T14:20:14" updateDate="2011-10-17T14:37:38" nodeName="Hello everybody!" urlName="hello-everybody!" writerName="admin" creatorName="admin" path="-1,1078,1079" isDoc=""><umbracoFile>/media/74/tmp_img.jpg</umbracoFile><teaserText><![CDATA[
<p>Sed quia non numquam eius modi tempora incidunt ut labore et
dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est,
qui dolorem ipsum quia dolor sit amet.</p>

<p><a href="#" class="ui-btn ui-btn-big">About us</a></p>
]]></teaserText><link></link></umediaSlider>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1080, N'b496e032-8161-4352-922e-90fc51e60e35', CAST(0x00009F7F00F10DBF AS DateTime), N'<umediaSlider id="1080" parentID="1078" level="2" writerID="0" creatorID="0" nodeType="1075" template="0" sortOrder="2" createDate="2010-12-06T14:47:24" updateDate="2011-10-17T14:37:38" nodeName="You can (of course) change these images!" urlName="you-can-(of-course)-change-these-images!" writerName="admin" creatorName="admin" path="-1,1078,1080" isDoc=""><umbracoFile>/images/umedia_defaultimages/tmp_img2.jpg</umbracoFile><teaserText><![CDATA[
<p>When you installed this skin, we added a new node to your
content area called "frontpage slider", go there to change the
image, text and link in this slider</p>

<p><a href="#" class="ui-btn ui-btn-big">What colors?</a></p>
]]></teaserText><link></link></umediaSlider>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1081, N'baa39b1c-8dc2-49f9-823b-7ef8102363fb', CAST(0x00009F7F00F10DCA AS DateTime), N'<umediaSlider id="1081" parentID="1078" level="2" writerID="0" creatorID="0" nodeType="1075" template="0" sortOrder="3" createDate="2010-12-06T14:48:07" updateDate="2011-10-17T14:37:38" nodeName="And changing the colors is easy as well!" urlName="and-changing-the-colors-is-easy-as-well!" writerName="admin" creatorName="admin" path="-1,1078,1081" isDoc=""><umbracoFile>/images/umedia_defaultimages/tmp_img.jpg</umbracoFile><teaserText><![CDATA[
<p>Sed quia non numquam eius modi tempora incidunt ut labore et
dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est,
qui dolorem ipsum quia dolor sit amet.</p>

<p><a href="#" class="ui-btn ui-btn-big">About us</a></p>
]]></teaserText><link></link></umediaSlider>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1082, N'51511466-14c8-4b1d-a06b-e76e8beb7ff9', CAST(0x00009F7F00F10DD8 AS DateTime), N'<umediaSlider id="1082" parentID="1078" level="2" writerID="0" creatorID="0" nodeType="1075" template="0" sortOrder="4" createDate="2010-12-06T14:48:40" updateDate="2011-10-17T14:37:39" nodeName="New to Umbraco?" urlName="new-to-umbraco" writerName="admin" creatorName="admin" path="-1,1078,1082" isDoc=""><umbracoFile>/images/umedia_defaultimages/tmp_img2.jpg</umbracoFile><teaserText><![CDATA[
<p>Well, you managed to install this skin, so you must have done
something right!<br />
<br />
 But still the umbraco developer site is the place to go for all
your Umbraco needs!</p>

<p><a href="#" class="ui-btn ui-btn-big">Visit Umbraco</a></p>
]]></teaserText><link></link></umediaSlider>')
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[tabId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[helpText] [nvarchar](1000) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (6, -90, 1032, 3, N'umbracoFile', N'Upload image', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (7, -92, 1032, 3, N'umbracoWidth', N'Width', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (8, -92, 1032, 3, N'umbracoHeight', N'Height', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (9, -92, 1032, 3, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (26, -92, 1033, 4, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (27, -38, 1031, 5, N'contents', N'Contents:', NULL, 0, 0, NULL, NULL)
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (28, -88, 1055, 7, N'siteName', N'Site name', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (29, -89, 1055, 7, N'siteDescription', N'Site description', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (30, 1040, 1055, 8, N'blogroll', N'Blogroll', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (31, -88, 1055, 9, N'akismetAPIKey', N'Akismet API Key', NULL, 0, 0, N'', N'Enter a valid WP.com API key(http://en.wordpress.com/api-keys/) and your blog will be protected from spam by using the Akismet anti-spam service.')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (32, 1044, 1055, NULL, N'owner', N'Owner', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (33, 1040, 1055, 10, N'pingServices', N'Services to ping', NULL, 0, 0, N'', N'Automatically notify blog directories and search engines that your blog has been updated')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (34, -87, 1055, 6, N'bodyText', N'Body text', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (35, -87, 1056, 11, N'bodyText', N'Content', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (36, 1041, 1056, 11, N'tags', N'Tags', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (37, -49, 1056, 12, N'closeComments', N'Close comments', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (38, -41, 1056, NULL, N'PostDate', N'Post Date', NULL, 0, 1, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (39, -49, 1057, NULL, N'umbracoNaviHide', N'Hide from navigation', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (40, -87, 1058, 14, N'bodyText', N'Body text', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (41, -88, 1058, 13, N'siteName', N'Site Name', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (42, -89, 1058, 13, N'siteDescription', N'Site Description', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (43, -89, 1060, 15, N'introduction', N'Introduction', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (44, -87, 1060, 16, N'bodyText', N'Body', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (45, -87, 1061, 17, N'bodyText', N'Body Text', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (46, -49, 1061, NULL, N'umbracoNaviHide', N'Hide in navigation', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (47, -90, 1075, 18, N'umbracoFile', N'File', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (48, -87, 1075, 18, N'teaserText', N'Teaser text', NULL, 0, 0, N'', N'')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [tabId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (49, 1034, 1075, 18, N'link', N'Link', NULL, 0, 0, N'', N'')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
/****** Object:  Table [dbo].[cmsPropertyData]    Script Date: 10/17/2011 21:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contentNodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NULL,
	[propertytypeid] [int] NOT NULL,
	[dataInt] [int] NULL,
	[dataDate] [datetime] NULL,
	[dataNvarchar] [nvarchar](500) NULL,
	[dataNtext] [ntext] NULL,
 CONSTRAINT [PK_cmsPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyData] ON
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1, 1063, N'23fe28fd-95aa-42b2-9f25-60c38522f190', 40, NULL, NULL, NULL, N'<p>The Simple Starter Kit gives you a bare-bones website that introduces you to a set of well-defined conventions for building an Umbraco website.</p>
<p>The Simple website is very basic in form and provided without any design or functionality - unless you add a Skin, of course. By installing the Simple Starter Kit, you''ll begin with a minimal site built on best practices. You''ll also enjoy the benefits of speaking the same "language" as the rest of the Umbraco community by using common properties and naming conventions.</p>
<p>Now that you know what the Simple site is, it is time to get started using Umbraco.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (2, 1063, N'23fe28fd-95aa-42b2-9f25-60c38522f190', 41, NULL, NULL, N'Business site', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (3, 1063, N'23fe28fd-95aa-42b2-9f25-60c38522f190', 42, NULL, NULL, NULL, N'Off to a great start')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (4, 1065, N'9a796a4a-4a0c-4751-9996-28d1a0d518d6', 43, NULL, NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id enim vel metus dignissim fermentum. Donec molestie pulvinar ultricies. Donec ullamcorper facilisis mattis. Sed id condimentum dui. Vivamus ornare congue facilisis. Nulla arcu lorem, sollicitudin at tincidunt nec, congue in dolor. Morbi mattis magna non risus convallis non dignissim sapien dictum.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (5, 1065, N'9a796a4a-4a0c-4751-9996-28d1a0d518d6', 44, NULL, NULL, NULL, N'
<p>Nam consectetur risus quis diam dignissim convallis. Donec
congue arcu at ligula venenatis facilisis. Donec tincidunt, augue
vel venenatis suscipit, ipsum orci pretium lacus, et tempor felis
nisi eu diam. Fusce vel turpis quis nisl viverra pharetra sit amet
et risus. Donec interdum ullamcorper sodales. Mauris feugiat velit
rhoncus sapien sagittis venenatis quis non purus. Cras ac arcu
velit.</p>

<p>Class aptent taciti sociosqu ad litora torquent per conubia
nostra, per inceptos himenaeos. Etiam non tortor nec risus laoreet
auctor. Mauris ipsum ligula, suscipit fermentum interdum id,
facilisis eu felis. Proin ut porttitor tortor. Proin quis pulvinar
urna. Nullam cursus feugiat feugiat. Praesent iaculis lacus at arcu
feugiat suscipit. Proin elementum tortor vitae massa euismod
tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut
ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue
magna, sodales eu consectetur vestibulum, consequat in libero.
Nulla facilisi. Nunc id ligula urna. Sed tempus bibendum eros, a
posuere ante varius eu. Mauris quis neque nec felis laoreet
eleifend. Nullam bibendum molestie bibendum. Aenean vestibulum
sodales orci sed mollis.</p>

<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (6, 1066, N'e9c4ff9d-812f-4021-a3a7-4c23af9a745c', 43, NULL, NULL, NULL, N'Tortor vitae massa euismod tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue magna, sodales eu consectetur vestibulum, consequat in libero. Nulla facilisi. Nunc id ligula urna.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (7, 1066, N'e9c4ff9d-812f-4021-a3a7-4c23af9a745c', 44, NULL, NULL, NULL, N'
<p>Class aptent taciti sociosqu ad litora torquent per conubia
nostra, per inceptos himenaeos. Etiam non tortor nec risus laoreet
auctor. Mauris ipsum ligula, suscipit fermentum interdum id,
facilisis eu felis. Proin ut porttitor tortor. Proin quis pulvinar
urna. Nullam cursus feugiat feugiat. Praesent iaculis lacus at arcu
feugiat suscipit. Proin elementum tortor vitae massa euismod
tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut
ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue
magna, sodales eu consectetur vestibulum, consequat in libero.
Nulla facilisi. Nunc id ligula urna. Sed tempus bibendum eros, a
posuere ante varius eu. Mauris quis neque nec felis laoreet
eleifend. Nullam bibendum molestie bibendum. Aenean vestibulum
sodales orci sed mollis.</p>

<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>

<p>Pellentesque habitant morbi tristique senectus et netus et
malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque
urna sodales quis rutrum sapien consectetur. Nam consectetur semper
augue sit amet fringilla. Curabitur vel magna rhoncus ipsum
pharetra aliquet. Morbi et molestie justo. Fusce congue tellus
aliquam leo sollicitudin nec bibendum sapien egestas. Pellentesque
nec sapien enim. Phasellus justo leo, congue dapibus euismod id,
luctus ut ante. Curabitur justo metus, faucibus eget placerat sit
amet, fringilla eget urna. Aliquam a leo ipsum.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (8, 1067, N'977765a1-c316-4bf4-83c6-30ae1a222f16', 43, NULL, NULL, NULL, N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque urna sodales quis rutrum sapien consectetur. Nam consectetur semper augue sit amet fringilla. Curabitur vel magna rhoncus ipsum pharetra aliquet.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (9, 1067, N'977765a1-c316-4bf4-83c6-30ae1a222f16', 44, NULL, NULL, NULL, N'
<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>

<p>Pellentesque habitant morbi tristique senectus et netus et
malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque
urna sodales quis rutrum sapien consectetur. Nam consectetur semper
augue sit amet fringilla. Curabitur vel magna rhoncus ipsum
pharetra aliquet. Morbi et molestie justo. Fusce congue tellus
aliquam leo sollicitudin nec bibendum sapien egestas. Pellentesque
nec sapien enim. Phasellus justo leo, congue dapibus euismod id,
luctus ut ante. Curabitur justo metus, faucibus eget placerat sit
amet, fringilla eget urna. Aliquam a leo ipsum.</p>

<p>In nec tristique odio. Proin fringilla lobortis neque sit amet
dapibus. Maecenas mollis tempor lacus, ac commodo sem condimentum
ac. Nulla facilisi. Duis eleifend placerat laoreet. In fringilla
accumsan leo a laoreet. Sed tincidunt nisl a risus blandit
pellentesque. Mauris in ante ac sapien semper sagittis. Etiam
luctus posuere pulvinar. Sed eros sem, sollicitudin a laoreet non,
ultrices nec nulla. Morbi tempus, nunc ac malesuada tempus, ipsum
neque sodales ipsum, et lacinia libero tellus a risus. Integer sit
amet purus nibh, in aliquam nisi. Curabitur non imperdiet libero.
Quisque magna massa, vestibulum vitae laoreet sit amet, luctus eu
elit. Nam eros mi, consectetur a eleifend sed, tincidunt id
odio.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10, 1068, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', 28, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11, 1068, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', 29, NULL, NULL, NULL, N' ')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (12, 1068, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', 30, NULL, NULL, NULL, N'<links />')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (13, 1068, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (14, 1068, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', 32, NULL, NULL, NULL, N'0')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (15, 1068, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', 33, NULL, NULL, NULL, N'<links />')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (16, 1068, N'b1aba078-9676-4c0a-b03c-28edeb4944a5', 34, NULL, NULL, NULL, N'<?UMBRACO_MACRO macroAlias="BlogListPosts" />')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (17, 1069, N'ae11eb09-75b3-44d0-89f0-5fbaa80a4ecc', 35, NULL, NULL, NULL, N'
<p><strong>Hi there!</strong> , welcome to your new Umbraco powered
blog. Before you start posting away, there''s a handful of things we
thought you should know:</p>

<ol>
<li>
<p>There is a comprehensive and detailed usage and configuration
manual, which covers everything about setting up this blog and
about blogging in general</p>

<p><strong><a
href="http://our.umbraco.org/FileDownload?id=498">Download the
usage guide</a></strong></p>
</li>

<li>
<p>This package is open source and developement is community
driven. So if you have an idea for improvement or wish to be a part
of developing this package you should join the conversaion.</p>

<p><a
href="http://our.umbraco.org/projects/blog-4-umbraco"><strong>Go to
the Blog 4 Umbraco project page on our.umbraco.org</strong></a></p>
</li>

<li>
<p>You can change the appearance of this blog by changing the skin
in the umbraco back-end. The skins are powered by the umbraco
community. If you wish to do your own skin or just want to tweak
the current one, you can find guidance in the skinners guide</p>

<p><strong><a
href="http://our.umbraco.org/FileDownload?id=498">Download the
skinners manual</a></strong></p>
</li>

<li>
<p>Chainging the skin is just the first step, everything is
extendable and hackable. This blog uses open standards and follows
umbraco best practices, so everything can be tweaked. Want to know
how to get started? Ask the friendly community at
our.umbraco.org</p>

<p><strong><a href="http://our.umbraco.org">Go to our.umbraco.org
community</a></strong></p>
</li>
</ol>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (18, 1069, N'ae11eb09-75b3-44d0-89f0-5fbaa80a4ecc', 36, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (19, 1069, N'ae11eb09-75b3-44d0-89f0-5fbaa80a4ecc', 37, 1, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (20, 1069, N'ae11eb09-75b3-44d0-89f0-5fbaa80a4ecc', 38, NULL, CAST(0x00009DEA00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (21, 1070, N'bf37b326-aedf-4f5e-9293-4d0a2378fed3', 45, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (22, 1070, N'bf37b326-aedf-4f5e-9293-4d0a2378fed3', 46, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (23, 1071, N'41c3c619-8c77-436f-a049-50910618fc7f', 45, NULL, NULL, NULL, N'<p>Umbraco modules encapsulate specific bits of advanced functionality that are easily added to your website.</p>
<p>Once installed, Umbraco modules are open source and easy to customize if you want to modify the behavior for your specific needs.<br /> Because Umbraco modules are provided under the MIT license you are free to use and modify them any way you want, with no strings attached.</p>
<p>To add Umbraco modules to your website, go to the <strong>Settings</strong> section, expand the <strong>Templates</strong> item, select the <strong>Starterkit Master</strong> template, then click the <strong>Customize Skin</strong> button on the toolbar.</p>
<p>Umbraco modules are available for various kinds of navigation, a sitemap, social media feeds, and a contact form. The list of available Umbraco modules is growing rapidly and is automatically updated from a central source, always fresh and current.</p>
<p><a href="http://umbraco.org/get-started" title="Get Started with Umbraco">Get more information</a> about the umbraco way.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (24, 1071, N'41c3c619-8c77-436f-a049-50910618fc7f', 46, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (25, 1072, N'40699e58-26cb-492a-af9b-bfabe7764fca', 45, NULL, NULL, NULL, N'<p>The Simple Starter Kit only scratches the surface of what''s possible with Umbraco. Below the Simple Starter Kit and its modules lies a great architecture that lets you implement whatever you need.</p>
<p>With Umbraco you''ve finally got a solid, open and reliable platform for websites as basic as the Simple site, and Umbraco can be rapidly expanded to support multi-language websites, collaboration platforms and intra/extranets, to name just a few.</p>
<p>Advanced functionality is created with Umbraco macros, built with XSLT and Umbraco''s award-winning .NET integration, including full support for any .NET User or Custom control. Create and integrate your own .NET macros in mere minutes with point and click simplicity. Simply copy your controls to the Umbraco website, go to the <strong>Developer</strong> section and create a new macro, selecting your control from the list.</p>
<p>You can also use <a href="http://umbraco.org/help-and-support/video-tutorials/getting-started/working-with-webmatrix" title="Working with Razor">Microsoft''s Razor</a> syntax to quickly add dynamic functionality to your site.</p>
<p>We''ve also gathered the best community macros into a repository that''s also accessed from the <strong>Developer</strong> section, in the <strong>Packages</strong> area. You can find more information <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/what-are-macros" title="About creating Umbraco macros">about creating macros</a>, on the Umbraco website.</p>
<p>The sky is the limit with Umbraco, and you have the benefit a friendly community, training, and guaranteed support. Find out how to <a href="http://umbraco.org/help-and-support" title="Get Umbraco Support">get help</a>.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (26, 1072, N'40699e58-26cb-492a-af9b-bfabe7764fca', 46, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (27, 1073, N'ad54184f-b366-438f-9c80-8a7312fab9c9', 45, NULL, NULL, NULL, N'<p>You''ve installed Umbraco and the basic Simple website.</p>
<p>Edit the text on the homepage and create a site structure by adding new texpages to your site. This is all done in the <strong>Content</strong> section.</p>
<p>If you find the editing options provided by the Simple site too limited for you needs, simply add more properties to the page by going to the <strong>Settings</strong> section, expanding the <strong>Document Types</strong> item and adding new properties on the <strong>Generic Properties</strong> tab. You can find more information about <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/document-types" title="About Umbraco Document Types">document types and properties</a> at the <a href="http://umbraco.org" title="The Umbraco Website">Umbraco website</a>.</p>
<p>You''ll probably want to personalize your site by changing the current design. This is also done in the <strong>Settings</strong> section, either by editing the CSS styles and HTML templates or by selecting and applying a Skin. Umbraco uses master templates, so the main, common markup is placed in the <strong>Starterkit Master</strong> template, while the Homeage and Textpage have separate templates for their unique layouts. You can find more information about <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/templates" title="Umbraco Templates and Stylesheets">templates and css</a> in umbraco at the umbraco website.</p>
<p>Once you''re happy with your site''s design, you might want to add more functionality, such as automated navigation. This is done by <a href="http://umbraco.org/help-and-support/video-tutorials/getting-started" title="Umbraco Modules">installing Umbraco modules</a>.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (28, 1073, N'ad54184f-b366-438f-9c80-8a7312fab9c9', 46, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (29, 1074, N'0fce1d8e-643e-42f3-bdc5-1a3d5340f7df', 45, NULL, NULL, NULL, N'<h3>Office address</h3>
<p>Company Name<br />Streetname 3432<br />DK-9872 City Name</p>
<p>Country</p>
<p><strong>Phone</strong>: +45 3728-282-829</p>
<p><strong>Fax</strong>:  +45 3728-282-829</p>
<p> </p>
<h3>Send us an email</h3>
<p>This contact form sends email to the addresse configured on the macro itself, edit the page in umbraco to change the addresse</p>
<p>Also ensure that your smtp email settings are correct, these are set in the <strong>web.config </strong>file located in the root of your website.</p>
<?UMBRACO_MACRO subject="Email from your website" youremail="name@domain.com" macroAlias="RunwayContactForm" />')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (30, 1074, N'0fce1d8e-643e-42f3-bdc5-1a3d5340f7df', 46, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (31, 1063, N'9c186206-e1f7-4bcd-afa0-f0fcfd7f8133', 40, NULL, NULL, NULL, N'<p>The Simple Starter Kit gives you a bare-bones website that introduces you to a set of well-defined conventions for building an Umbraco website.</p>
<p>The Simple website is very basic in form and provided without any design or functionality - unless you add a Skin, of course. By installing the Simple Starter Kit, you''ll begin with a minimal site built on best practices. You''ll also enjoy the benefits of speaking the same "language" as the rest of the Umbraco community by using common properties and naming conventions.</p>
<p>Now that you know what the Simple site is, it is time to get started using Umbraco.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (32, 1063, N'9c186206-e1f7-4bcd-afa0-f0fcfd7f8133', 41, NULL, NULL, N'Business site', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (33, 1063, N'9c186206-e1f7-4bcd-afa0-f0fcfd7f8133', 42, NULL, NULL, NULL, N'Off to a great start')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (34, 1065, N'b551fcdd-bdd4-4190-8f6a-9a1c12d5b72b', 43, NULL, NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id enim vel metus dignissim fermentum. Donec molestie pulvinar ultricies. Donec ullamcorper facilisis mattis. Sed id condimentum dui. Vivamus ornare congue facilisis. Nulla arcu lorem, sollicitudin at tincidunt nec, congue in dolor. Morbi mattis magna non risus convallis non dignissim sapien dictum.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (35, 1065, N'b551fcdd-bdd4-4190-8f6a-9a1c12d5b72b', 44, NULL, NULL, NULL, N'
<p>Nam consectetur risus quis diam dignissim convallis. Donec
congue arcu at ligula venenatis facilisis. Donec tincidunt, augue
vel venenatis suscipit, ipsum orci pretium lacus, et tempor felis
nisi eu diam. Fusce vel turpis quis nisl viverra pharetra sit amet
et risus. Donec interdum ullamcorper sodales. Mauris feugiat velit
rhoncus sapien sagittis venenatis quis non purus. Cras ac arcu
velit.</p>

<p>Class aptent taciti sociosqu ad litora torquent per conubia
nostra, per inceptos himenaeos. Etiam non tortor nec risus laoreet
auctor. Mauris ipsum ligula, suscipit fermentum interdum id,
facilisis eu felis. Proin ut porttitor tortor. Proin quis pulvinar
urna. Nullam cursus feugiat feugiat. Praesent iaculis lacus at arcu
feugiat suscipit. Proin elementum tortor vitae massa euismod
tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut
ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue
magna, sodales eu consectetur vestibulum, consequat in libero.
Nulla facilisi. Nunc id ligula urna. Sed tempus bibendum eros, a
posuere ante varius eu. Mauris quis neque nec felis laoreet
eleifend. Nullam bibendum molestie bibendum. Aenean vestibulum
sodales orci sed mollis.</p>

<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (36, 1066, N'52305e94-21d0-4fdb-af4a-b0bfd83780e4', 43, NULL, NULL, NULL, N'Tortor vitae massa euismod tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue magna, sodales eu consectetur vestibulum, consequat in libero. Nulla facilisi. Nunc id ligula urna.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (37, 1066, N'52305e94-21d0-4fdb-af4a-b0bfd83780e4', 44, NULL, NULL, NULL, N'
<p>Class aptent taciti sociosqu ad litora torquent per conubia
nostra, per inceptos himenaeos. Etiam non tortor nec risus laoreet
auctor. Mauris ipsum ligula, suscipit fermentum interdum id,
facilisis eu felis. Proin ut porttitor tortor. Proin quis pulvinar
urna. Nullam cursus feugiat feugiat. Praesent iaculis lacus at arcu
feugiat suscipit. Proin elementum tortor vitae massa euismod
tempus. Donec adipiscing nunc lacinia felis aliquam mattis. Ut
ipsum nisl, ultrices nec vehicula vel, blandit vel nibh. Nam augue
magna, sodales eu consectetur vestibulum, consequat in libero.
Nulla facilisi. Nunc id ligula urna. Sed tempus bibendum eros, a
posuere ante varius eu. Mauris quis neque nec felis laoreet
eleifend. Nullam bibendum molestie bibendum. Aenean vestibulum
sodales orci sed mollis.</p>

<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>

<p>Pellentesque habitant morbi tristique senectus et netus et
malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque
urna sodales quis rutrum sapien consectetur. Nam consectetur semper
augue sit amet fringilla. Curabitur vel magna rhoncus ipsum
pharetra aliquet. Morbi et molestie justo. Fusce congue tellus
aliquam leo sollicitudin nec bibendum sapien egestas. Pellentesque
nec sapien enim. Phasellus justo leo, congue dapibus euismod id,
luctus ut ante. Curabitur justo metus, faucibus eget placerat sit
amet, fringilla eget urna. Aliquam a leo ipsum.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (38, 1067, N'ab3b0609-3485-4731-8417-0e574ebeebcf', 43, NULL, NULL, NULL, N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque urna sodales quis rutrum sapien consectetur. Nam consectetur semper augue sit amet fringilla. Curabitur vel magna rhoncus ipsum pharetra aliquet.')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (39, 1067, N'ab3b0609-3485-4731-8417-0e574ebeebcf', 44, NULL, NULL, NULL, N'
<p>Duis tempor scelerisque condimentum. Proin convallis placerat
odio, at dictum risus tempor id. Maecenas vel erat ac enim
convallis vehicula at et mi. Fusce ut faucibus odio. Vestibulum
pharetra mollis sem, at viverra nunc facilisis non. Vivamus
vulputate nibh et ligula dictum interdum. Aenean at libero et quam
ultricies dignissim in id tellus. Curabitur tincidunt nibh
ullamcorper ligula dapibus volutpat. Vestibulum neque augue,
blandit vitae ornare at, facilisis at sapien. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Curabitur non mollis lacus. Ut
sed pulvinar nulla.</p>

<p>Pellentesque habitant morbi tristique senectus et netus et
malesuada fames ac turpis egestas. Nunc rhoncus neque pellentesque
urna sodales quis rutrum sapien consectetur. Nam consectetur semper
augue sit amet fringilla. Curabitur vel magna rhoncus ipsum
pharetra aliquet. Morbi et molestie justo. Fusce congue tellus
aliquam leo sollicitudin nec bibendum sapien egestas. Pellentesque
nec sapien enim. Phasellus justo leo, congue dapibus euismod id,
luctus ut ante. Curabitur justo metus, faucibus eget placerat sit
amet, fringilla eget urna. Aliquam a leo ipsum.</p>

<p>In nec tristique odio. Proin fringilla lobortis neque sit amet
dapibus. Maecenas mollis tempor lacus, ac commodo sem condimentum
ac. Nulla facilisi. Duis eleifend placerat laoreet. In fringilla
accumsan leo a laoreet. Sed tincidunt nisl a risus blandit
pellentesque. Mauris in ante ac sapien semper sagittis. Etiam
luctus posuere pulvinar. Sed eros sem, sollicitudin a laoreet non,
ultrices nec nulla. Morbi tempus, nunc ac malesuada tempus, ipsum
neque sodales ipsum, et lacinia libero tellus a risus. Integer sit
amet purus nibh, in aliquam nisi. Curabitur non imperdiet libero.
Quisque magna massa, vestibulum vitae laoreet sit amet, luctus eu
elit. Nam eros mi, consectetur a eleifend sed, tincidunt id
odio.</p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (40, 1068, N'ef8dbe9a-96c8-41ec-8895-2bbb8c96b012', 28, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (41, 1068, N'ef8dbe9a-96c8-41ec-8895-2bbb8c96b012', 29, NULL, NULL, NULL, N' ')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (42, 1068, N'ef8dbe9a-96c8-41ec-8895-2bbb8c96b012', 30, NULL, NULL, NULL, N'<links />')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (43, 1068, N'ef8dbe9a-96c8-41ec-8895-2bbb8c96b012', 31, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (44, 1068, N'ef8dbe9a-96c8-41ec-8895-2bbb8c96b012', 32, NULL, NULL, NULL, N'0')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (45, 1068, N'ef8dbe9a-96c8-41ec-8895-2bbb8c96b012', 33, NULL, NULL, NULL, N'<links />')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (46, 1068, N'ef8dbe9a-96c8-41ec-8895-2bbb8c96b012', 34, NULL, NULL, NULL, N'<?UMBRACO_MACRO macroAlias="BlogListPosts" />')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (47, 1069, N'78af3c45-d360-4dbc-8621-a5eb69dcbb2e', 35, NULL, NULL, NULL, N'
<p><strong>Hi there!</strong> , welcome to your new Umbraco powered
blog. Before you start posting away, there''s a handful of things we
thought you should know:</p>

<ol>
<li>
<p>There is a comprehensive and detailed usage and configuration
manual, which covers everything about setting up this blog and
about blogging in general</p>

<p><strong><a
href="http://our.umbraco.org/FileDownload?id=498">Download the
usage guide</a></strong></p>
</li>

<li>
<p>This package is open source and developement is community
driven. So if you have an idea for improvement or wish to be a part
of developing this package you should join the conversaion.</p>

<p><a
href="http://our.umbraco.org/projects/blog-4-umbraco"><strong>Go to
the Blog 4 Umbraco project page on our.umbraco.org</strong></a></p>
</li>

<li>
<p>You can change the appearance of this blog by changing the skin
in the umbraco back-end. The skins are powered by the umbraco
community. If you wish to do your own skin or just want to tweak
the current one, you can find guidance in the skinners guide</p>

<p><strong><a
href="http://our.umbraco.org/FileDownload?id=498">Download the
skinners manual</a></strong></p>
</li>

<li>
<p>Chainging the skin is just the first step, everything is
extendable and hackable. This blog uses open standards and follows
umbraco best practices, so everything can be tweaked. Want to know
how to get started? Ask the friendly community at
our.umbraco.org</p>

<p><strong><a href="http://our.umbraco.org">Go to our.umbraco.org
community</a></strong></p>
</li>
</ol>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (48, 1069, N'78af3c45-d360-4dbc-8621-a5eb69dcbb2e', 36, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (49, 1069, N'78af3c45-d360-4dbc-8621-a5eb69dcbb2e', 37, 1, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (50, 1069, N'78af3c45-d360-4dbc-8621-a5eb69dcbb2e', 38, NULL, CAST(0x00009DEA00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (51, 1070, N'6d71ab8d-8df2-4d5f-99d6-fbddebe5e60a', 45, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (52, 1070, N'6d71ab8d-8df2-4d5f-99d6-fbddebe5e60a', 46, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (53, 1071, N'5a4fdd9a-bcff-45c2-a036-ff2651c6b52d', 45, NULL, NULL, NULL, N'<p>Umbraco modules encapsulate specific bits of advanced functionality that are easily added to your website.</p>
<p>Once installed, Umbraco modules are open source and easy to customize if you want to modify the behavior for your specific needs.<br /> Because Umbraco modules are provided under the MIT license you are free to use and modify them any way you want, with no strings attached.</p>
<p>To add Umbraco modules to your website, go to the <strong>Settings</strong> section, expand the <strong>Templates</strong> item, select the <strong>Starterkit Master</strong> template, then click the <strong>Customize Skin</strong> button on the toolbar.</p>
<p>Umbraco modules are available for various kinds of navigation, a sitemap, social media feeds, and a contact form. The list of available Umbraco modules is growing rapidly and is automatically updated from a central source, always fresh and current.</p>
<p><a href="http://umbraco.org/get-started" title="Get Started with Umbraco">Get more information</a> about the umbraco way.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (54, 1071, N'5a4fdd9a-bcff-45c2-a036-ff2651c6b52d', 46, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (55, 1072, N'318357c8-283b-496e-822d-75a772a6965a', 45, NULL, NULL, NULL, N'<p>The Simple Starter Kit only scratches the surface of what''s possible with Umbraco. Below the Simple Starter Kit and its modules lies a great architecture that lets you implement whatever you need.</p>
<p>With Umbraco you''ve finally got a solid, open and reliable platform for websites as basic as the Simple site, and Umbraco can be rapidly expanded to support multi-language websites, collaboration platforms and intra/extranets, to name just a few.</p>
<p>Advanced functionality is created with Umbraco macros, built with XSLT and Umbraco''s award-winning .NET integration, including full support for any .NET User or Custom control. Create and integrate your own .NET macros in mere minutes with point and click simplicity. Simply copy your controls to the Umbraco website, go to the <strong>Developer</strong> section and create a new macro, selecting your control from the list.</p>
<p>You can also use <a href="http://umbraco.org/help-and-support/video-tutorials/getting-started/working-with-webmatrix" title="Working with Razor">Microsoft''s Razor</a> syntax to quickly add dynamic functionality to your site.</p>
<p>We''ve also gathered the best community macros into a repository that''s also accessed from the <strong>Developer</strong> section, in the <strong>Packages</strong> area. You can find more information <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/what-are-macros" title="About creating Umbraco macros">about creating macros</a>, on the Umbraco website.</p>
<p>The sky is the limit with Umbraco, and you have the benefit a friendly community, training, and guaranteed support. Find out how to <a href="http://umbraco.org/help-and-support" title="Get Umbraco Support">get help</a>.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (56, 1072, N'318357c8-283b-496e-822d-75a772a6965a', 46, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (57, 1073, N'4ce26c83-75f7-4626-90dc-a238b569d42f', 45, NULL, NULL, NULL, N'<p>You''ve installed Umbraco and the basic Simple website.</p>
<p>Edit the text on the homepage and create a site structure by adding new texpages to your site. This is all done in the <strong>Content</strong> section.</p>
<p>If you find the editing options provided by the Simple site too limited for you needs, simply add more properties to the page by going to the <strong>Settings</strong> section, expanding the <strong>Document Types</strong> item and adding new properties on the <strong>Generic Properties</strong> tab. You can find more information about <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/document-types" title="About Umbraco Document Types">document types and properties</a> at the <a href="http://umbraco.org" title="The Umbraco Website">Umbraco website</a>.</p>
<p>You''ll probably want to personalize your site by changing the current design. This is also done in the <strong>Settings</strong> section, either by editing the CSS styles and HTML templates or by selecting and applying a Skin. Umbraco uses master templates, so the main, common markup is placed in the <strong>Starterkit Master</strong> template, while the Homeage and Textpage have separate templates for their unique layouts. You can find more information about <a href="http://umbraco.org/help-and-support/video-tutorials/introduction-to-umbraco/sitebuilder-introduction/templates" title="Umbraco Templates and Stylesheets">templates and css</a> in umbraco at the umbraco website.</p>
<p>Once you''re happy with your site''s design, you might want to add more functionality, such as automated navigation. This is done by <a href="http://umbraco.org/help-and-support/video-tutorials/getting-started" title="Umbraco Modules">installing Umbraco modules</a>.</p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (58, 1073, N'4ce26c83-75f7-4626-90dc-a238b569d42f', 46, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (59, 1074, N'48ea29e3-1fcd-4a34-9a23-967dfbe2556c', 45, NULL, NULL, NULL, N'<h3>Office address</h3>
<p>Company Name<br />Streetname 3432<br />DK-9872 City Name</p>
<p>Country</p>
<p><strong>Phone</strong>: +45 3728-282-829</p>
<p><strong>Fax</strong>:  +45 3728-282-829</p>
<p> </p>
<h3>Send us an email</h3>
<p>This contact form sends email to the addresse configured on the macro itself, edit the page in umbraco to change the addresse</p>
<p>Also ensure that your smtp email settings are correct, these are set in the <strong>web.config </strong>file located in the root of your website.</p>
<?UMBRACO_MACRO subject="Email from your website" youremail="name@domain.com" macroAlias="RunwayContactForm" />')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (60, 1074, N'48ea29e3-1fcd-4a34-9a23-967dfbe2556c', 46, 0, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (61, 1079, N'f4fdc2da-9cdf-420a-91fa-db095ac0771e', 47, NULL, NULL, N'/media/74/tmp_img.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (62, 1079, N'f4fdc2da-9cdf-420a-91fa-db095ac0771e', 48, NULL, NULL, NULL, N'
<p>Sed quia non numquam eius modi tempora incidunt ut labore et
dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est,
qui dolorem ipsum quia dolor sit amet.</p>

<p><a href="#" class="ui-btn ui-btn-big">About us</a></p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (63, 1079, N'f4fdc2da-9cdf-420a-91fa-db095ac0771e', 49, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (64, 1080, N'b496e032-8161-4352-922e-90fc51e60e35', 47, NULL, NULL, N'/images/umedia_defaultimages/tmp_img2.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (65, 1080, N'b496e032-8161-4352-922e-90fc51e60e35', 48, NULL, NULL, NULL, N'
<p>When you installed this skin, we added a new node to your
content area called "frontpage slider", go there to change the
image, text and link in this slider</p>

<p><a href="#" class="ui-btn ui-btn-big">What colors?</a></p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (66, 1080, N'b496e032-8161-4352-922e-90fc51e60e35', 49, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (67, 1081, N'baa39b1c-8dc2-49f9-823b-7ef8102363fb', 47, NULL, NULL, N'/images/umedia_defaultimages/tmp_img.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (68, 1081, N'baa39b1c-8dc2-49f9-823b-7ef8102363fb', 48, NULL, NULL, NULL, N'
<p>Sed quia non numquam eius modi tempora incidunt ut labore et
dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est,
qui dolorem ipsum quia dolor sit amet.</p>

<p><a href="#" class="ui-btn ui-btn-big">About us</a></p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (69, 1081, N'baa39b1c-8dc2-49f9-823b-7ef8102363fb', 49, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (70, 1082, N'51511466-14c8-4b1d-a06b-e76e8beb7ff9', 47, NULL, NULL, N'/images/umedia_defaultimages/tmp_img2.jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (71, 1082, N'51511466-14c8-4b1d-a06b-e76e8beb7ff9', 48, NULL, NULL, NULL, N'
<p>Well, you managed to install this skin, so you must have done
something right!<br />
<br />
 But still the umbraco developer site is the place to go for all
your Umbraco needs!</p>

<p><a href="#" class="ui-btn ui-btn-big">Visit Umbraco</a></p>
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDate], [dataNvarchar], [dataNtext]) VALUES (72, 1082, N'51511466-14c8-4b1d-a06b-e76e8beb7ff9', 49, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[cmsPropertyData] OFF
/****** Object:  Default [DF_cmsContentType_thumbnail]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
/****** Object:  Default [DF_cmsContentType_masterContentType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_masterContentType]  DEFAULT ((0)) FOR [masterContentType]
GO
/****** Object:  Default [DF_cmsContentVersion_VersionDate]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsContentVersion] ADD  CONSTRAINT [DF_cmsContentVersion_VersionDate]  DEFAULT (getdate()) FOR [VersionDate]
GO
/****** Object:  Default [DF_cmsDocument_updateDate]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
/****** Object:  Default [DF_cmsDocument_newest]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_newest]  DEFAULT ((0)) FOR [newest]
GO
/****** Object:  Default [DF_cmsDocumentType_IsDefault]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
/****** Object:  Default [DF_macro_macroUseInEditor]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_macro_macroUseInEditor]  DEFAULT ((0)) FOR [macroUseInEditor]
GO
/****** Object:  Default [DF_macro_macroRefreshRate]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_macro_macroRefreshRate]  DEFAULT ((0)) FOR [macroRefreshRate]
GO
/****** Object:  Default [DF_cmsMacro_macroCacheByPage]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ((1)) FOR [macroCacheByPage]
GO
/****** Object:  Default [DF_cmsMacro_macroCachePersonalized]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ((0)) FOR [macroCachePersonalized]
GO
/****** Object:  Default [DF_cmsMacro_macroDontRender]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ((0)) FOR [macroDontRender]
GO
/****** Object:  Default [DF_macroProperty_macroPropertyHidden]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_macroProperty_macroPropertyHidden]  DEFAULT ((0)) FOR [macroPropertyHidden]
GO
/****** Object:  Default [DF_macroProperty_macroPropertySortOrder]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_macroProperty_macroPropertySortOrder]  DEFAULT ((0)) FOR [macroPropertySortOrder]
GO
/****** Object:  Default [DF_cmsMember_Email]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF_cmsMember_LoginName]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('') FOR [LoginName]
GO
/****** Object:  Default [DF_cmsMember_Password]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('') FOR [Password]
GO
/****** Object:  Default [DF_cmsMemberType_memberCanEdit]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ((0)) FOR [memberCanEdit]
GO
/****** Object:  Default [DF_cmsMemberType_viewOnProfile]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ((0)) FOR [viewOnProfile]
GO
/****** Object:  Default [DF__cmsProper__sortO__1EA48E88]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF__cmsProper__sortO__1EA48E88]  DEFAULT ((0)) FOR [sortOrder]
GO
/****** Object:  Default [DF__cmsProper__manda__2180FB33]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF__cmsProper__manda__2180FB33]  DEFAULT ((0)) FOR [mandatory]
GO
/****** Object:  Default [DF__cmsTask__closed__04E4BC85]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF__cmsTask__closed__04E4BC85]  DEFAULT ((0)) FOR [closed]
GO
/****** Object:  Default [DF__cmsTask__DateTim__05D8E0BE]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF__cmsTask__DateTim__05D8E0BE]  DEFAULT (getdate()) FOR [DateTime]
GO
/****** Object:  Default [DF_app_sortOrder]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoApp] ADD  CONSTRAINT [DF_app_sortOrder]  DEFAULT ((0)) FOR [sortOrder]
GO
/****** Object:  Default [DF_umbracoAppTree_treeSilent]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoAppTree] ADD  CONSTRAINT [DF_umbracoAppTree_treeSilent]  DEFAULT ((0)) FOR [treeSilent]
GO
/****** Object:  Default [DF_umbracoAppTree_treeInitialize]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoAppTree] ADD  CONSTRAINT [DF_umbracoAppTree_treeInitialize]  DEFAULT ((1)) FOR [treeInitialize]
GO
/****** Object:  Default [DF_umbracoLog_Datestamp]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
/****** Object:  Default [DF_umbracoNode_trashed]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ((0)) FOR [trashed]
GO
/****** Object:  Default [DF_umbracoNode_createDate]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_umbracoRelation_datetime]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
/****** Object:  Default [DF_umbracoUser_userDisabled]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ((0)) FOR [userDisabled]
GO
/****** Object:  Default [DF_umbracoUser_userNoConsole]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ((0)) FOR [userNoConsole]
GO
/****** Object:  Default [DF_umbracoUser_defaultToLiveEditing]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_defaultToLiveEditing]  DEFAULT ((0)) FOR [defaultToLiveEditing]
GO
/****** Object:  ForeignKey [FK_cmsContent_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsContent]  WITH CHECK ADD  CONSTRAINT [FK_cmsContent_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContent] CHECK CONSTRAINT [FK_cmsContent_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsContentType_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
/****** Object:  ForeignKey [FK_cmsContentTypeAllowedContentType_cmsContentType1]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
/****** Object:  ForeignKey [FK_cmsContentVersion_cmsContent]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentVersion_cmsContent] FOREIGN KEY([ContentId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentVersion] CHECK CONSTRAINT [FK_cmsContentVersion_cmsContent]
GO
/****** Object:  ForeignKey [FK_cmsContentXml_cmsContent]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsContentXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentXml_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentXml] CHECK CONSTRAINT [FK_cmsContentXml_cmsContent]
GO
/****** Object:  ForeignKey [FK_cmsDataType_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDataType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataType_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDataType] CHECK CONSTRAINT [FK_cmsDataType_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsDataTypePreValues_cmsDataType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDataTypePreValues]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType] FOREIGN KEY([datatypeNodeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDataTypePreValues] CHECK CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType]
GO
/****** Object:  ForeignKey [FK_cmsDocument_cmsContent]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsContent]
GO
/****** Object:  ForeignKey [FK_cmsDocument_cmsTemplate]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsTemplate] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsTemplate]
GO
/****** Object:  ForeignKey [FK_cmsDocument_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsContentType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_cmsTemplate]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate]
GO
/****** Object:  ForeignKey [FK_cmsDocumentType_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsLanguageText_cmsDictionary]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary]
GO
/****** Object:  ForeignKey [FK_cmsMacroProperty_cmsMacro]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro]
GO
/****** Object:  ForeignKey [FK_umbracoMacroProperty_umbracoMacroPropertyType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_umbracoMacroProperty_umbracoMacroPropertyType] FOREIGN KEY([macroPropertyType])
REFERENCES [dbo].[cmsMacroPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_umbracoMacroProperty_umbracoMacroPropertyType]
GO
/****** Object:  ForeignKey [FK_cmsMember_cmsContent]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_cmsContent]
GO
/****** Object:  ForeignKey [FK_cmsMember_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_cmsMember]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember]
GO
/****** Object:  ForeignKey [FK_cmsMember2MemberGroup_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsMemberType_cmsContentType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType]
GO
/****** Object:  ForeignKey [FK_cmsMemberType_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContent]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContent]
GO
/****** Object:  ForeignKey [FK_cmsPreviewXml_cmsContentVersion]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion] FOREIGN KEY([versionId])
REFERENCES [dbo].[cmsContentVersion] ([VersionId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion]
GO
/****** Object:  ForeignKey [FK_cmsPropertyData_cmsPropertyType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_cmsPropertyType] FOREIGN KEY([propertytypeid])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_cmsPropertyType]
GO
/****** Object:  ForeignKey [FK_cmsPropertyData_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_umbracoNode] FOREIGN KEY([contentNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsContentType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsDataType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsDataType] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsDataType]
GO
/****** Object:  ForeignKey [FK_cmsPropertyType_cmsTab]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsTab] FOREIGN KEY([tabId])
REFERENCES [dbo].[cmsTab] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsTab]
GO
/****** Object:  ForeignKey [FK_cmsStylesheet_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsStylesheet]  WITH CHECK ADD  CONSTRAINT [FK_cmsStylesheet_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsStylesheet] CHECK CONSTRAINT [FK_cmsStylesheet_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsStylesheetProperty_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsStylesheetProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsStylesheetProperty_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsStylesheetProperty] CHECK CONSTRAINT [FK_cmsStylesheetProperty_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsTab_cmsContentType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTab]  WITH CHECK ADD  CONSTRAINT [FK_cmsTab_cmsContentType] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTab] CHECK CONSTRAINT [FK_cmsTab_cmsContentType]
GO
/****** Object:  ForeignKey [cmsTags_cmsTagRelationship]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [cmsTags_cmsTagRelationship] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [cmsTags_cmsTagRelationship]
GO
/****** Object:  ForeignKey [umbracoNode_cmsTagRelationship]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [umbracoNode_cmsTagRelationship] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [umbracoNode_cmsTagRelationship]
GO
/****** Object:  ForeignKey [FK_cmsTask_cmsTaskType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_cmsTaskType] FOREIGN KEY([taskTypeId])
REFERENCES [dbo].[cmsTaskType] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_cmsTaskType]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoNode]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser] FOREIGN KEY([parentUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser]
GO
/****** Object:  ForeignKey [FK_cmsTask_umbracoUser1]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser1] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser1]
GO
/****** Object:  ForeignKey [FK_cmsTemplate_cmsTemplate]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_cmsTemplate] FOREIGN KEY([master])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_cmsTemplate]
GO
/****** Object:  ForeignKey [FK_cmsTemplate_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoAppTree_umbracoApp]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoAppTree]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAppTree_umbracoApp] FOREIGN KEY([appAlias])
REFERENCES [dbo].[umbracoApp] ([appAlias])
GO
ALTER TABLE [dbo].[umbracoAppTree] CHECK CONSTRAINT [FK_umbracoAppTree_umbracoApp]
GO
/****** Object:  ForeignKey [FK_umbracoDomains_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoDomains]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomains_umbracoNode] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomains] CHECK CONSTRAINT [FK_umbracoDomains_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoNode_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode] FOREIGN KEY([parentID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoNode1]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
/****** Object:  ForeignKey [FK_umbracoRelation_umbracoRelationType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType]
GO
/****** Object:  ForeignKey [FK_user_userType]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser]  WITH CHECK ADD  CONSTRAINT [FK_user_userType] FOREIGN KEY([userType])
REFERENCES [dbo].[umbracoUserType] ([id])
GO
ALTER TABLE [dbo].[umbracoUser] CHECK CONSTRAINT [FK_user_userType]
GO
/****** Object:  ForeignKey [FK_umbracoUser2app_umbracoApp]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser2app]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2app_umbracoApp] FOREIGN KEY([app])
REFERENCES [dbo].[umbracoApp] ([appAlias])
GO
ALTER TABLE [dbo].[umbracoUser2app] CHECK CONSTRAINT [FK_umbracoUser2app_umbracoApp]
GO
/****** Object:  ForeignKey [FK_umbracoUser2app_umbracoUser]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser2app]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2app_umbracoUser] FOREIGN KEY([user])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2app] CHECK CONSTRAINT [FK_umbracoUser2app_umbracoUser]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodeNotify_umbracoUser]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoNode]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode]
GO
/****** Object:  ForeignKey [FK_umbracoUser2NodePermission_umbracoUser]    Script Date: 10/17/2011 21:55:47 ******/
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser]
GO
