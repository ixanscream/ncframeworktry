USE [ixdb]
GO
EXEC sp_msforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT all"
GO

INSERT [dbo].[Menu] ([Id], [Name], [Index], [Controller], [Action], [Icon], [ParentId]) VALUES (N'0cbc27d6-e044-4de2-8f3c-c19c6aabdf65', N'Employee', 2, N'Employees', N'Index', NULL, N'd96b9901-4404-46af-9b33-580474c222e1')
GO
INSERT [dbo].[Menu] ([Id], [Name], [Index], [Controller], [Action], [Icon], [ParentId]) VALUES (N'513a1374-7068-4bb5-9c7e-386ab1c185e1', N'Organization', 5, N'Organization', N'Index', NULL, N'de62cd8c-0e6e-4e00-b0c5-69809dc69f26')
GO
INSERT [dbo].[Menu] ([Id], [Name], [Index], [Controller], [Action], [Icon], [ParentId]) VALUES (N'b397a7e9-2ff5-4879-9c76-a1596e42581d', N'Menu', 0, N'Menus', N'Index', NULL, N'de62cd8c-0e6e-4e00-b0c5-69809dc69f26')
GO
INSERT [dbo].[Menu] ([Id], [Name], [Index], [Controller], [Action], [Icon], [ParentId]) VALUES (N'bc1bbd7e-edb9-49bb-9054-21e9fbb4f35d', N'User Access', 4, N'Accesses', N'Index', NULL, N'de62cd8c-0e6e-4e00-b0c5-69809dc69f26')
GO
INSERT [dbo].[Menu] ([Id], [Name], [Index], [Controller], [Action], [Icon], [ParentId]) VALUES (N'd96b9901-4404-46af-9b33-580474c222e1', N'Master', 1, N'#', N'#', NULL, NULL)
GO
INSERT [dbo].[Menu] ([Id], [Name], [Index], [Controller], [Action], [Icon], [ParentId]) VALUES (N'de62cd8c-0e6e-4e00-b0c5-69809dc69f26', N'Utilities', 0, N'#', N'#', NULL, NULL)
GO
INSERT [dbo].[Menu] ([Id], [Name], [Index], [Controller], [Action], [Icon], [ParentId]) VALUES (N'e2f4b9b6-f787-4cce-a32e-525a346c56f6', N'User Login', 2, N'Users', N'Index', NULL, N'de62cd8c-0e6e-4e00-b0c5-69809dc69f26')
GO
INSERT [dbo].[Menu] ([Id], [Name], [Index], [Controller], [Action], [Icon], [ParentId]) VALUES (N'f1d649eb-7979-4876-a135-65f21386e353', N'Lookup', 1, N'Lookups', N'Index', NULL, N'de62cd8c-0e6e-4e00-b0c5-69809dc69f26')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'062d7718-9b64-4efd-9207-866e953624a1', N'Recruitment-Manager', N'Recruitment-Manager', N'86b0d72f-27f1-409e-a172-27f9d19832c0', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'066ead33-8f73-4640-bbc7-92e96cc5154c', N'Account Payable', N'Account-Payable', N'1d9346e2-bb64-4c02-96bb-0a289ef9babc', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'0e4f2c2a-a706-4bc9-b152-be5d7d29e2da', N'COO', N'COO', N'430cec56-4da2-4f1b-9840-67f3a16c5999', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'1961c6c0-4389-4736-9a02-2240574812b8', N'User', N'User', NULL, N'ROLE')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'1d30f135-0ad6-458c-9d95-c12756a19279', N'Operation', N'Operation', N'86b0d72f-27f1-409e-a172-27f9d19832c0', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'1d9346e2-bb64-4c02-96bb-0a289ef9babc', N'CFO', N'CFO', N'430cec56-4da2-4f1b-9840-67f3a16c5999', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'21eb13ce-f2bd-4819-bdce-0ce9e9f828db', N'Production Manager', N'Production-Manager', N'fca70443-3b01-445f-836d-101575723b86', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'242fd171-f5a3-4d2e-9cc2-00a00e4150cc', N'Sales', N'Sales', N'0e4f2c2a-a706-4bc9-b152-be5d7d29e2da', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'2a5978c9-b927-40ed-af8e-030221fc6e5d', N'Sales Manager', N'Sales-Manager', N'242fd171-f5a3-4d2e-9cc2-00a00e4150cc', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'2b8facf9-e241-4db3-826b-1cefe8da8a90', N'Drivers', N'Drivers', NULL, N'ROLE')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'34eebeb7-c048-4397-9f15-d9665d40661b', N'Warehouse & Logistic', N'Warehouse-Logistic', N'0e4f2c2a-a706-4bc9-b152-be5d7d29e2da', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'3a0a9345-9c77-4f5e-ba65-c78b89313248', N'Retail Manager', N'Retail-Manager', N'525c946b-5cfa-41cb-b8ad-4092245ccc89', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'430cec56-4da2-4f1b-9840-67f3a16c5999', N'CEO', N'CEO', N'6d65dff8-82f2-48d1-90c6-6f340ac495a5', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'4668844b-d083-4ddb-aed0-440eda23b549', N'Purchasing', N'Purchasing', N'0e4f2c2a-a706-4bc9-b152-be5d7d29e2da', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'51a7f6d1-56d1-42cf-a394-1e4265127d74', N'Audit', N'Audit', N'1d9346e2-bb64-4c02-96bb-0a289ef9babc', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'525c946b-5cfa-41cb-b8ad-4092245ccc89', N'Retail', N'Retail', N'0e4f2c2a-a706-4bc9-b152-be5d7d29e2da', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'553a56a1-8a92-438c-8f94-c6654ee02595', N'Production Staff', N'Production-Staff', N'21eb13ce-f2bd-4819-bdce-0ce9e9f828db', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'5c6f631f-b2f0-4bd2-afcf-8194bf2423c5', N'Marketing Officer', N'Marketing-Officer', N'e3bfa025-8c0b-4f4d-9f33-3ea203d717ed', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'663e1853-0e2d-4043-988d-c0b38f05f73f', N'Warehouse Manager', N'Warehouse-Manager', N'34eebeb7-c048-4397-9f15-d9665d40661b', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'6d65dff8-82f2-48d1-90c6-6f340ac495a5', N'Organization', N'ORG', NULL, N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'6f9f4639-c8e1-4d76-9088-7b0885c35e0f', N'CTO', N'CTO', N'430cec56-4da2-4f1b-9840-67f3a16c5999', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'844c5f0f-701d-4f6d-a333-92378ea18e63', N'Driver', N'Driver', N'1d30f135-0ad6-458c-9d95-c12756a19279', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'86b0d72f-27f1-409e-a172-27f9d19832c0', N'Human Resource', N'Human-Resource', N'0e4f2c2a-a706-4bc9-b152-be5d7d29e2da', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'99388648-4f98-456b-b649-5e39a1cc0030', N'Admin', N'Admin', NULL, N'ROLE')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'a58f9158-92a4-4e7b-86bd-1477af82c24b', N'Recruitment Staff', N'Recruitment-Staff', N'062d7718-9b64-4efd-9207-866e953624a1', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'b00958b6-8ae1-4c56-a564-03a3a7b76436', N'Credit & Collection', N'Credit-Collection', N'1d9346e2-bb64-4c02-96bb-0a289ef9babc', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'bd219ce6-73e6-4c4c-85c5-d0895286a9bb', N'Buyer Team', N'Buyer-Team', N'4668844b-d083-4ddb-aed0-440eda23b549', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'd094e578-00fc-4209-be59-9a6479f353e3', N'Accounting', N'Accounting', N'1d9346e2-bb64-4c02-96bb-0a289ef9babc', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'd1e01cad-47e5-4c33-8f94-f93ff9707926', N'Sales Team', N'Sales-Team', N'2a5978c9-b927-40ed-af8e-030221fc6e5d', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'e254722c-eae8-4b08-88e3-12c3f4dfb12e', N'IT', N'IT', N'6f9f4639-c8e1-4d76-9088-7b0885c35e0f', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'e3bfa025-8c0b-4f4d-9f33-3ea203d717ed', N'Marketing', N'Marketing', N'0e4f2c2a-a706-4bc9-b152-be5d7d29e2da', N'ORG')
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Code], [ParentId], [Group]) VALUES (N'fca70443-3b01-445f-836d-101575723b86', N'Production', N'Production', N'0e4f2c2a-a706-4bc9-b152-be5d7d29e2da', N'ORG')
GO
INSERT [dbo].[Access] ([Id], [GroupId], [MenuId]) VALUES (N'3c9f29c0-af53-429c-9402-5a37a973f6ac', N'99388648-4f98-456b-b649-5e39a1cc0030', N'd96b9901-4404-46af-9b33-580474c222e1')
GO
INSERT [dbo].[Access] ([Id], [GroupId], [MenuId]) VALUES (N'988d48ad-4a4f-4c80-9fbe-d100309c8792', N'1961c6c0-4389-4736-9a02-2240574812b8', N'513a1374-7068-4bb5-9c7e-386ab1c185e1')
GO
INSERT [dbo].[Access] ([Id], [GroupId], [MenuId]) VALUES (N'a14d8614-1a40-4ab1-94ef-9d443968556e', N'99388648-4f98-456b-b649-5e39a1cc0030', N'de62cd8c-0e6e-4e00-b0c5-69809dc69f26')
GO
INSERT [dbo].[Access] ([Id], [GroupId], [MenuId]) VALUES (N'd01ab218-a53b-4b95-a8ee-a790fc9d359f', N'1961c6c0-4389-4736-9a02-2240574812b8', N'de62cd8c-0e6e-4e00-b0c5-69809dc69f26')
GO
INSERT [dbo].[Access] ([Id], [GroupId], [MenuId]) VALUES (N'd23c0c50-bacd-4cc2-a78b-7a8de7f78769', N'99388648-4f98-456b-b649-5e39a1cc0030', N'e2f4b9b6-f787-4cce-a32e-525a346c56f6')
GO
INSERT [dbo].[Access] ([Id], [GroupId], [MenuId]) VALUES (N'dece450b-a464-4d87-9dbb-661cb57abad4', N'99388648-4f98-456b-b649-5e39a1cc0030', N'0cbc27d6-e044-4de2-8f3c-c19c6aabdf65')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'087058cf-b8db-4395-84f4-5653f6278867', N'Accounting', 8, N'ix.habibi@gmail.com', N'-', N'0816765719', N'e1f17c69-60b8-4850-b9d6-87b54661ccf8', N'd094e578-00fc-4209-be59-9a6479f353e3', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'1405ae03-51c6-4fe4-9285-60acf7d90090', N'Sales Manager', 15, N'ix.habibi@gmail.com', N'-', N'0816765719', N'41e1d897-67db-46da-b8e4-e7fdd16f63d6', N'2a5978c9-b927-40ed-af8e-030221fc6e5d', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'2372a2d7-b411-4eea-98db-4036751b12a2', N'Production Manager', 26, N'ix.habibi@gmail.com', N'-', N'0816765719', N'd72b8dac-17cb-4b4e-a7d1-e6b72d07bd45', N'21eb13ce-f2bd-4819-bdce-0ce9e9f828db', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'2e8e64f9-da17-4213-9a8d-8b2c80cba51d', N'Retail', 21, N'ix.habibi@gmail.com', N'-', N'0816765719', N'baf8356e-f38a-46ec-a782-d8a4f02800f2', N'525c946b-5cfa-41cb-b8ad-4092245ccc89', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'3c54d9b2-b647-4438-be89-d7a393d485b3', N'CEO', 1, N'ix.habibi@gmail.com', N'-', N'0816765719', NULL, N'430cec56-4da2-4f1b-9840-67f3a16c5999', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'41e1d897-67db-46da-b8e4-e7fdd16f63d6', N'Sales', 14, N'ix.habibi@gmail.com', N'-', N'0816765719', N'baf8356e-f38a-46ec-a782-d8a4f02800f2', N'242fd171-f5a3-4d2e-9cc2-00a00e4150cc', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'498b99ff-1410-48bc-a427-1a4ac0f62d82', N'Purchasing', 19, N'ix.habibi@gmail.com', N'-', N'0816765719', N'baf8356e-f38a-46ec-a782-d8a4f02800f2', N'4668844b-d083-4ddb-aed0-440eda23b549', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'6ec385b8-2572-4824-904c-204999d6aae2', N'Operation', 12, N'ix.habibi@gmail.com', N'-', N'0816765719', N'9968af16-bca0-4303-a334-8a397e034be0', N'1d30f135-0ad6-458c-9d95-c12756a19279', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'72af635c-606c-425a-ad5e-2a62851ccbfd', N'Driver', 13, N'ix.habibi@gmail.com', N'-', N'0816765719', N'6ec385b8-2572-4824-904c-204999d6aae2', N'844c5f0f-701d-4f6d-a333-92378ea18e63', N'Drivers')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'7dce88fe-14e3-4e92-85c7-60a749fef2a0', N'CTO', 3, N'ix.habibi@gmail.com', N'-', N'0816765719', N'3c54d9b2-b647-4438-be89-d7a393d485b3', N'6f9f4639-c8e1-4d76-9088-7b0885c35e0f', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'95377bc7-264a-4798-9184-97b1887a2dae', N'Warehouse & Logistic', 17, N'ix.habibi@gmail.com', N'-', N'0816765719', N'baf8356e-f38a-46ec-a782-d8a4f02800f2', N'34eebeb7-c048-4397-9f15-d9665d40661b', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'96b815ba-628a-4e30-9346-fd26c116523a', N'Marketing Officer', 24, N'ix.habibi@gmail.com', N'-', N'0816765719', N'c7cf03fd-013c-410c-87a8-2039612f4b71', N'5c6f631f-b2f0-4bd2-afcf-8194bf2423c5', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'9968af16-bca0-4303-a334-8a397e034be0', N'Human Resource', 9, N'ix.habibi@gmail.com', N'-', N'0816765719', N'baf8356e-f38a-46ec-a782-d8a4f02800f2', N'86b0d72f-27f1-409e-a172-27f9d19832c0', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'9b9f1216-4b36-43cf-889b-883d0317fccb', N'Buyer Team', 20, N'ix.habibi@gmail.com', N'-', N'0816765719', N'498b99ff-1410-48bc-a427-1a4ac0f62d82', N'bd219ce6-73e6-4c4c-85c5-d0895286a9bb', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'9f22468a-fc25-4b28-a342-5635a4aab5ff', N'Warehouse Manager', 18, N'ix.habibi@gmail.com', N'-', N'0816765719', N'95377bc7-264a-4798-9184-97b1887a2dae', N'663e1853-0e2d-4043-988d-c0b38f05f73f', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'ab6f7dd0-7bec-4a94-8547-b28767f3412a', N'Recruitment Manager', 10, N'ix.habibi@gmail.com', N'-', N'0816765719', N'9968af16-bca0-4303-a334-8a397e034be0', N'062d7718-9b64-4efd-9207-866e953624a1', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'af043987-5b40-43a2-9d9d-627b5aee5964', N'Retail Manager', 22, N'ix.habibi@gmail.com', N'-', N'0816765719', N'2e8e64f9-da17-4213-9a8d-8b2c80cba51d', N'3a0a9345-9c77-4f5e-ba65-c78b89313248', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'b36622e0-4f21-40c2-a2f6-0ddc390b9d78', N'Recruitment Staff', 11, N'ix.habibi@gmail.com', N'-', N'0816765719', N'ab6f7dd0-7bec-4a94-8547-b28767f3412a', N'a58f9158-92a4-4e7b-86bd-1477af82c24b', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'b895af04-045d-4abe-8f5a-4f0f9e12685d', N'Sales Team', 16, N'ix.habibi@gmail.com', N'-', N'0816765719', N'1405ae03-51c6-4fe4-9285-60acf7d90090', N'd1e01cad-47e5-4c33-8f94-f93ff9707926', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'baf8356e-f38a-46ec-a782-d8a4f02800f2', N'COO', 4, N'ix.habibi@gmail.com', N'-', N'0816765719', N'3c54d9b2-b647-4438-be89-d7a393d485b3', N'0e4f2c2a-a706-4bc9-b152-be5d7d29e2da', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'bd087810-dc47-4f86-8ac9-66a2a889bffe', N'Audit', 6, N'ix.habibi@gmail.com', N'-', N'0816765719', N'e1f17c69-60b8-4850-b9d6-87b54661ccf8', N'51a7f6d1-56d1-42cf-a394-1e4265127d74', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'c7cf03fd-013c-410c-87a8-2039612f4b71', N'Marketing', 23, N'ix.habibi@gmail.com', N'-', N'0816765719', N'baf8356e-f38a-46ec-a782-d8a4f02800f2', N'e3bfa025-8c0b-4f4d-9f33-3ea203d717ed', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'cecaf726-598a-4eca-9d7f-3761997973c0', N'Credit & Collection', 7, N'ix.habibi@gmail.com', N'-', N'0816765719', N'e1f17c69-60b8-4850-b9d6-87b54661ccf8', N'b00958b6-8ae1-4c56-a564-03a3a7b76436', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'd72b8dac-17cb-4b4e-a7d1-e6b72d07bd45', N'Production', 25, N'ix.habibi@gmail.com', N'-', N'0816765719', N'baf8356e-f38a-46ec-a782-d8a4f02800f2', N'fca70443-3b01-445f-836d-101575723b86', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'e1f17c69-60b8-4850-b9d6-87b54661ccf8', N'CFO', 2, N'ix.habibi@gmail.com', N'-', N'0816765719', N'3c54d9b2-b647-4438-be89-d7a393d485b3', N'1d9346e2-bb64-4c02-96bb-0a289ef9babc', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'e1fecaa4-8d86-42d4-b048-b23ba0cc7998', N'Account Payable', 5, N'ix.habibi@gmail.com', N'-', N'0816765719', N'e1f17c69-60b8-4850-b9d6-87b54661ccf8', N'066ead33-8f73-4640-bbc7-92e96cc5154c', N'User')
GO
INSERT [dbo].[Employee] ([Id], [Name], [Code], [Email], [Photo], [Phone], [ParentId], [GroupId], [GroupMenu]) VALUES (N'f5725afb-c5dc-46e1-92f0-c27f1b191f69', N'Admin', 123, N'ix.habibi@gmail.com', N'-', N'0816765719', NULL, N'e254722c-eae8-4b08-88e3-12c3f4dfb12e', N'User,Admin')
GO
INSERT [dbo].[User] ([UserId], [Password], [EmployeeId], [IsAdmin]) VALUES (N'admin', N'123456', N'f5725afb-c5dc-46e1-92f0-c27f1b191f69', 0)
GO
INSERT [dbo].[User] ([UserId], [Password], [EmployeeId], [IsAdmin]) VALUES (N'ceo', N'123456', N'3c54d9b2-b647-4438-be89-d7a393d485b3', 0)
GO
INSERT [dbo].[User] ([UserId], [Password], [EmployeeId], [IsAdmin]) VALUES (N'ixan', N'123456', NULL, 1)
GO
EXEC sp_msforeachtable "ALTER TABLE ? WITH CHECK CHECK CONSTRAINT all"