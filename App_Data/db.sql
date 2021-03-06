USE [TruckSelling]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[IsDelete] [bit] NULL,
	[MainCategoryID] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactPhoneNumber] [varchar](10) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Email] [varchar](255) NULL,
	[MoreDetail] [nvarchar](max) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactPhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MainCategory]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainCategory](
	[MainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Position] [int] NULL,
	[Avatar] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[IsDelete] [bit] NULL,
	[IsPrimary] [bit] NULL,
 CONSTRAINT [PK_MainCategory] PRIMARY KEY CLUSTERED 
(
	[MainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Keywords] [nvarchar](max) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nchar](10) NULL,
	[Status] [bit] NULL,
	[IsDelete] [bit] NULL,
	[Show] [bit] NULL,
	[Detail] [ntext] NULL,
	[NewsCategoryID] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[NewsCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[IsDelete] [bit] NULL,
	[NewsMainCategoryID] [int] NULL,
 CONSTRAINT [PK_NewCategory] PRIMARY KEY CLUSTERED 
(
	[NewsCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewsMainCategory]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsMainCategory](
	[NewsMainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_NewMainCategory] PRIMARY KEY CLUSTERED 
(
	[NewsMainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Avatar] [nvarchar](255) NULL,
	[BackGround] [nvarchar](255) NULL,
	[OriginalPrice] [int] NULL,
	[SalePrice] [int] NULL,
	[Prepay] [int] NULL,
	[Show] [bit] NULL,
	[Choice] [bit] NULL,
	[Status] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CategoryID] [int] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCost]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCost](
	[ProductID] [int] NOT NULL,
	[VAT] [real] NULL,
	[PhiTruocBa] [real] NULL,
	[PhiDangKi] [int] NULL,
	[PhiSuDungDuongBo] [int] NULL,
	[PhiKiemDinh] [int] NULL,
	[BaoHiemTNDS] [int] NULL,
	[Locator] [int] NULL,
	[TotalForRun] [nchar](10) NULL,
 CONSTRAINT [PK_ProductCost] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ProductID] [int] NOT NULL,
	[Detail] [ntext] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductPreview]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPreview](
	[ProductPreviewID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Link] [nvarchar](255) NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_ProductPreview] PRIMARY KEY CLUSTERED 
(
	[ProductPreviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductRelative]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRelative](
	[ProductID] [int] NOT NULL,
	[Keywords] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductRelative] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductTechInfo]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductTechInfo](
	[ProductID] [int] NOT NULL,
	[Detail] [ntext] NULL,
	[CreateBy] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_ProductTechInfo] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Relative]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relative](
	[RelativeID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[NewsID] [int] NULL,
	[Status] [bit] NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Relative] PRIMARY KEY CLUSTERED 
(
	[RelativeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Request]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [varchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_Request1] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Avatar] [nvarchar](255) NULL,
	[FullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Website]    Script Date: 11/23/2020 9:50:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Website](
	[WebsiteID] [int] IDENTITY(1,1) NOT NULL,
	[WebsiteName] [nvarchar](255) NULL,
	[WebsiteFavicon] [nvarchar](255) NULL,
	[WebsiteIcon] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[WebsiteDetail] [ntext] NULL,
	[Hotline] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Map] [nvarchar](max) NULL,
	[Facebook] [nvarchar](255) NULL,
	[Zalo] [nvarchar](255) NULL,
	[FacebookID] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Website] PRIMARY KEY CLUSTERED 
(
	[WebsiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [Title], [Description], [Avatar], [Status], [IsDelete], [MainCategoryID]) VALUES (1, N'Xe tải Hyundai', N'Xe tải huyndai chất lượng chính hãng ( đây là seo key)', N'../fileUploads/images/Category/Xe-Ben-Huyndai.png', 1, 0, 1)
INSERT [dbo].[Category] ([CategoryID], [Title], [Description], [Avatar], [Status], [IsDelete], [MainCategoryID]) VALUES (2, N'Xe đầu kéo Hyundai', N'Xe tải huyndai chất lượng chính hãng ( đây là seo key)', N'../fileUploads/images/Category/Xe-Co-Gioi.png', 1, 0, 1)
INSERT [dbo].[Category] ([CategoryID], [Title], [Description], [Avatar], [Status], [IsDelete], [MainCategoryID]) VALUES (3, N'Xe đông lạnh Hyundai', N'Xe tải huyndai chất lượng chính hãng ( đây là seo key)', N'../fileUploads/images/Category/Xe-Dau-Keo.png', 1, 0, 1)
INSERT [dbo].[Category] ([CategoryID], [Title], [Description], [Avatar], [Status], [IsDelete], [MainCategoryID]) VALUES (4, N'Xe bồn Xitec Hyundai', N'Xe tải huyndai chất lượng chính hãng ( đây là seo key)', N'../fileUploads/images/Category/Xe-Tai.png', 1, 0, 1)
INSERT [dbo].[Category] ([CategoryID], [Title], [Description], [Avatar], [Status], [IsDelete], [MainCategoryID]) VALUES (5, N'Xe chuyên dùng khác', N'Xe tải huyndai chất lượng chính hãng ( đây là seo key)', N'../fileUploads/images/Category/Xe-Tai.png', 1, 0, 1)
INSERT [dbo].[Category] ([CategoryID], [Title], [Description], [Avatar], [Status], [IsDelete], [MainCategoryID]) VALUES (6, N'Phụ tùng xe hyundai', N'Xe tải huyndai chất lượng chính hãng ( đây là seo key)', N'../fileUploads/images/Category/Xe-Dau-Keo.png', 1, 0, 2)
INSERT [dbo].[Category] ([CategoryID], [Title], [Description], [Avatar], [Status], [IsDelete], [MainCategoryID]) VALUES (7, N'Đồ chơi xe huyndai', N'Xe tải huyndai chất lượng chính hãng ( đây là seo key)', N'../fileUploads/images/Category/Xe-Co-Gioi.png', 1, 0, 2)
SET IDENTITY_INSERT [dbo].[Category] OFF
INSERT [dbo].[Contact] ([ContactPhoneNumber], [FullName], [Address], [Status], [Email], [MoreDetail], [CreateTime]) VALUES (N'', N'', N'', 0, N'', N'', CAST(N'2020-11-23 05:39:34.300' AS DateTime))
INSERT [dbo].[Contact] ([ContactPhoneNumber], [FullName], [Address], [Status], [Email], [MoreDetail], [CreateTime]) VALUES (N'03545456', N'luan', N'', 0, N'mail@mail.com', N'', CAST(N'2020-11-23 06:09:19.410' AS DateTime))
INSERT [dbo].[Contact] ([ContactPhoneNumber], [FullName], [Address], [Status], [Email], [MoreDetail], [CreateTime]) VALUES (N'0354624774', N'', NULL, NULL, NULL, N'11/21/2020', NULL)
INSERT [dbo].[Contact] ([ContactPhoneNumber], [FullName], [Address], [Status], [Email], [MoreDetail], [CreateTime]) VALUES (N'123123', N'123123', N'', 0, N'', N'', CAST(N'2020-11-23 06:37:50.510' AS DateTime))
INSERT [dbo].[Contact] ([ContactPhoneNumber], [FullName], [Address], [Status], [Email], [MoreDetail], [CreateTime]) VALUES (N'12313123', N'123', N'', 0, N'', N'', CAST(N'2020-11-23 06:30:10.650' AS DateTime))
INSERT [dbo].[Contact] ([ContactPhoneNumber], [FullName], [Address], [Status], [Email], [MoreDetail], [CreateTime]) VALUES (N'adasdad', N'laduian', N'', 0, N'', N'', CAST(N'2020-11-23 07:13:47.287' AS DateTime))
SET IDENTITY_INSERT [dbo].[MainCategory] ON 

INSERT [dbo].[MainCategory] ([MainCategoryID], [Title], [Description], [Position], [Avatar], [Status], [IsDelete], [IsPrimary]) VALUES (1, N'Sản Phẩm', NULL, 1, NULL, 1, 0, 1)
INSERT [dbo].[MainCategory] ([MainCategoryID], [Title], [Description], [Position], [Avatar], [Status], [IsDelete], [IsPrimary]) VALUES (2, N'Phụ Tùng', NULL, 2, NULL, 1, 0, 0)
INSERT [dbo].[MainCategory] ([MainCategoryID], [Title], [Description], [Position], [Avatar], [Status], [IsDelete], [IsPrimary]) VALUES (4, N'Tào lao', NULL, 4, NULL, 0, 0, 0)
INSERT [dbo].[MainCategory] ([MainCategoryID], [Title], [Description], [Position], [Avatar], [Status], [IsDelete], [IsPrimary]) VALUES (5, N'Tào lao 2', NULL, 5, NULL, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[MainCategory] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewsID], [Title], [Description], [Avatar], [Keywords], [CreateTime], [CreateBy], [Status], [IsDelete], [Show], [Detail], [NewsCategoryID]) VALUES (1, N'Thủ Tục Cấp Đổi Mới Biển Số Vàng Đối Với Xe Kinh Doanh Vận Tải', N'giai thich avatar', N'https://www.upsieutoc.com/images/2020/11/22/cap_doi_bien_so_vang.md.jpg', N'seo key ', CAST(N'2020-11-22 00:00:00.000' AS DateTime), N'          ', 1, 0, 1, NULL, 1)
INSERT [dbo].[News] ([NewsID], [Title], [Description], [Avatar], [Keywords], [CreateTime], [CreateBy], [Status], [IsDelete], [Show], [Detail], [NewsCategoryID]) VALUES (2, N'So sánh Hyundai Mighty EX8 và Hyundai HD120SL', N'So sánh Hyundai Mighty EX8 và Hyundai HD120SL', N'https://www.upsieutoc.com/images/2020/11/22/bai-viet-so-3.md.jpg', N'key', NULL, NULL, 1, 0, 1, NULL, 1)
INSERT [dbo].[News] ([NewsID], [Title], [Description], [Avatar], [Keywords], [CreateTime], [CreateBy], [Status], [IsDelete], [Show], [Detail], [NewsCategoryID]) VALUES (3, N'XE BEN HYUNDAI HD270 MÁY CƠ', N'XE BEN HYUNDAI HD270 MÁY CƠ', N'https://www.upsieutoc.com/images/2020/11/22/bai-viet-so-6.md.jpg', N'key', NULL, NULL, 1, 0, 1, NULL, 1)
INSERT [dbo].[News] ([NewsID], [Title], [Description], [Avatar], [Keywords], [CreateTime], [CreateBy], [Status], [IsDelete], [Show], [Detail], [NewsCategoryID]) VALUES (4, N'XE ĐẦU KÉO 2 CẦU HYUNDAI HD700', N'XE ĐẦU KÉO 2 CẦU HYUNDAI HD700', N'https://www.upsieutoc.com/images/2020/11/22/bai-viet-so-4.md.jpg', N'krey', NULL, NULL, 1, 0, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[NewsCategory] ON 

INSERT [dbo].[NewsCategory] ([NewsCategoryID], [Title], [Description], [Avatar], [Status], [IsDelete], [NewsMainCategoryID]) VALUES (1, N'Kiến Thức Tổng Hợp', NULL, NULL, 1, 0, 1)
INSERT [dbo].[NewsCategory] ([NewsCategoryID], [Title], [Description], [Avatar], [Status], [IsDelete], [NewsMainCategoryID]) VALUES (2, N'Tin Tức Công Nghệ', NULL, NULL, 1, 0, 1)
SET IDENTITY_INSERT [dbo].[NewsCategory] OFF
SET IDENTITY_INSERT [dbo].[NewsMainCategory] ON 

INSERT [dbo].[NewsMainCategory] ([NewsMainCategoryID], [Title], [Avatar], [Description], [Status], [IsDelete]) VALUES (1, N'Tin Tức Tổng Hợp', NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[NewsMainCategory] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [Title], [Description], [Avatar], [BackGround], [OriginalPrice], [SalePrice], [Prepay], [Show], [Choice], [Status], [IsDelete], [CategoryID], [CreateTime]) VALUES (1, N'XE TẢI 20 TẤN 5 CHÂN HYUNDAI HD360', N'HD360 THÙNG MUI BẠT Tải trọng: 20.9 Tấn Xuất xứ: Hàn Quốc Tình trạng: mới 100% HOTLINE:0941.641.859', N'https://i.pinimg.com/originals/05/31/ac/0531ac43965a19839377b2dfcd1976ee.jpg', N'https://i.pinimg.com/originals/76/13/a5/7613a53523a37bdcf73e697cd77f4302.png', 1500000000, 1400000000, 600000000, 1, 1, 1, 0, 1, CAST(N'2020-11-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [Title], [Description], [Avatar], [BackGround], [OriginalPrice], [SalePrice], [Prepay], [Show], [Choice], [Status], [IsDelete], [CategoryID], [CreateTime]) VALUES (2, N'XE TẢI DAEWOO 3 CHÂN RÚT PRIMA KC6C1', N'XE TẢI DAEWOO 3 CHÂN RÚT PRIMA KC6C1', N'https://i.pinimg.com/originals/47/cd/71/47cd719244695eed7f3f53ef278629a9.jpg', N'https://i.pinimg.com/originals/5a/af/6f/5aaf6f2ac7b1f4d2363b14dd41197dad.png', 1000000000, 0, 250000000, 1, 1, 1, 0, 1, CAST(N'2020-11-23 00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [Title], [Description], [Avatar], [BackGround], [OriginalPrice], [SalePrice], [Prepay], [Show], [Choice], [Status], [IsDelete], [CategoryID], [CreateTime]) VALUES (3, N'XE TẢI 6,6 TẤN THÙNG LỬNG HD99', N'XE TẢI 6,6 TẤN THÙNG LỬNG HD99', N'https://i.pinimg.com/originals/4d/fb/2e/4dfb2e715d927dfeec82492930069981.jpg', N'https://i.pinimg.com/originals/39/e1/57/39e1571c3faeec1c18d3c084fc7f96c1.png', 615000000, 0, 138450000, 1, 1, 1, 0, 1, CAST(N'2020-11-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [Title], [Description], [Avatar], [BackGround], [OriginalPrice], [SalePrice], [Prepay], [Show], [Choice], [Status], [IsDelete], [CategoryID], [CreateTime]) VALUES (4, N'XE TẢI HYUNDAI 5 CHÂN HD360', N'XE TẢI HYUNDAI 5 CHÂN HD360', N'https://i.pinimg.com/originals/78/cf/b3/78cfb30f37f8c50967d18a3cc7004cd7.jpg', N'https://i.pinimg.com/originals/78/cf/b3/78cfb30f37f8c50967d18a3cc7004cd7.jpg', 2030000000, 2000000000, 449750000, 1, 1, 1, 0, 1, CAST(N'2020-11-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductID], [Title], [Description], [Avatar], [BackGround], [OriginalPrice], [SalePrice], [Prepay], [Show], [Choice], [Status], [IsDelete], [CategoryID], [CreateTime]) VALUES (5, N'XE TẢI HYUNDAI 5 CHÂN HD360', N'XE TẢI HYUNDAI 5 CHÂN HD360', N'https://i.pinimg.com/originals/78/cf/b3/78cfb30f37f8c50967d18a3cc7004cd7.jpg', N'https://i.pinimg.com/originals/78/cf/b3/78cfb30f37f8c50967d18a3cc7004cd7.jpg', 615000000, 615000000, 615000000, 0, 0, 1, 0, 1, CAST(N'2020-11-24 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[ProductCost] ([ProductID], [VAT], [PhiTruocBa], [PhiDangKi], [PhiSuDungDuongBo], [PhiKiemDinh], [BaoHiemTNDS], [Locator], [TotalForRun]) VALUES (1, 0.2, 0.15, 150000, 0, 0, 0, 1000000, N'8000000   ')
INSERT [dbo].[ProductCost] ([ProductID], [VAT], [PhiTruocBa], [PhiDangKi], [PhiSuDungDuongBo], [PhiKiemDinh], [BaoHiemTNDS], [Locator], [TotalForRun]) VALUES (2, 0.1, 0.15, 150000, 0, 0, 0, 1500000, N'9000000   ')
INSERT [dbo].[ProductCost] ([ProductID], [VAT], [PhiTruocBa], [PhiDangKi], [PhiSuDungDuongBo], [PhiKiemDinh], [BaoHiemTNDS], [Locator], [TotalForRun]) VALUES (3, 0.2, 0.15, 150000, 0, 500000, 0, 1000000, N'7000000   ')
INSERT [dbo].[ProductCost] ([ProductID], [VAT], [PhiTruocBa], [PhiDangKi], [PhiSuDungDuongBo], [PhiKiemDinh], [BaoHiemTNDS], [Locator], [TotalForRun]) VALUES (4, 0.1, 0.15, 150000, 0, 500000, 0, 1000000, N'8000000   ')
INSERT [dbo].[ProductDetail] ([ProductID], [Detail], [CreateTime], [CreateBy]) VALUES (1, N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h2 style="box-sizing: content-box; color: #222222; font-family: Tahoma, arial, sans-serif; background-color: #ffffff;"><span style="box-sizing: content-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong style="box-sizing: content-box;">Động cơ xe tải 20 tấn 5 ch&acirc;n Hyundai HD360:</strong></span></h2>
<p style="box-sizing: content-box; margin: 0px 0px 10px; color: #222222; font-family: Tahoma, arial, sans-serif; font-size: 14px; background-color: #ffffff;"><span style="box-sizing: content-box; font-family: ''times new roman'', times, serif; font-size: 14pt;"><strong style="box-sizing: content-box;">Xe tải 20 tấn HD360</strong>&nbsp;được trang bị động cơ D6CA 4 kỳ &nbsp;6 xi lanh thẳng h&agrave;ng, dung t&iacute;ch xi lanh 12.920 cm3 c&oacute; c&ocirc;ng suất tối đa 380Ps. &nbsp;Hộp số xe tải Hyundai HD360 l&agrave; loại hộp số H160S2x5 - 10 số tiến 2 số l&ugrave;i, tạo sự linh hoạt cho người l&aacute;i khi chọn c&aacute;c loại số ph&ugrave; hợp với từng kiểu địa h&igrave;nh.<a style="box-sizing: content-box; text-decoration-line: none; color: #222222;" href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/dong-co-hd320.png"><img class="aligncenter size-full wp-image-3743" style="box-sizing: content-box; max-width: 100%;" src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/dong-co-hd320.png" alt="dong-co-hd320" width="1216" height="600" /></a></span>&nbsp;<span style="box-sizing: content-box; font-family: ''times new roman'', times, serif; font-size: 14pt;">Ngo&agrave;i ra, thế hệ động cơ n&agrave;y c&ograve;n rất th&acirc;n thiện với m&ocirc;i trường theo ti&ecirc;u chuẩn kh&iacute; thải Euro II.</span></p>
<h2><strong>Ngoại thất xe tải 20 tấn 5 ch&acirc;n Hyundai HD360:</strong></h2>
<p><strong><a href="https://autof.vn/xe-tai-hyundai">Xe tải Hyundai</a>&nbsp;HD360 loại 20 tấn</strong>&nbsp;c&oacute; khoảng c&aacute;ch trục 1700 + 3530 + 1310 + 1310 mm, chiều d&agrave;i tổng qu&aacute;t 12200 mm, chiều rộng 2500 mm, chiều cao 3570&nbsp; mm, đặc điểm vượt trội về ngoại thất của d&ograve;ng xe n&agrave;y l&agrave; thiết kế mạnh mẽ, với những đường n&eacute;t h&agrave;i h&ograve;a v&agrave; tinh tế. Cabin được thiết kế g&oacute;c nghi&ecirc;ng lớn gi&uacute;p dễ d&agrave;ng sửa chữa động cơ, b&ecirc;n cạnh đ&oacute; việc trang bị hệ thống giảm chấn l&ograve; xo treo c&oacute; &yacute; nghĩa rất lớn trong qu&aacute; tr&igrave;nh vận h&agrave;nh, giảm sốc v&agrave; c&aacute;c rung lắc do c&aacute;c lực từ mặt đường t&aacute;c động l&ecirc;n xe. Gi&uacute;p xe vận h&agrave;nh &ecirc;m &aacute;i hơn tr&ecirc;n địa h&igrave;nh giao th&ocirc;ng phức tạp ở Việt Nam.<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/noi-that-hd-320.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/noi-that-hd-320.jpg" alt="noi-that-hd-320" width="800" height="318" /></a>&nbsp;D&ugrave; ở bất kỳ d&ograve;ng xe n&agrave;o khi đạt tốc độ cao, xe phải chịu t&aacute;c động của rất nhiều loại lực, lực cản của gi&oacute; l&agrave; một trong những loại t&aacute;c động trực tiếp v&agrave; ảnh hưởng rất nhiều đến vận tốc cũng như độ bền của xe, để giảm thiểu sự t&aacute;c động n&agrave;y, cabin&nbsp;<strong>HD360 20 tấn</strong>&nbsp;được thiết kế &aacute;p dụng nguy&ecirc;n l&yacute; kh&iacute; động học, khiến hệ số cản giảm xuống mức thấp nhất.&nbsp;B&ecirc;n cạnh đ&oacute;, xe được trang bị th&ugrave;ng h&agrave;ng c&oacute; khả năng chứa 20 tấn h&agrave;ng h&oacute;a, được sản xuất tr&ecirc;n c&ocirc;ng nghệ luyện kim ti&ecirc;n ti&ecirc;n với k&iacute;ch thước l&ograve;ng th&ugrave;ng h&agrave;ng (d&agrave;i x rộng x cao) lần lượt l&agrave; 9720 x 2350 x 720/2150 mm.&nbsp;<strong>HD360 20 tấn</strong>&nbsp;được trang bị c&aacute;c hệ thống nhằm đảm bảo an to&agrave;n v&agrave; hỗ trợ trong qu&aacute; tr&igrave;nh lưu th&ocirc;ng xe như: hệ thống đ&egrave;n pha chiếu s&aacute;ng cho tầm chiếu s&aacute;ng rộng, kết hợp h&agrave;i h&ograve;a với cụm gương chiếu hậu được thiết kế kiểu d&aacute;ng đẹp, tầm nh&igrave;n bao qu&aacute;t gi&uacute;p t&agrave;i xế dễ d&agrave;ng kh&aacute;i qu&aacute;t được địa h&igrave;nh b&ecirc;n ngo&agrave;i khi vận h&agrave;nh xe. Ngo&agrave;i ra xe c&ograve;n c&oacute; tổng tải trọng l&agrave; 34 tấn, trong đ&oacute; trọng lượng bản th&acirc;n l&agrave; 13 tấn.<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/dong-co-hd320.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/dong-co-hd320.jpg" alt="dong-co-hd320" width="800" height="327" /></a>&nbsp;Chất lượng săm lốp l&agrave; yếu tố quyết định lực cản lăn t&aacute;c động l&ecirc;n xe khi đạt tốc độ cao, nhằm tr&aacute;nh ảnh hưởng nhiều của lực n&agrave;y, HD360 được trang bị loại lốp bền bỉ, chống ăn m&ograve;n, v&agrave; c&oacute; khả năng chịu được tải trọng cao, d&ugrave;ng cỡ lốp 12R22.5 /12R22.5, th&ocirc;ng số vết b&aacute;nh trước/sau lần lượt l&agrave; 2040/1850. Xe c&oacute; c&ocirc;ng thức b&aacute;nh l&agrave; 10x4.</p>
<h2><strong>Nội thất xe tải 20 tấn 5 ch&acirc;n Hyundai HD360:</strong></h2>
<p>Kh&ocirc;ng gian nội thất rộng r&atilde;i l&agrave; ấn tượng ban đầu m&agrave; d&ograve;ng&nbsp;<strong>xe tải 20 tấn Hyundai HD360</strong>&nbsp;mang lại cho người sử dụng. B&ecirc;n cạnh đ&oacute;, nội thất c&ograve;n g&acirc;y ấn tượng bởi sự bố tr&iacute; khoa học của bảng điều khiển, c&aacute;c n&uacute;t chức năng h&agrave;i h&ograve;a tr&ecirc;n bảng taplo.<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/noi-that-xe-tai-hd320.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/noi-that-xe-tai-hd320.jpg" alt="noi-that-xe-tai-hd320" width="800" height="312" /></a>&nbsp;Người l&aacute;i sẽ cảm thấy tiện dụng v&agrave; dễ d&agrave;ng điều chỉnh l&ecirc;n xuống cầu giữa nhờ n&uacute;t điều khiển được đặt kh&aacute; khoa học ngay trong cabin xe. Trang bị 2 ghế ngồi được bọc bằng nỉ chất lượng H&agrave;n Quốc.&nbsp;Xe trang bị tay l&aacute;i trợ lực, cần điều khiển đổ đ&egrave;o thiết kế ngay tại v&ocirc; lăng, c&ocirc;ng tắc n&acirc;ng hạ ch&acirc;n phụ được đặt ngay b&ecirc;n phải của l&aacute;i xe. Mang đến cho người l&aacute;i v&iacute; tr&iacute; tiện lợi, dễ d&agrave;ng điều khiển.&nbsp;<strong>Xe tải 20 tấn 5 ch&acirc;n HD360</strong>&nbsp;với nhiều đặc điểm vượt trội so với c&aacute;c d&ograve;ng xe kh&aacute;c đồng thời sở hữu gi&aacute; th&agrave;nh kh&aacute; cạnh tranh, mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng một sản phẩm vận tải ho&agrave;n hảo phục vụ đắc lực cho c&ocirc;ng việc.</p>
<p style="box-sizing: content-box; margin: 0px 0px 10px; color: #222222; font-family: Tahoma, arial, sans-serif; font-size: 14px; background-color: #ffffff;"><span style="box-sizing: content-box; font-family: ''times new roman'', times, serif; font-size: 14pt;">&nbsp;</span></p>
</body>
</html>', CAST(N'2020-11-20 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ProductDetail] ([ProductID], [Detail], [CreateTime], [CreateBy]) VALUES (2, N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p>Xe tải 14 tấn&nbsp;<strong>Daewoo Prima</strong>&nbsp;KC6C1 3 ch&acirc;n r&uacute;t của thương hiệu Daewoo kh&aacute; nổi tiếng với chassi chắc chắn với độ bền cao theo thời gian, mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng một sản phẩm vượt trội về thiết kế, khả năng vận h&agrave;nh v&agrave; sự an to&agrave;n tuyệt đối cho người d&ugrave;ng. Xe được nhập khẩu từ H&agrave;n Quốc với c&ocirc;ng nghệ ti&ecirc;n tiến.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/xe-tai-daewoo-prima.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/xe-tai-daewoo-prima.jpg" alt="xe tai daewoo prima" width="640" height="480" /></a></p>
</body>
</html>', CAST(N'2020-11-20 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ProductDetail] ([ProductID], [Detail], [CreateTime], [CreateBy]) VALUES (3, N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-66-tan-thung-lung-hd99-xe-tang-tai-hd99/" target="_blank" rel="noopener">Xe tải Hyundai HD99</a>&nbsp;th&ugrave;ng lửng tải trọng 6,6 tấn l&agrave; d&ograve;ng xe được n&acirc;ng tải từ HD72 3,5 tấn đ&aacute;p ứng được nhu cầu vận tải th&ocirc;ng thường của kh&aacute;ch h&agrave;ng. Thiết kế v&agrave; lắp r&aacute;p theo ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u, với linh kiện nhập khẩu trực tiếp 100% từ H&agrave;n Quốc đạt chất lượng thương hiệu Hyundai Motor. Đặc điểm của d&ograve;ng xe n&agrave;y l&agrave; thiết kế nhỏ gọn nhưng khả năng tải trọng cao đi k&egrave;m với mức gi&aacute; th&agrave;nh hợp l&yacute; đ&atilde; chiếm trọn sự tin d&ugrave;ng của kh&aacute;ch h&agrave;ng.&nbsp;xem th&ecirc;m:&nbsp;</p>
<ul style="list-style-type: none;">
<li style="list-style-type: disc;"><a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-cho-gia-suc-5-tan-hyundai-hd99/" target="_blank" rel="noopener">Xe chở gia s&uacute;c, chở heo, chở lợn 5 tấn hyundai hd99</a></li>
<li style="list-style-type: disc;"><a href="http://hyundaidocquyen.vn/san-pham/xe-ben/xe-ben-hyundai-6-tan-5-khoi-hd99-do-thanh/" target="_blank" rel="noopener">Xe ben Hyundai 6 tấn 5 khối HD99 Đ&ocirc; Th&agrave;nh</a></li>
<li style="list-style-type: disc;"><a href="http://hyundaidocquyen.vn/san-pham/xe-cau/xe-tai-hyundai-hd99-gan-can-unic-3-tan-3-khuc-4-khuc/" target="_blank" rel="noopener">Xe tải Cẩu Hyundai HD99 Gắn cần Unic 3 Tấn</a></li>
<li style="list-style-type: disc;"><a href="http://hyundaidocquyen.vn/san-pham/xe-bon/xe-bon-hd99/" target="_blank" rel="noopener">Xe bồn xitec chở xăng dầu Hyundai 7 Khối | Xe bồn Xitec HD99 7000 L&iacute;t</a></li>
<li style="list-style-type: disc;"><a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-hd99-6-5-tan/" target="_blank" rel="noopener">Xe tăng Tải Hyundai HD99 6.5 Tấn</a>&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/07/hyundai-hd99-thung-lung.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/07/hyundai-hd99-thung-lung.jpg" alt="hyundai-hd99-thung-lung" width="800" height="600" /></a></li>
</ul>
<h2><strong>Động cơ&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-66-tan-thung-lung-hd99-xe-tang-tai-hd99/" target="_blank" rel="noopener">xe tải HD99 th&ugrave;ng lửng 6,6 tấn</a>:<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/07/dong-co-xe-tai-hyundai-hd99.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/07/dong-co-xe-tai-hyundai-hd99.jpg" alt="dong-co-xe-tai-hyundai-hd99" width="800" height="558" /></a></strong></h2>
<p>Xe HD99 th&ugrave;ng lửng t&iacute;ch hợp nhiều điểm ưu việt từ trong thiết kế nội, ngoại thất cho đến trang bị động cơ. Xe được trang bị thế hệ động cơ Diesel D4DB loại 4 kỳ, 4 xy lanh thẳng h&agrave;ng, mang lại hiệu suất l&agrave;m việc mạnh mẽ, dung t&iacute;ch xy lanh đạt 3907 cc, cho c&ocirc;ng suất cực đại l&agrave; 96 kW/ 2900 v/ph.<img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/03/%C4%91%E1%BB%99ng-c%C6%A1-hd99.jpg" alt="" width="954" height="311" />&nbsp;V&agrave; để xe vận h&agrave;nh an to&agrave;n Hyundai đ&atilde; trang bị hệ thống phanh ABS t&iacute;ch hợp EBD ti&ecirc;u chuẩn. Khi hệ thống cảm biến kh&oacute;a phanh trong c&aacute;c điều kiện bất lợi v&agrave; địa h&igrave;nh trơn, hệ thống ABS c&oacute; thể kiểm so&aacute;t &aacute;p lực phanh l&ecirc;n tất cả c&aacute;c b&aacute;nh bằng điều khiển thủy lực. Ngo&agrave;i ra xe c&ograve;n được trang bị t&uacute;i kh&iacute; an to&agrave;n.<img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/03/%C4%91%E1%BB%99ng-c%C6%A1-hyundai-hd99.jpg" alt="" width="953" height="494" /></p>
</body>
</html>', CAST(N'2020-11-20 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ProductDetail] ([ProductID], [Detail], [CreateTime], [CreateBy]) VALUES (4, N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><strong>&nbsp;&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-hyundai-5-chan-hd360-gia-xe-tai-hyundai-5-chan/">Xe tải Hyundai 5 ch&acirc;n HD360</a></strong>&nbsp;đến từ thương hiệu H&agrave;n Quốc được ra mắt thị trường Việt Nam lần đầu ti&ecirc;n v&agrave;o giữa năm 2015, đ&atilde; nhận được sự quan t&acirc;m rất lớn từ c&aacute;c nh&agrave; đầu tư vận tải c&oacute; tiếng tr&ecirc;n thị trường vận tải h&agrave;ng h&oacute;a ở Việt Nam. Dựa tr&ecirc;n nền X&aacute;t xi của Hyundai HD320 c&ugrave;ng sự cải tiến về hệ thống cầu treo với ưu thế về si&ecirc;u tải trọng c&ugrave;ng độ bền v&agrave; sự tin cậy theo ti&ecirc;u chuẩn Hyundai to&agrave;n cầu,&nbsp;<strong><a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-hyundai-5-chan-hd360-gia-xe-tai-hyundai-5-chan/">HD360</a></strong>&nbsp;ch&iacute;nh l&agrave; sự lựa chọn h&agrave;ng đầu của c&aacute;c nh&agrave; đầu tư vận tải hiện nay. Hyundai ng&agrave;y c&agrave;ng khẳng định thương hiệu của m&igrave;nh tr&ecirc;n thị trường Việt Nam.&nbsp;xem th&ecirc;m:&nbsp;&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-bon/xe-xitec-cho-xang-dau-26-khoi-hyundai-hd360-5-chan-may-co/" target="_blank" rel="noopener">XE XITEC CHỞ XĂNG DẦU 26 KHỐI HYUNDAI HD360 5 CH&Acirc;N M&Aacute;Y CƠ</a>&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-cau/cau-soosan-10-tan-scs1015ls-tren-nen-hyundai-hd360-5-chan/" target="_blank" rel="noopener">CẨU SOOSAN 10 TẤN SCS1015LS TR&Ecirc;N NỀN HYUNDAI HD360 5 CH&Acirc;N</a>&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-cau/xe-tai-hyundai-hd360-5-chan-gan-cau-dongyang-7-tan-ss1926/" target="_blank" rel="noopener">XE TẢI HYUNDAI HD360 5 CH&Acirc;N GẮN CẨU DONGYANG 7 TẤN SS1926</a>&nbsp;[caption id="attachment_3366" align="aligncenter" width="1200"]<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/xe-t%E1%BA%A3i-hyundai-5-ch%C3%A2n-hd360.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/xe-t%E1%BA%A3i-hyundai-5-ch%C3%A2n-hd360.jpg" alt="xe tải hyundai 5 ch&acirc;n hd360" width="1200" height="900" /></a>&nbsp;HD360 5 ch&acirc;n được nhập khẩu trực tiếp từ H&agrave;n Quốc[/caption]</p>
<hr />
<h2>&nbsp;</h2>
<p>&nbsp;</p>
<h2><strong>Th&ocirc;ng số kỹ thuật của xe tải Hyundai HD360:</strong></h2>
<ol style="list-style-type: none;">
<li><strong><em>Loại xe Xe tải</em></strong></li>
</ol>
<p>M&atilde; xe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hyundai HD360&nbsp;Hệ thống l&aacute;i&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tay l&aacute;i thuận c&oacute; trợ lực l&aacute;i LHD&nbsp;Số chỗ ngồi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 02 chỗ&nbsp;Kiểu cabin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cabin c&oacute; giường nằm</p>
<ol style="list-style-type: none;" start="2">
<li><strong><em>K&iacute;ch thước (mm)</em></strong></li>
</ol>
<p>K&iacute;ch thước xe DxRxC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12.200 x 2.500 x 3.500&nbsp;Chiều d&agrave;i cơ sở&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7850mm,&nbsp;Vệt b&aacute;nh xe trước/sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2040/1850&nbsp;Khoảng s&aacute;ng gầm xe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 265 mm</p>
<ol style="list-style-type: none;" start="3">
<li><strong><em>Động cơ</em></strong></li>
</ol>
<p>Kiểu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D6AC&nbsp;Loại&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Diesel, 4 kỳ, 6 xilanh thẳng h&agrave;ng, phun nhi&ecirc;n liệu&nbsp;trực tiếp, tubor tăng &aacute;p.&nbsp;Dung t&iacute;ch xilanh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11149/12920 cc&nbsp;C&ocirc;ng suất lớn nhất&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 340Ps/2000 (v&ograve;ng/ph&uacute;t) / 380Ps&nbsp;Momem xoắn lớn nhất&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1450/1.500&nbsp;Ti&ecirc;u chuẩn kh&iacute; thải&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Euro II</p>
<ol style="list-style-type: none;" start="4">
<li><strong><em>An to&agrave;n, tiện nghi</em></strong></li>
</ol>
<p>Cửa sổ điện&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute;&nbsp;D&acirc;y đai an to&agrave;n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute;&nbsp;Điều h&ograve;a cabin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&ocirc;ng suất lớn</p>
<ol style="list-style-type: none;" start="5">
<li><strong><em>Trọng lượng</em></strong></li>
</ol>
<p>Khối lượng bản th&acirc;n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 13.230 Kg</p>
<ol style="list-style-type: none;" start="6">
<li><strong><em>Hệ thống nhi&ecirc;n liệu</em></strong></li>
</ol>
<p>Bơm nhi&ecirc;u liệu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bosch&nbsp;Kiểu bơm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cơ kh&iacute; t&ugrave;y chỉnh theo tốc độ động cơ&nbsp;Lọc nhi&ecirc;n liệu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&agrave;ng lọc dầu th&ocirc; v&agrave; tinh</p>
<ol style="list-style-type: none;" start="7">
<li><strong><em>Hệ thống chuyển động</em></strong></li>
</ol>
<p>Hộp số&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M12S2 x 5/H160S2x5&nbsp;Ly hợp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đĩa đơn, ma s&aacute;t kh&ocirc;, dẫn động thủy lực trợ lực ch&acirc;n kh&ocirc;ng</p>
<ol style="list-style-type: none;" start="8">
<li><strong><em>Hệ thống phanh</em></strong></li>
</ol>
<p>Phanh ch&iacute;nh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kh&iacute; n&eacute;n 2 d&ograve;ng cơ cấu phanh loại tang trống,&nbsp;phanh tay locker</p>
<ol style="list-style-type: none;" start="9">
<li><strong><em>Th&ocirc;ng số kh&aacute;c</em></strong></li>
</ol>
<p>Thể t&iacute;ch b&igrave;nh nhi&ecirc;n liệu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 380 l&iacute;t&nbsp;B&aacute;n k&iacute;nh quay v&ograve;ng nhỏ nhất 11,7(m)&nbsp;Th&ocirc;ng số lốp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12R22.5&nbsp;&nbsp;&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/HD320-C%E1%BA%A8U-SOOSAN-10-T%E1%BA%A4N.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/HD320-C%E1%BA%A8U-SOOSAN-10-T%E1%BA%A4N.jpg" alt="HD320 CẨU SOOSAN 10 TẤN" width="800" height="600" /></a></p>
<hr />
<h2>&nbsp;</h2>
<p>&nbsp;</p>
<h2><strong>Ngoại thất xe tải&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-hyundai-5-chan-hd360-gia-xe-tai-hyundai-5-chan/">Hyundai HD360</a>:</strong></h2>
<p><strong>&nbsp;&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-hyundai-5-chan-hd360-gia-xe-tai-hyundai-5-chan/">&nbsp;Hyundai Hd360</a></strong>&nbsp;c&oacute; k&iacute;ch thước tổng thể (d&agrave;i x rộng x cao) l&agrave; 12200x 2495 x 3140 (mm) c&ugrave;ng khoảng s&aacute;ng gầm xe l&agrave; 265 mm. D&ograve;ng xe mang đầy đủ n&eacute;t đặc trưng của thương hiệu Hyundai như vẫn giữ lại form của thế hệ cũ với lưới tản nhiệt truyền thống. D&ograve;ng xe được cải tiến dựa tr&ecirc;n nền X&aacute;t xi của thế hệ HD320.&nbsp;&nbsp; &nbsp;Cabin thiết kế theo nguy&ecirc;n l&yacute; động học gi&uacute;p tiết kiệm nhi&ecirc;n liệu, đồng thời gi&uacute;p giảm tiếng ồn v&agrave; sức cản của gi&oacute;. G&oacute;c n&acirc;ng cabin rộng.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/xe-t%E1%BA%A3i-5-ch%C3%A2n-hyundai-hd360.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/xe-t%E1%BA%A3i-5-ch%C3%A2n-hyundai-hd360.jpg" alt="xe tải 5 ch&acirc;n hyundai hd360" width="919" height="389" /></a>&nbsp;&nbsp; &nbsp;Việc bổ sung dầu hoặc nước l&agrave;m m&aacute;t trở n&ecirc;n dễ d&agrave;ng v&agrave; thuận tiện hơn nhờ thiết kế nắp capo rộng.&nbsp;&nbsp; &nbsp;Cửa được thiết kế lớn v&agrave; chắc, ốp nhựa cao cấp tạo điểm nhấn trẻ trung, bố tr&iacute; c&aacute;c hộc chứa đồ lớn ở cả 2 cửa xe mang đến sự tiện nghi v&agrave; ngăn n&aacute;p cho người d&ugrave;ng.&nbsp;&nbsp; &nbsp;Hộp cầu ch&igrave; tổng v&agrave; c&aacute;c bộ phận cần được kiểm tra thường xuy&ecirc;n được bố tr&iacute; khoa học trong cabin gi&uacute;p việc kiểm tra v&agrave; bảo dưỡng dễ d&agrave;ng v&agrave; thuận tiện hơn.&nbsp;&nbsp; &nbsp;Hệ thống đ&egrave;n pha halogen chiếu s&aacute;ng trong phạm vi rộng c&ugrave;ng hệ thống cụm đ&egrave;n sương m&ugrave; đảm bảo an to&agrave;n khi vận h&agrave;nh trong điều kiện thời tiết kh&ocirc;ng thuận lơi. B&ecirc;n cạnh đ&oacute;, xe c&ograve;n được trang bị 3 cần gạt mưa.&nbsp;&nbsp; &nbsp;Sử dụng cỡ lốp &nbsp;12 R22.5, loại lốp kh&ocirc;ng săm 16 bố th&eacute;p. Bậc l&ecirc;n xuống bằng gang đ&uacute;c chống trượt. B&igrave;nh nhi&ecirc;n liệu 350 l&iacute;t bằng hợp kim nh&ocirc;m c&oacute; kh&oacute;a bảo vệ.&nbsp;Hệ thống cầu phụ cho ph&eacute;p điều chỉnh l&ecirc;n xuống.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/ngo%E1%BA%A1i-th%E1%BA%A5t-xe-t%E1%BA%A3i-hyundai-5-ch%C3%A2n-hd360.png"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/ngo%E1%BA%A1i-th%E1%BA%A5t-xe-t%E1%BA%A3i-hyundai-5-ch%C3%A2n-hd360.png" alt="ngoại thất xe tải hyundai 5 ch&acirc;n hd360" width="1111" height="395" /></a></p>
<hr />
<h2>&nbsp;</h2>
<p>&nbsp;</p>
<h2><strong>Nội thất xe tải Hyundai HD360:</strong></h2>
<p>&nbsp; &nbsp;X&eacute;t mặt tổng qu&aacute;t, nội thất d&ograve;ng&nbsp;<strong>Hyundai 5 ch&acirc;n HD360</strong>&nbsp;được thiết kế v&ocirc; c&ugrave;ng rộng r&atilde;i mang đến sự thoải m&aacute;i cho người điều khiển. Kh&ocirc;ng gian mang n&eacute;t đặc trưng của c&aacute;c d&ograve;ng xe tải hạng nặng Hyundai với thiết kế đơn giản, trẻ trung, nhưng kh&ocirc;ng k&eacute;m phần sang trọng nhờ c&aacute;c điểm nhấn như thiết kế ghế, v&ocirc; lăng v&agrave; c&aacute;c tấm ốp chi tiết nội thất.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/n%E1%BB%99i-th%E1%BA%A5t-xe-t%E1%BA%A3i-hyundai-3-ch%C3%A2n-hd360.png"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/n%E1%BB%99i-th%E1%BA%A5t-xe-t%E1%BA%A3i-hyundai-3-ch%C3%A2n-hd360.png" alt="nội thất xe tải hyundai 3 ch&acirc;n hd360" width="960" height="365" /></a>&nbsp;&nbsp; &nbsp;Khoang l&aacute;i bố tr&iacute; ghế ngồi c&acirc;n bằng hơi với thiết kế thể thao &ocirc;m trọn lưng, điều chỉnh được 8 hướng kết hợp với d&acirc;y đai an to&agrave;n 6 điểm, khoảng để ch&acirc;n rộng r&atilde;i, cả 2 ghế đều c&oacute; thể điều chỉnh được độ nghi&ecirc;ng tựa lưng v&agrave; gập lại ho&agrave;n to&agrave;n mang đến sự thoải m&aacute;i cho người d&ugrave;ng. Ngo&agrave;i ra xe c&ograve;n được trang bị 1 giường nằm ph&iacute;a sau ghế l&aacute;i với kh&ocirc;ng gian tho&aacute;ng m&aacute;t. Gi&uacute;p t&agrave;i xế nghỉ ngơi thoải m&aacute;i trong những h&agrave;nh tr&igrave;nh d&agrave;i.&nbsp;Trần xe được thiết kế cao hơn so với c&aacute;c d&ograve;ng xe kh&aacute;c.&nbsp;Cabin trang bị hệ thống giảm s&oacute;c, c&aacute;c l&ograve; xo nh&iacute;p l&aacute;.&nbsp;&nbsp; &nbsp;Bảng điều khiển được bố tr&iacute; tập trung quanh người l&aacute;i, c&ugrave;ng với đồng hồ hiển thị đa chức năng tr&ecirc;n t&aacute;p l&ocirc; ở vị tr&iacute; dễ quan s&aacute;t, đảm bảo an to&agrave;n cho t&agrave;i xế khi vận h&agrave;nh xe. Đồng thời c&aacute;c b&agrave;n đạp được thiết kế dạng treo gi&uacute;p giảm tối đa sự mệt mỏi khi điều khiển xe đường trường.&nbsp;<strong>&nbsp; &nbsp;Xe tải 5 ch&acirc;n Hyundai HD360</strong>&nbsp;c&ograve;n được trang bị hệ thống điều h&ograve;a tự động c&ocirc;ng suất lớn, hệ thống d&agrave;n &acirc;m thanh cao cấp, c&ugrave;ng cổng kết nối USB cho c&aacute;c thiết bị ngoại vi.&nbsp;Tay l&aacute;i trợ lực, gập g&ugrave; điều chỉnh được độ cao thấp cho ph&ugrave; hợp với từng d&aacute;ng người điều khiển.</p>
<hr />
<p>&nbsp; &nbsp;&nbsp;<strong>Động cơ xe tải Hyundai HD360:</strong>&nbsp;<strong>&nbsp; &nbsp;Xe tải Hyundai 5 ch&acirc;n HD360</strong>&nbsp;được trang bị động cơ Diesel tăng &aacute;p turbo, l&agrave;m m&aacute;t bằng nước, 4 kỳ, 6 xy lanh thẳng h&agrave;ng.&nbsp;&nbsp; &nbsp;D&ograve;ng&nbsp;<strong>Hyundai HD360</strong>&nbsp;ở thị trường Việt Nam mang 2 phi&ecirc;n bản động cơ: phi&ecirc;n bản sử dụng động cơ D6AC, c&ocirc;ng suất 340Ps, dung t&iacute;ch xy lanh 11149 cc v&agrave; phi&ecirc;n bản sử dụng động cơ D6AC, c&ocirc;ng suất 380Ps, dung t&iacute;ch xy lanh 12920 cc.&nbsp;&nbsp; &nbsp;Động cơ D6AC với hệ thống phun nhi&ecirc;n liệu trực tiếp cho c&ocirc;ng suất 380Ps kết hợp moment xoắn tối đa ph&ugrave; hợp với y&ecirc;u cầu tải trọng cao. Kết hợp với Turbo tăng &aacute;p tối ưu h&oacute;a qu&aacute; tr&igrave;nh đốt nhi&ecirc;n liệu, l&agrave;m giảm kh&iacute; thải v&agrave; tăng hiệu quả sử dụng động cơ. Ngo&agrave;i ra,&nbsp;<strong>HD360</strong>&nbsp;c&ograve;n được trang bị hệ thống bơm dầu bơi trơn nhằm giảm m&ograve;n v&agrave; tăng độ bền cho động cơ.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/412305597640.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/412305597640.jpg" alt="xe bồn chở xăng dầu 5 ch&acirc;n" width="960" height="540" /></a>&nbsp;&nbsp; &nbsp;D&ograve;ng xe trang bị phi&ecirc;n bản động cơ D6AC c&ocirc;ng suất 340Ps th&igrave; được trang bị hộp số M12S2 x 5. Phi&ecirc;n bản mang động cơ D6AC, c&ocirc;ng suất 380Ps được trang bị hộp số H160S2 với 10 số tiến v&agrave; 2 số l&ugrave;i. Mang đến sự linh hoạt cho việc lựa chọn khả năng vận h&agrave;nh đối với t&igrave;nh trạng giao th&ocirc;ng phức tạp tại Việt Nam.</p>
<h2>&nbsp;</h2>
<hr />
<h2>&nbsp;</h2>
<h2><strong>&nbsp; &nbsp;Gi&aacute; xe Hyundai 5 ch&acirc;n HD360 l&agrave;&nbsp;2.080.000.000&nbsp;- một mức đầu tư hợp l&yacute; cho một sản phẩm đem lại hiệu năng cao cho nh&agrave; đầu tư</strong></h2>
<p>&nbsp; &nbsp;Mức gi&aacute; của Hyundai HD360 ho&agrave;n to&agrave;n hợp l&yacute;, ph&ugrave; hợp với nhu cầu vận tải lớn của c&aacute;c doanh nghiệp v&agrave; c&aacute;c nh&agrave; đầu tư. Đ&acirc;y cũng l&agrave; một trong số c&aacute;c sản phẩm d&ograve;ng xe tải được thiết kế theo c&ocirc;ng nghệ ti&ecirc;n tiến nhất đảm bảo khả năng vận tải lớn nhất. Việc lựa chọn sử dụng v&agrave; đầu tư v&agrave;o d&ograve;ng xe n&agrave;y l&agrave; sự lựa chọn s&aacute;ng suất.&nbsp;<strong>&nbsp;</strong></p>
</body>
</html>', CAST(N'2020-11-20 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ProductPreview] ON 

INSERT [dbo].[ProductPreview] ([ProductPreviewID], [Title], [Description], [Link], [ProductID]) VALUES (1, N'seo key', N'description key', N'https://i.pinimg.com/originals/ba/8a/86/ba8a868fbca465742da158382ad16ee1.jpg', 1)
INSERT [dbo].[ProductPreview] ([ProductPreviewID], [Title], [Description], [Link], [ProductID]) VALUES (2, N'2', N'2', N'https://i.pinimg.com/originals/bb/53/37/bb533791655e24427f2ac962315bd5e9.jpg', 1)
INSERT [dbo].[ProductPreview] ([ProductPreviewID], [Title], [Description], [Link], [ProductID]) VALUES (3, N'3', N'3', N'https://i.pinimg.com/originals/56/43/71/56437151cdaaa7d73e62a5bfac3d0c05.jpg', 1)
INSERT [dbo].[ProductPreview] ([ProductPreviewID], [Title], [Description], [Link], [ProductID]) VALUES (4, N'4', N'4', N'https://i.pinimg.com/originals/d8/4d/b2/d84db251dfa234b02028723c934c3dba.jpg', 1)
INSERT [dbo].[ProductPreview] ([ProductPreviewID], [Title], [Description], [Link], [ProductID]) VALUES (5, N'1', N'1', N'https://i.pinimg.com/originals/bb/53/37/bb533791655e24427f2ac962315bd5e9.jpg', 2)
INSERT [dbo].[ProductPreview] ([ProductPreviewID], [Title], [Description], [Link], [ProductID]) VALUES (6, N'2', N'2', N'https://i.pinimg.com/originals/d8/4d/b2/d84db251dfa234b02028723c934c3dba.jpg', 3)
INSERT [dbo].[ProductPreview] ([ProductPreviewID], [Title], [Description], [Link], [ProductID]) VALUES (7, N'3', N'3', N'https://i.pinimg.com/originals/ba/8a/86/ba8a868fbca465742da158382ad16ee1.jpg', 4)
SET IDENTITY_INSERT [dbo].[ProductPreview] OFF
INSERT [dbo].[ProductRelative] ([ProductID], [Keywords]) VALUES (1, N'HYUNDAI HD360 - GIÁ XE TẢI HD360 - ')
INSERT [dbo].[ProductRelative] ([ProductID], [Keywords]) VALUES (2, N'XE TẢI DAEWOO 3 - PRIMA KC6C1 - Xe  Hàn Quốc - Xe tải 14 tấn')
INSERT [dbo].[ProductRelative] ([ProductID], [Keywords]) VALUES (3, N'XE TẢI 6,6 TẤN -  XE TĂNG TẢI HD99 - linh kiện nhập khẩu  - Hyundai Motor.')
INSERT [dbo].[ProductRelative] ([ProductID], [Keywords]) VALUES (4, N'XE TẢI HYUNDAI 5 - Hàn Quốc -Hyundai Motor')
INSERT [dbo].[ProductTechInfo] ([ProductID], [Detail], [CreateBy], [CreateTime]) VALUES (1, N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h3><strong>Th&ocirc;ng số kỹ thuật xe tải 20 tấn 5 ch&acirc;n Hyundai HD360:</strong></h3>
<table style="width: 1170px;" width="624">
<tbody>
<tr>
<td colspan="2" width="624"><strong>K&Iacute;CH THƯỚC&nbsp; (mm)</strong></td>
</tr>
<tr>
<td width="318">K&iacute;ch thước xe : D&agrave;i x Rộng x Cao :</td>
<td width="306">12200 x 2500 x 3570</td>
</tr>
<tr>
<td width="318">K&iacute;ch thước l&ograve;ng th&ugrave;ng h&agrave;ng (hoặc k&iacute;ch thước bao xi t&eacute;c) :</td>
<td width="306">9720 x 2350 x 720/2150</td>
</tr>
<tr>
<td width="318">Khoảng c&aacute;ch trục :</td>
<td width="306">1700 + 3530 + 1310 + 1310</td>
</tr>
<tr>
<td width="318">Vết b&aacute;nh xe trước / sau :</td>
<td width="306">2040/1850</td>
</tr>
<tr>
<td width="318">Số trục :</td>
<td width="306">5</td>
</tr>
<tr>
<td width="318">C&ocirc;ng thức b&aacute;nh</td>
<td width="306">10 x 4</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>TRỌNG LƯỢNG (KG)</strong></td>
</tr>
<tr>
<td width="318">Trọng lượng bản th&acirc;n :</td>
<td width="306">12970</td>
</tr>
<tr>
<td width="318">Ph&acirc;n bố : - Cầu trước :</td>
<td width="306">3565 + 3565</td>
</tr>
<tr>
<td width="318">- Cầu sau :</td>
<td width="306">0 + 2920</td>
</tr>
<tr>
<td width="318">Tải trọng cho ph&eacute;p chở :</td>
<td width="306">20900</td>
</tr>
<tr>
<td width="318">Số người cho ph&eacute;p chở :</td>
<td width="306">2</td>
</tr>
<tr>
<td width="318">Trọng lượng to&agrave;n bộ :</td>
<td width="306">34000</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>ĐỘNG CƠ</strong></td>
</tr>
<tr>
<td width="318">Nh&atilde;n hiệu động cơ:</td>
<td width="306">D6CA</td>
</tr>
<tr>
<td width="318">Loại động cơ:</td>
<td width="306">4 kỳ, 6 xi lanh thẳng h&agrave;ng, tăng &aacute;p</td>
</tr>
<tr>
<td width="318">Thể t&iacute;ch :</td>
<td width="306">12920 &nbsp;&nbsp; &nbsp;&nbsp; cm3</td>
</tr>
<tr>
<td width="318">C&ocirc;ng suất lớn nhất /tốc độ quay :</td>
<td width="306">279 kW/ 1900 v/ph</td>
</tr>
<tr>
<td width="318">Nhi&ecirc;n liệu sử dụng</td>
<td width="306">Diesel</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>LỐP XE</strong></td>
</tr>
<tr>
<td width="318">Số lượng lốp tr&ecirc;n trục I/II/III/IV:</td>
<td width="306">02/02/04/04/---</td>
</tr>
<tr>
<td width="318">Lốp trước / sau:</td>
<td width="306">12R22.5 /12R22.5</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>HỆ THỐNG PHANH</strong></td>
</tr>
<tr>
<td width="318">Phanh trước /Dẫn động :</td>
<td width="306">Tang trống /kh&iacute; n&eacute;n</td>
</tr>
<tr>
<td width="318">Phanh sau /Dẫn động :</td>
<td width="306">Tang trống /kh&iacute; n&eacute;n</td>
</tr>
<tr>
<td width="318">Phanh tay /Dẫn động :</td>
<td width="306">T&aacute;c động l&ecirc;n b&aacute;nh xe trục 2, 3, 4 /Tự h&atilde;m</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>HỆ THỐNG L&Aacute;I</strong></td>
</tr>
<tr>
<td width="318">Kiểu hệ thống l&aacute;i /Dẫn động :</td>
<td width="306">Trục v&iacute;t - &ecirc; cu bi /Cơ kh&iacute; c&oacute; trợ lực thuỷ lực</td>
</tr>
<tr>
<td width="318"><strong>Ghi ch&uacute;</strong></td>
<td width="306">H&agrave;ng năm, giấy chứng nhận n&agrave;y được xem x&eacute;t đ&aacute;nh gi&aacute;</td>
</tr>
</tbody>
</table>
<h2><strong>Ngoại thất xe tải 20 tấn 5 ch&acirc;n Hyundai HD360:</strong></h2>
<p><strong><a href="https://autof.vn/xe-tai-hyundai">Xe tải Hyundai</a>&nbsp;HD360 loại 20 tấn</strong>&nbsp;c&oacute; khoảng c&aacute;ch trục 1700 + 3530 + 1310 + 1310 mm, chiều d&agrave;i tổng qu&aacute;t 12200 mm, chiều rộng 2500 mm, chiều cao 3570&nbsp; mm, đặc điểm vượt trội về ngoại thất của d&ograve;ng xe n&agrave;y l&agrave; thiết kế mạnh mẽ, với những đường n&eacute;t h&agrave;i h&ograve;a v&agrave; tinh tế. Cabin được thiết kế g&oacute;c nghi&ecirc;ng lớn gi&uacute;p dễ d&agrave;ng sửa chữa động cơ, b&ecirc;n cạnh đ&oacute; việc trang bị hệ thống giảm chấn l&ograve; xo treo c&oacute; &yacute; nghĩa rất lớn trong qu&aacute; tr&igrave;nh vận h&agrave;nh, giảm sốc v&agrave; c&aacute;c rung lắc do c&aacute;c lực từ mặt đường t&aacute;c động l&ecirc;n xe. Gi&uacute;p xe vận h&agrave;nh &ecirc;m &aacute;i hơn tr&ecirc;n địa h&igrave;nh giao th&ocirc;ng phức tạp ở Việt Nam.<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/noi-that-hd-320.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/noi-that-hd-320.jpg" alt="noi-that-hd-320" width="800" height="318" /></a></p>
</body>
</html>', NULL, NULL)
INSERT [dbo].[ProductTechInfo] ([ProductID], [Detail], [CreateBy], [CreateTime]) VALUES (2, N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h2><strong>Th&ocirc;ng số kỹ thuật của xe tải 14 tấn Daewoo 3 ch&acirc;n r&uacute;t KC6C1:</strong></h2>
<table style="width: 1170px;" width="624">
<tbody>
<tr>
<td colspan="2" width="624"><strong>K&Iacute;CH THƯỚC&nbsp; (mm)</strong></td>
</tr>
<tr>
<td width="318">K&iacute;ch thước xe : D&agrave;i x Rộng x Cao :</td>
<td width="306">9750 x 2500 x 3450</td>
</tr>
<tr>
<td width="318">K&iacute;ch thước l&ograve;ng th&ugrave;ng h&agrave;ng (hoặc k&iacute;ch thước bao xi t&eacute;c) :</td>
<td width="306">7370 x 2350 x 750/2150</td>
</tr>
<tr>
<td width="318">Khoảng c&aacute;ch trục :</td>
<td width="306">4700 + 1100</td>
</tr>
<tr>
<td width="318">Vết b&aacute;nh xe trước / sau :</td>
<td width="306">1890/1760</td>
</tr>
<tr>
<td width="318">Số trục :</td>
<td width="306">3</td>
</tr>
<tr>
<td width="318">C&ocirc;ng thức b&aacute;nh</td>
<td width="306">6 x 2</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>TRỌNG LƯỢNG (KG)</strong></td>
</tr>
<tr>
<td width="318">Trọng lượng bản th&acirc;n :</td>
<td width="306">6870</td>
</tr>
<tr>
<td width="318">Ph&acirc;n bố : - Cầu trước :</td>
<td width="306">3590</td>
</tr>
<tr>
<td width="318">- Cầu sau :</td>
<td width="306">0 + 3280</td>
</tr>
<tr>
<td width="318">Tải trọng cho ph&eacute;p chở :</td>
<td width="306">14000</td>
</tr>
<tr>
<td width="318">Số người cho ph&eacute;p chở :</td>
<td width="306">2</td>
</tr>
<tr>
<td width="318">Trọng lượng to&agrave;n bộ :</td>
<td width="306">21000</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>ĐỘNG CƠ</strong></td>
</tr>
<tr>
<td width="318">Nh&atilde;n hiệu động cơ:</td>
<td width="306">CUMMINS B5.9</td>
</tr>
<tr>
<td width="318">Loại động cơ:</td>
<td width="306">4 kỳ, 6 xi lanh thẳng h&agrave;ng, tăng &aacute;p</td>
</tr>
<tr>
<td width="318">Thể t&iacute;ch :</td>
<td width="306">5883 &nbsp;&nbsp; &nbsp;&nbsp; cm3</td>
</tr>
<tr>
<td width="318">C&ocirc;ng suất lớn nhất /tốc độ quay :</td>
<td width="306">158 kW/ 2500 v/ph</td>
</tr>
<tr>
<td width="318">Nhi&ecirc;n liệu sử dụng</td>
<td width="306">Diesel</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>LỐP XE</strong></td>
</tr>
<tr>
<td width="318">Số lượng lốp tr&ecirc;n trục I/II/III/IV:</td>
<td width="306">02/04/04/---/---</td>
</tr>
<tr>
<td width="318">Lốp trước / sau:</td>
<td width="306">265/70R19.5 /265/70R19.5</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>HỆ THỐNG PHANH</strong></td>
</tr>
<tr>
<td width="318">Phanh trước /Dẫn động :</td>
<td width="306">Tang trống /kh&iacute; n&eacute;n</td>
</tr>
<tr>
<td width="318">Phanh sau /Dẫn động :</td>
<td width="306">Tang trống /kh&iacute; n&eacute;n</td>
</tr>
<tr>
<td width="318">Phanh tay /Dẫn động :</td>
<td width="306">T&aacute;c động l&ecirc;n b&aacute;nh xe trục 2, 3, 4 /Tự h&atilde;m</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>HỆ THỐNG L&Aacute;I</strong></td>
</tr>
<tr>
<td width="318">Kiểu hệ thống l&aacute;i /Dẫn động :</td>
<td width="306">Trục v&iacute;t - &ecirc; cu bi /Cơ kh&iacute; c&oacute; trợ lực thuỷ lực</td>
</tr>
<tr>
<td width="318"><strong>Ghi ch&uacute;</strong></td>
<td width="306">H&agrave;ng năm, giấy chứng nhận n&agrave;y được xem x&eacute;t đ&aacute;nh gi&aacute;.</td>
</tr>
</tbody>
</table>
<hr />
<h2><strong>Ngoại thất xe tải Daewoo Prima KC6C1:</strong></h2>
<p><a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/XE-TAI-DAEWOO-PRIMA-KC6C1.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/XE-TAI-DAEWOO-PRIMA-KC6C1.jpg" alt="XE TAI DAEWOO PRIMA KC6C1" width="707" height="422" /></a>&nbsp;<strong>Xe tải Daewoo Prima</strong>&nbsp;KC6C1 c&oacute; thiết kế ngoại thất kh&aacute; đẹp với k&iacute;ch thước &nbsp;tổng qu&aacute;t (d&agrave;i x rộng x cao) lần lượt l&agrave;: 9750 x 2500 x 3450 mm. Cabin c&oacute; g&oacute;c lật lớn gi&uacute;p tiếp cận động cơ dễ d&agrave;ng hơn hỗ trợ trong những trường hợp kiểm tra, sửa chữa khi cần.&nbsp;<strong>Xe tải 14 tấn Daewoo Prima</strong>&nbsp;3 ch&acirc;n r&uacute;t KC6C1 sở hữu khả năng vượt chướng ngại vật kh&aacute; tốt nhờ sở hữu th&ocirc;ng số khoảng s&aacute;ng gầm xe rộng 275mm.&nbsp;Cabin được thiết kế ph&ugrave; hợp với thẩm mỹ người Việt, với vẻ ngoại tạo những ấn tượng kh&aacute;c biệt.&nbsp;K&iacute;ch thước l&ograve;ng th&ugrave;ng h&agrave;ng (d&agrave;i x rộng x cao) lần lượt l&agrave; 7370 x 2350 x 750/2150 mm. Q&uacute;y kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi sử dụng v&igrave; th&ugrave;ng h&agrave;ng được đ&oacute;ng theo ti&ecirc;u chuẩn của nh&agrave; sản xuất.&nbsp;Xe tải 14 tấn&nbsp;<strong>Daewoo 3 ch&acirc;n r&uacute;t</strong>&nbsp;KC6C1 được trang bị c&aacute;c hệ thống đ&egrave;n halogen thiết kế tinh tế, c&oacute; khả năng chiếu s&aacute;ng trong phạm vi rộng kết hợp h&agrave;i h&ograve;a với cụm gương chiếu hậu sấy điện, gi&uacute;p hạn chế điểm m&ugrave; khi vận h&agrave;nh xe, đảm bảo an to&agrave;n khi lưu th&ocirc;ng.&nbsp;Xe được thiết kế 3 trục, c&oacute; chiều d&agrave;i cơ sở l&agrave; 4700 + 1100 mm. Tổng tải trọng l&agrave; 21000 KG, trong đ&oacute; trọng lượng bản th&acirc;n l&agrave; 6870 kg, tải trọng cho ph&eacute;p chở l&agrave; 14000 kg. Thiết kế 2 cầu c&oacute; sự ph&acirc;n bố tải trọng như sau: cầu trước 3590 kg, cầu sau 3280 Kg.&nbsp;Xe c&oacute; thiết kế 3 ch&acirc;n linh hoạt với c&ocirc;ng thức b&aacute;nh l&agrave; 6x2, d&ugrave;ng cỡ lốp 265/70R19.5, th&ocirc;ng số vết b&aacute;nh trước/sau lần lượt l&agrave; 1890/1760. Lốp bền chịu được tải trọng cao, &iacute;t m&ograve;n.</p>
<hr />
<h2><strong>Nội thất xe tải Daewoo Prima KC6C1:</strong></h2>
<p><a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/xe-tai-daewoo-15-tan.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/xe-tai-daewoo-15-tan.jpg" alt="xe tai daewoo 15 tan" width="640" height="480" /></a>&nbsp;Nội thất xe tải 14 tấn&nbsp;<strong>Daewoo KC6C1 3 ch&acirc;n r&uacute;t</strong>&nbsp;được trang bị đ&agrave;y đủ c&aacute;c t&iacute;nh năng hiện đại. Kh&ocirc;ng gian thoải m&aacute;i được bố tr&iacute; gọn g&agrave;ng với c&aacute;c hộc chứa đồ d&ugrave;ng c&aacute; nh&acirc;n hồ sơ, giấy tờ, tư trang.&nbsp; Khoang l&aacute;i đem đến sự thoải m&aacute;i cho người ngồi trong cabin bất kể kiểu thời tiết nhờ trang bị m&aacute;y lạnh c&ocirc;ng suất lớn đủ để qu&yacute; kh&aacute;ch h&agrave;ng tận hưởng cuộc sống tại gia trong chuyến đi d&agrave;i.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/xe-tai-daewoo-3-chan-rut-kc6c1.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/xe-tai-daewoo-3-chan-rut-kc6c1.jpg" alt="xe tai daewoo 3 chan rut kc6c1" width="640" height="480" /></a>&nbsp;Xe c&ograve;n được trang bị tiện &iacute;ch kh&ocirc;ng kh&aacute;c g&igrave; c&aacute;c d&ograve;ng xe du lịch đời mới nhờ hệ thống th&ocirc;ng tin giải tr&iacute; đa phuong tiện đ&aacute;p ứng tốt nhu cầu của người d&ugrave;ng như: Radio, USB với hệ thống &acirc;m thanh chất lượng cao.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/DAEWOO-PRIMA-KC6C1.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/08/DAEWOO-PRIMA-KC6C1.jpg" alt="DAEWOO PRIMA KC6C1" width="640" height="480" /></a>&nbsp;Taplo xe c&oacute; đủ vị tr&iacute; để lắp th&ecirc;m m&agrave;n h&igrave;nh DVD gi&uacute;p thư giản tốt hơn trong l&uacute;c nghỉ ngơi.&nbsp;Ghế được thiết kế năng động v&agrave; thoải m&aacute;i gi&uacute;p người ngồi lu&ocirc;n cảm nhận được sự thoải m&aacute;i với hệ thống c&acirc;n bằng hơi, điều chỉnh được g&oacute;c ngả v&agrave; khoảng để ch&acirc;n rộng r&atilde;i. Ph&ugrave; hợp với mọi v&oacute;c d&aacute;ng người l&aacute;i.</p>
<h2><strong>Động cơ xe tải 14 tấn Daewoo KC6C1 Prima 3 ch&acirc;n r&uacute;t:</strong></h2>
<p>Xe tải 14 tấn&nbsp;<strong>Daewoo KC6C1 Prima</strong>&nbsp;3 ch&acirc;n r&uacute;t hoạt động mạnh mẽ nhờ trang bị thế hệ động cơ Cummins loại 4 kỳ, 6 xy lanh được xếp thẳng h&agrave;ng, c&oacute; dung t&iacute;ch xy lanh đạt 5883 cc, cho c&ocirc;ng suất cực đại 158 Kw tại v&ograve;ng quay 2500 v/ph, sử dụng dầu Diesel. Động cơ tăng &aacute;p nạp si&ecirc;u khỏe Cummins B5.9 hiệu suất cao của h&atilde;ng sản xuất động co h&agrave;ng đầu thế giới hiện nay.&nbsp;B&ecirc;n cạnh đ&oacute; c&ograve;n được trang bị hệ thống phanh chống b&oacute; cứng phanh ABS, gi&uacute;p vận h&agrave;nh an to&agrave;n tr&ecirc;n những đoạn đường trơn.&nbsp;Xe được trang bị hộp số T8S6&nbsp; với 6 số tiến v&agrave; 1 số l&ugrave;i, Khả năng leo dốc tối đa: 34.7%, Vận tốc tối đa: 121 km/h&nbsp;B&ecirc;n cạnh khả năng vận h&agrave;nh mạnh mẽ với chất lượng ổn định, gi&aacute; th&agrave;nh của d&ograve;ng sản phẩm xe tải Prima 3 ch&acirc;n r&uacute;t&nbsp;Daewoo KC6C1 kh&aacute; mềm so với c&aacute;c loại xe tải tầm trung c&ugrave;ng ph&acirc;n kh&uacute;c. Mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng sự lựa chọn tuyệt vời cho c&ocirc;ng việc.</p>
</body>
</html>', NULL, NULL)
INSERT [dbo].[ProductTechInfo] ([ProductID], [Detail], [CreateBy], [CreateTime]) VALUES (3, N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<article>
<p><strong>HD99 th&ugrave;ng lửng 6,6 tấn:</strong></p>
<table style="width: 1170px;" width="624">
<tbody>
<tr>
<td colspan="2" width="624"><strong>K&Iacute;CH THƯỚC XE TĂNG TẢI HD99 (mm)</strong></td>
</tr>
<tr>
<td width="318">K&iacute;ch thước xe : D&agrave;i x Rộng x Cao :</td>
<td width="306">6850 x 2150 x 2450</td>
</tr>
<tr>
<td width="318">K&iacute;ch thước l&ograve;ng th&ugrave;ng h&agrave;ng (hoặc k&iacute;ch thước bao xi t&eacute;c) :</td>
<td width="306">4970 x 2000 x 520/---</td>
</tr>
<tr>
<td width="318">Khoảng c&aacute;ch trục :</td>
<td width="306">3735</td>
</tr>
<tr>
<td width="318">Vết b&aacute;nh xe trước / sau :</td>
<td width="306">1650/1495</td>
</tr>
<tr>
<td width="318">Số trục :</td>
<td width="306">2</td>
</tr>
<tr>
<td width="318">C&ocirc;ng thức b&aacute;nh</td>
<td width="306">4x2</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>TRỌNG LƯỢNG XE TĂNG TẢI HD99(KG)</strong></td>
</tr>
<tr>
<td width="318">Trọng lượng bản th&acirc;n :</td>
<td width="306">3145</td>
</tr>
<tr>
<td width="318">Ph&acirc;n bố : - Cầu trước :</td>
<td width="306">1675</td>
</tr>
<tr>
<td width="318">- Cầu sau :</td>
<td width="306">1470</td>
</tr>
<tr>
<td width="318">Tải trọng cho ph&eacute;p chở :</td>
<td width="306">6650</td>
</tr>
<tr>
<td width="318">Số người cho ph&eacute;p chở :</td>
<td width="306">3</td>
</tr>
<tr>
<td width="318">Trọng lượng to&agrave;n bộ :</td>
<td width="306">9990</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>ĐỘNG CƠ&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-hd99-6-5-tan/" target="_blank" rel="noopener">XE TĂNG TẢI HD99</a></strong></td>
</tr>
<tr>
<td width="318">Nh&atilde;n hiệu động cơ:</td>
<td width="306">D4DB</td>
</tr>
<tr>
<td width="318">Loại động cơ:</td>
<td width="306">4 kỳ, 4 xi lanh thẳng h&agrave;ng, tăng &aacute;p</td>
</tr>
<tr>
<td width="318">Thể t&iacute;ch :</td>
<td width="306">3907 &nbsp;&nbsp; &nbsp;&nbsp; cm3</td>
</tr>
<tr>
<td width="318">C&ocirc;ng suất lớn nhất /tốc độ quay :</td>
<td width="306">96 kW/ 2900 v/ph</td>
</tr>
<tr>
<td width="318">Nhi&ecirc;n liệu sử dụng</td>
<td width="306">Dầu Diesel</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>LỐP XE</strong></td>
</tr>
<tr>
<td width="318">Số lượng lốp tr&ecirc;n trục I/II/III/IV:</td>
<td width="306">02/04/---/---/---</td>
</tr>
<tr>
<td width="318">Lốp trước / sau:</td>
<td width="306">7.50 - 16 /7.50 - 16</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>HỆ THỐNG PHANH</strong></td>
</tr>
<tr>
<td width="318">Phanh trước /Dẫn động :</td>
<td width="306">Tang trống /thuỷ lực trợ lực ch&acirc;n kh&ocirc;ng</td>
</tr>
<tr>
<td width="318">Phanh sau /Dẫn động :</td>
<td width="306">Tang trống /thuỷ lực trợ lực ch&acirc;n kh&ocirc;ng</td>
</tr>
<tr>
<td width="318">Phanh tay /Dẫn động :</td>
<td width="306">T&aacute;c động l&ecirc;n hệ thống truyền lực /Cơ kh&iacute;</td>
</tr>
<tr>
<td colspan="2" width="624"><strong>HỆ THỐNG L&Aacute;I</strong></td>
</tr>
<tr>
<td width="318">Kiểu hệ thống l&aacute;i /Dẫn động :</td>
<td width="306">Trục v&iacute;t - &ecirc; cu bi /Cơ kh&iacute; c&oacute; trợ lực thuỷ lực</td>
</tr>
<tr>
<td width="318"><strong>Ghi ch&uacute;:</strong></td>
<td width="306">H&agrave;ng năm, giấy chứng nhận n&agrave;y được xem x&eacute;t đ&aacute;nh gi&aacute;</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<h2><strong>Ngoại thất&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-hd99-6-5-tan/" target="_blank" rel="noopener">xe tải Hyundai HD99&nbsp;</a>th&ugrave;ng lửng 6,6 tấn:<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/07/hyundai-hd99-.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/07/hyundai-hd99-.jpg" alt="hyundai-hd99-" width="800" height="600" /></a></strong></h2>
<p>Xe tải Hyundai HD99 th&ugrave;ng lửng sở hữu n&eacute;t thiết kế mạnh mẽ đặc th&ugrave; của d&ograve;ng thương hiệu xe tải nhẹ Hyundai.&nbsp; Xe c&oacute; k&iacute;ch thước tổng thể (d&agrave;i x rộng x cao) lần lượt l&agrave;:&nbsp; 6850 x 2150 x 2450 mm. K&iacute;ch thước nhỏ gọn rất ph&ugrave; hợp để vận tải c&aacute;c loại h&agrave;ng h&oacute;a th&ocirc;ng thường.<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/07/hd99-hyundaidocquyen.vn_.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/07/hd99-hyundaidocquyen.vn_.jpg" alt="hd99-hyundaidocquyen.vn" width="800" height="417" /></a>&nbsp;Đầu cabin được nhập khẩu 100% từ H&agrave;n Quốc với khả năng chịu lực, c&aacute;ch nhiệt cao, được sơn cao cấp chống gỉ s&eacute;t. Cabin được thiết kế với g&oacute;c lật 50 độ gi&uacute;p tiếp cận động cơ dễ hơn, g&oacute;c nh&igrave;n ph&iacute;a trước rộng kết hợp với hệ thống đ&egrave;n Halogen s&aacute;ng v&agrave; cụm gương chiếu hậu tầm nh&igrave;n rộng. Lưới tản nhiệt cứng c&aacute;p v&agrave; tho&aacute;ng gi&uacute;p l&agrave;m m&aacute;t động cơ nhanh hơn.<img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/03/%C4%91i%E1%BB%83m-n%E1%BB%95i-b%E1%BA%ADt-c%E1%BB%A7a-hd99.jpg" alt="" width="960" height="249" />&nbsp;Loại th&ugrave;ng lửng được thiết kế k&iacute;ch thước ti&ecirc;u chuẩn của h&atilde;ng với th&ocirc;ng số lọt th&ugrave;ng (d&agrave;i x rộng x cao) lần lượt l&agrave; 4970 x 2000 x 520 mm. Th&acirc;n xe được thiết kế bằng th&eacute;p chịu lực sản xuất với c&ocirc;ng nghệ luyện kim ti&ecirc;n tiến nhất hiện nay, xe c&oacute; khoảng s&aacute;ng gầm rộng, l&agrave; loại xe được n&acirc;ng tải l&ecirc;n 6,6 tấn từ d&ograve;ng HD72 3,5 tấn. Ph&acirc;n bố cầu trước l&agrave; 1,6 tấn; cầu sau 1,4 tấn; xe c&oacute; trọng lượng bản th&acirc;n l&agrave; 3,1 tấn; tải trọng cho ph&eacute;p chở l&agrave; 6,6 tấn.<img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/03/ngo%E1%BA%A1i-th%E1%BA%A5t-hd99.jpg" alt="" width="972" height="527" />&nbsp;Bậc l&ecirc;n xuống rộng kết hợp với cửa cabin c&oacute; g&oacute;c mở rộng rất thuận tiện cho việc di chuyển l&ecirc;n cabin.&nbsp;Xe c&oacute; c&ocirc;ng thức b&aacute;nh l&agrave; 4x2, khoảng c&aacute;ch giữa c&aacute;c trục l&agrave; 3735 mm, sử dụng cỡ lốp loại 7.50 - R16 gi&uacute;p xe chịu tải tốt, tăng độ b&aacute;m đường, đảm bảo an to&agrave;n khi hoạt động tr&ecirc;n tuyến đường trơn. Chỉ số vệt b&aacute;nh trước/sau l&agrave; 1650/1495 mm.</p>
<h2><strong>Nội thất&nbsp;</strong><strong>xe tải Hyundai HD99 th&ugrave;ng lửng 6,6 tấn:</strong></h2>
<p><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/03/n%E1%BB%99i-th%E1%BA%A5t-hd99.jpg" alt="" width="961" height="281" />&nbsp;Xe tải HD99 th&ugrave;ng lửng thừa hưởng thiết kế nội thất của d&ograve;ng xe Hyundai HD72 nhập khẩu với thiết kế sang trọng v&agrave; tiện nghi theo đ&uacute;ng ti&ecirc;u chuẩn Hyundai H&agrave;n Quốc. Kh&ocirc;ng gian nội thất được mở rộng th&ecirc;m 300mm gi&uacute;p người d&ugrave;ng c&oacute; kh&ocirc;ng gian rộng v&agrave; linh hoạt hơn.&nbsp;Đồ nội thất được bọc da cao cấp, ghế ngồi thiết kế rộng r&atilde;i đi k&egrave;m với d&acirc;y đai an to&agrave;n, tay l&aacute;i thuận trợ thủy lực điều chỉnh được l&ecirc;n xuống ph&ugrave; hợp cho từng d&aacute;ng người điều khiển, Pedal được bố tr&iacute; thuận lợi, đem lại sự thuận tiện cho t&agrave;i xế khi vận h&agrave;nh xe.&nbsp;Bảng điều khiển c&ugrave;ng c&aacute;c n&uacute;t chức năng tr&ecirc;n nền taplo được ốp gỗ sang trọng, đồng hồ hiển thị tr&ecirc;n nền đ&egrave;n Led gi&uacute;p người l&aacute;i dễ nh&igrave;n th&ocirc;ng số d&ugrave; l&agrave; ban ng&agrave;y hay ban đ&ecirc;m.<img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/03/hyundai-hd99.jpg" alt="" width="960" height="492" />&nbsp;Ngo&agrave;i ra, kh&ocirc;ng gian nội thất của xe tải HD99 th&ugrave;ng lửng c&ograve;n được trang bị nhiều tiện &iacute;ch như: Ngăn chứa đồ tr&ecirc;n cao rộng r&atilde;i v&agrave; an to&agrave;n khi lưu trữ c&aacute;c loại giấy tờ, vật dụng c&aacute; nh&acirc;n; hệ thống kiểm so&aacute;t kh&ocirc;ng kh&iacute;, d&agrave;n &acirc;m thanh nổi 3D cải tiến, hệ thống m&aacute;y điều h&ograve;a c&ocirc;ng suất cao, kh&oacute;a trung t&acirc;m, tấm chắn gi&oacute;.</p>
<h2>&nbsp;</h2>
<p>Xe tải Hyundai HD99 th&ugrave;ng lửng tải trọng 6,6 tấn l&agrave; d&ograve;ng sản phẩm mang chất lượng thương hiệu đ&aacute;p ứng được nhu cầu vận tải h&agrave;ng h&oacute;a kh&aacute;c nhau cho người sử dụng.</p>
</article>
<div>&nbsp;</div>
<h2><br /><br /></h2>
</body>
</html>', NULL, NULL)
INSERT [dbo].[ProductTechInfo] ([ProductID], [Detail], [CreateBy], [CreateTime]) VALUES (4, N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<article>
<article>
<h2><strong>Th&ocirc;ng số kỹ thuật của xe tải Hyundai HD360:</strong></h2>
<ol style="list-style-type: none;">
<li><strong><em>Loại xe Xe tải</em></strong></li>
</ol>
<p>M&atilde; xe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hyundai HD360&nbsp;Hệ thống l&aacute;i&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tay l&aacute;i thuận c&oacute; trợ lực l&aacute;i LHD&nbsp;Số chỗ ngồi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 02 chỗ&nbsp;Kiểu cabin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cabin c&oacute; giường nằm</p>
<ol style="list-style-type: none;" start="2">
<li><strong><em>K&iacute;ch thước (mm)</em></strong></li>
</ol>
<p>K&iacute;ch thước xe DxRxC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12.200 x 2.500 x 3.500&nbsp;Chiều d&agrave;i cơ sở&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7850mm,&nbsp;Vệt b&aacute;nh xe trước/sau&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2040/1850&nbsp;Khoảng s&aacute;ng gầm xe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 265 mm</p>
<ol style="list-style-type: none;" start="3">
<li><strong><em>Động cơ</em></strong></li>
</ol>
<p>Kiểu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D6AC&nbsp;Loại&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Diesel, 4 kỳ, 6 xilanh thẳng h&agrave;ng, phun nhi&ecirc;n liệu&nbsp;trực tiếp, tubor tăng &aacute;p.&nbsp;Dung t&iacute;ch xilanh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11149/12920 cc&nbsp;C&ocirc;ng suất lớn nhất&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 340Ps/2000 (v&ograve;ng/ph&uacute;t) / 380Ps&nbsp;Momem xoắn lớn nhất&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1450/1.500&nbsp;Ti&ecirc;u chuẩn kh&iacute; thải&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Euro II</p>
<ol style="list-style-type: none;" start="4">
<li><strong><em>An to&agrave;n, tiện nghi</em></strong></li>
</ol>
<p>Cửa sổ điện&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute;&nbsp;D&acirc;y đai an to&agrave;n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute;&nbsp;Điều h&ograve;a cabin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&ocirc;ng suất lớn</p>
<ol style="list-style-type: none;" start="5">
<li><strong><em>Trọng lượng</em></strong></li>
</ol>
<p>Khối lượng bản th&acirc;n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 13.230 Kg</p>
<ol style="list-style-type: none;" start="6">
<li><strong><em>Hệ thống nhi&ecirc;n liệu</em></strong></li>
</ol>
<p>Bơm nhi&ecirc;u liệu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bosch&nbsp;Kiểu bơm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cơ kh&iacute; t&ugrave;y chỉnh theo tốc độ động cơ&nbsp;Lọc nhi&ecirc;n liệu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&agrave;ng lọc dầu th&ocirc; v&agrave; tinh</p>
<ol style="list-style-type: none;" start="7">
<li><strong><em>Hệ thống chuyển động</em></strong></li>
</ol>
<p>Hộp số&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M12S2 x 5/H160S2x5&nbsp;Ly hợp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đĩa đơn, ma s&aacute;t kh&ocirc;, dẫn động thủy lực trợ lực ch&acirc;n kh&ocirc;ng</p>
<ol style="list-style-type: none;" start="8">
<li><strong><em>Hệ thống phanh</em></strong></li>
</ol>
<p>Phanh ch&iacute;nh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kh&iacute; n&eacute;n 2 d&ograve;ng cơ cấu phanh loại tang trống,&nbsp;phanh tay locker</p>
<ol style="list-style-type: none;" start="9">
<li><strong><em>Th&ocirc;ng số kh&aacute;c</em></strong></li>
</ol>
<p>Thể t&iacute;ch b&igrave;nh nhi&ecirc;n liệu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 380 l&iacute;t&nbsp;B&aacute;n k&iacute;nh quay v&ograve;ng nhỏ nhất 11,7(m)&nbsp;Th&ocirc;ng số lốp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12R22.5&nbsp;&nbsp;&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/HD320-C%E1%BA%A8U-SOOSAN-10-T%E1%BA%A4N.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/HD320-C%E1%BA%A8U-SOOSAN-10-T%E1%BA%A4N.jpg" alt="HD320 CẨU SOOSAN 10 TẤN" width="800" height="600" /></a></p>
<hr />
<h2>&nbsp;</h2>
<p>&nbsp;</p>
<h2><strong>Ngoại thất xe tải&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-hyundai-5-chan-hd360-gia-xe-tai-hyundai-5-chan/">Hyundai HD360</a>:</strong></h2>
<p><strong>&nbsp;&nbsp;<a href="http://hyundaidocquyen.vn/san-pham/xe-tai/xe-tai-hyundai-5-chan-hd360-gia-xe-tai-hyundai-5-chan/">&nbsp;Hyundai Hd360</a></strong>&nbsp;c&oacute; k&iacute;ch thước tổng thể (d&agrave;i x rộng x cao) l&agrave; 12200x 2495 x 3140 (mm) c&ugrave;ng khoảng s&aacute;ng gầm xe l&agrave; 265 mm. D&ograve;ng xe mang đầy đủ n&eacute;t đặc trưng của thương hiệu Hyundai như vẫn giữ lại form của thế hệ cũ với lưới tản nhiệt truyền thống. D&ograve;ng xe được cải tiến dựa tr&ecirc;n nền X&aacute;t xi của thế hệ HD320.&nbsp;&nbsp; &nbsp;Cabin thiết kế theo nguy&ecirc;n l&yacute; động học gi&uacute;p tiết kiệm nhi&ecirc;n liệu, đồng thời gi&uacute;p giảm tiếng ồn v&agrave; sức cản của gi&oacute;. G&oacute;c n&acirc;ng cabin rộng.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/xe-t%E1%BA%A3i-5-ch%C3%A2n-hyundai-hd360.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/xe-t%E1%BA%A3i-5-ch%C3%A2n-hyundai-hd360.jpg" alt="xe tải 5 ch&acirc;n hyundai hd360" width="919" height="389" /></a>&nbsp;&nbsp; &nbsp;Việc bổ sung dầu hoặc nước l&agrave;m m&aacute;t trở n&ecirc;n dễ d&agrave;ng v&agrave; thuận tiện hơn nhờ thiết kế nắp capo rộng.&nbsp;&nbsp; &nbsp;Cửa được thiết kế lớn v&agrave; chắc, ốp nhựa cao cấp tạo điểm nhấn trẻ trung, bố tr&iacute; c&aacute;c hộc chứa đồ lớn ở cả 2 cửa xe mang đến sự tiện nghi v&agrave; ngăn n&aacute;p cho người d&ugrave;ng.&nbsp;&nbsp; &nbsp;Hộp cầu ch&igrave; tổng v&agrave; c&aacute;c bộ phận cần được kiểm tra thường xuy&ecirc;n được bố tr&iacute; khoa học trong cabin gi&uacute;p việc kiểm tra v&agrave; bảo dưỡng dễ d&agrave;ng v&agrave; thuận tiện hơn.&nbsp;&nbsp; &nbsp;Hệ thống đ&egrave;n pha halogen chiếu s&aacute;ng trong phạm vi rộng c&ugrave;ng hệ thống cụm đ&egrave;n sương m&ugrave; đảm bảo an to&agrave;n khi vận h&agrave;nh trong điều kiện thời tiết kh&ocirc;ng thuận lơi. B&ecirc;n cạnh đ&oacute;, xe c&ograve;n được trang bị 3 cần gạt mưa.&nbsp;&nbsp; &nbsp;Sử dụng cỡ lốp &nbsp;12 R22.5, loại lốp kh&ocirc;ng săm 16 bố th&eacute;p. Bậc l&ecirc;n xuống bằng gang đ&uacute;c chống trượt. B&igrave;nh nhi&ecirc;n liệu 350 l&iacute;t bằng hợp kim nh&ocirc;m c&oacute; kh&oacute;a bảo vệ.&nbsp;Hệ thống cầu phụ cho ph&eacute;p điều chỉnh l&ecirc;n xuống.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/ngo%E1%BA%A1i-th%E1%BA%A5t-xe-t%E1%BA%A3i-hyundai-5-ch%C3%A2n-hd360.png"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/ngo%E1%BA%A1i-th%E1%BA%A5t-xe-t%E1%BA%A3i-hyundai-5-ch%C3%A2n-hd360.png" alt="ngoại thất xe tải hyundai 5 ch&acirc;n hd360" width="1111" height="395" /></a></p>
<hr />
<h2>&nbsp;</h2>
<p>&nbsp;</p>
<h2><strong>Nội thất xe tải Hyundai HD360:</strong></h2>
<p>&nbsp; &nbsp;X&eacute;t mặt tổng qu&aacute;t, nội thất d&ograve;ng&nbsp;<strong>Hyundai 5 ch&acirc;n HD360</strong>&nbsp;được thiết kế v&ocirc; c&ugrave;ng rộng r&atilde;i mang đến sự thoải m&aacute;i cho người điều khiển. Kh&ocirc;ng gian mang n&eacute;t đặc trưng của c&aacute;c d&ograve;ng xe tải hạng nặng Hyundai với thiết kế đơn giản, trẻ trung, nhưng kh&ocirc;ng k&eacute;m phần sang trọng nhờ c&aacute;c điểm nhấn như thiết kế ghế, v&ocirc; lăng v&agrave; c&aacute;c tấm ốp chi tiết nội thất.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/n%E1%BB%99i-th%E1%BA%A5t-xe-t%E1%BA%A3i-hyundai-3-ch%C3%A2n-hd360.png"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/n%E1%BB%99i-th%E1%BA%A5t-xe-t%E1%BA%A3i-hyundai-3-ch%C3%A2n-hd360.png" alt="nội thất xe tải hyundai 3 ch&acirc;n hd360" width="960" height="365" /></a>&nbsp;&nbsp; &nbsp;Khoang l&aacute;i bố tr&iacute; ghế ngồi c&acirc;n bằng hơi với thiết kế thể thao &ocirc;m trọn lưng, điều chỉnh được 8 hướng kết hợp với d&acirc;y đai an to&agrave;n 6 điểm, khoảng để ch&acirc;n rộng r&atilde;i, cả 2 ghế đều c&oacute; thể điều chỉnh được độ nghi&ecirc;ng tựa lưng v&agrave; gập lại ho&agrave;n to&agrave;n mang đến sự thoải m&aacute;i cho người d&ugrave;ng. Ngo&agrave;i ra xe c&ograve;n được trang bị 1 giường nằm ph&iacute;a sau ghế l&aacute;i với kh&ocirc;ng gian tho&aacute;ng m&aacute;t. Gi&uacute;p t&agrave;i xế nghỉ ngơi thoải m&aacute;i trong những h&agrave;nh tr&igrave;nh d&agrave;i.&nbsp;Trần xe được thiết kế cao hơn so với c&aacute;c d&ograve;ng xe kh&aacute;c.&nbsp;Cabin trang bị hệ thống giảm s&oacute;c, c&aacute;c l&ograve; xo nh&iacute;p l&aacute;.&nbsp;&nbsp; &nbsp;Bảng điều khiển được bố tr&iacute; tập trung quanh người l&aacute;i, c&ugrave;ng với đồng hồ hiển thị đa chức năng tr&ecirc;n t&aacute;p l&ocirc; ở vị tr&iacute; dễ quan s&aacute;t, đảm bảo an to&agrave;n cho t&agrave;i xế khi vận h&agrave;nh xe. Đồng thời c&aacute;c b&agrave;n đạp được thiết kế dạng treo gi&uacute;p giảm tối đa sự mệt mỏi khi điều khiển xe đường trường.&nbsp;<strong>&nbsp; &nbsp;Xe tải 5 ch&acirc;n Hyundai HD360</strong>&nbsp;c&ograve;n được trang bị hệ thống điều h&ograve;a tự động c&ocirc;ng suất lớn, hệ thống d&agrave;n &acirc;m thanh cao cấp, c&ugrave;ng cổng kết nối USB cho c&aacute;c thiết bị ngoại vi.&nbsp;Tay l&aacute;i trợ lực, gập g&ugrave; điều chỉnh được độ cao thấp cho ph&ugrave; hợp với từng d&aacute;ng người điều khiển.</p>
<hr />
<p>&nbsp; &nbsp;&nbsp;<strong>Động cơ xe tải Hyundai HD360:</strong>&nbsp;<strong>&nbsp; &nbsp;Xe tải Hyundai 5 ch&acirc;n HD360</strong>&nbsp;được trang bị động cơ Diesel tăng &aacute;p turbo, l&agrave;m m&aacute;t bằng nước, 4 kỳ, 6 xy lanh thẳng h&agrave;ng.&nbsp;&nbsp; &nbsp;D&ograve;ng&nbsp;<strong>Hyundai HD360</strong>&nbsp;ở thị trường Việt Nam mang 2 phi&ecirc;n bản động cơ: phi&ecirc;n bản sử dụng động cơ D6AC, c&ocirc;ng suất 340Ps, dung t&iacute;ch xy lanh 11149 cc v&agrave; phi&ecirc;n bản sử dụng động cơ D6AC, c&ocirc;ng suất 380Ps, dung t&iacute;ch xy lanh 12920 cc.&nbsp;&nbsp; &nbsp;Động cơ D6AC với hệ thống phun nhi&ecirc;n liệu trực tiếp cho c&ocirc;ng suất 380Ps kết hợp moment xoắn tối đa ph&ugrave; hợp với y&ecirc;u cầu tải trọng cao. Kết hợp với Turbo tăng &aacute;p tối ưu h&oacute;a qu&aacute; tr&igrave;nh đốt nhi&ecirc;n liệu, l&agrave;m giảm kh&iacute; thải v&agrave; tăng hiệu quả sử dụng động cơ. Ngo&agrave;i ra,&nbsp;<strong>HD360</strong>&nbsp;c&ograve;n được trang bị hệ thống bơm dầu bơi trơn nhằm giảm m&ograve;n v&agrave; tăng độ bền cho động cơ.&nbsp;<a href="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/412305597640.jpg"><img src="http://hyundaidocquyen.vn/wp-content/uploads/2017/06/412305597640.jpg" alt="xe bồn chở xăng dầu 5 ch&acirc;n" width="960" height="540" /></a>&nbsp;&nbsp; &nbsp;D&ograve;ng xe trang bị phi&ecirc;n bản động cơ D6AC c&ocirc;ng suất 340Ps th&igrave; được trang bị hộp số M12S2 x 5. Phi&ecirc;n bản mang động cơ D6AC, c&ocirc;ng suất 380Ps được trang bị hộp số H160S2 với 10 số tiến v&agrave; 2 số l&ugrave;i. Mang đến sự linh hoạt cho việc lựa chọn khả năng vận h&agrave;nh đối với t&igrave;nh trạng giao th&ocirc;ng phức tạp tại Việt Nam.</p>
<h2>&nbsp;</h2>
<hr />
<h2>&nbsp;</h2>
<h2><strong>&nbsp; &nbsp;Gi&aacute; xe Hyundai 5 ch&acirc;n HD360 l&agrave;&nbsp;2.080.000.000&nbsp;- một mức đầu tư hợp l&yacute; cho một sản phẩm đem lại hiệu năng cao cho nh&agrave; đầu tư</strong></h2>
<p>&nbsp; &nbsp;Mức gi&aacute; của Hyundai HD360 ho&agrave;n to&agrave;n hợp l&yacute;, ph&ugrave; hợp với nhu cầu vận tải lớn của c&aacute;c doanh nghiệp v&agrave; c&aacute;c nh&agrave; đầu tư. Đ&acirc;y cũng l&agrave; một trong số c&aacute;c sản phẩm d&ograve;ng xe tải được thiết kế theo c&ocirc;ng nghệ ti&ecirc;n tiến nhất đảm bảo khả năng vận tải lớn nhất. Việc lựa chọn sử dụng v&agrave; đầu tư v&agrave;o d&ograve;ng xe n&agrave;y l&agrave; sự lựa chọn s&aacute;ng suất.&nbsp;<strong>&nbsp;</strong>&nbsp;<strong>&nbsp;</strong></p>
</article>
<div>&nbsp;</div>
<p><br /><br /></p>
</article>
</body>
</html>', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Relative] ON 

INSERT [dbo].[Relative] ([RelativeID], [ProductID], [NewsID], [Status], [Title], [Description]) VALUES (1, 1, 1, 1, N'HD360 Cấu hình siêu mạnh', N'HD360 seo link internal')
SET IDENTITY_INSERT [dbo].[Relative] OFF
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestID], [PhoneNumber], [Name], [Address], [Email], [Note], [ProductID]) VALUES (1, N'0354624774', N'Võ Minh Luân', N'Thuận Giao Bình Dương', N'Luanvo1ad@gmail.com', N'Tôi muốn tư vấn sản phẩm này.', 1)
INSERT [dbo].[Request] ([RequestID], [PhoneNumber], [Name], [Address], [Email], [Note], [ProductID]) VALUES (2, N'0164848151', N'Nguyễn hải my', N'Bình Dương', N'mynguyen1asd@gmail.com', N'I want to more imformation', 2)
SET IDENTITY_INSERT [dbo].[Request] OFF
INSERT [dbo].[User] ([UserID], [Password], [Status], [Avatar], [FullName]) VALUES (N'admin', N'1', 1, NULL, N'Luân đẹp trai')
SET IDENTITY_INSERT [dbo].[Website] ON 

INSERT [dbo].[Website] ([WebsiteID], [WebsiteName], [WebsiteFavicon], [WebsiteIcon], [Address], [Description], [WebsiteDetail], [Hotline], [Email], [Map], [Facebook], [Zalo], [FacebookID], [Status]) VALUES (1, N'Hyun dai', NULL, NULL, N'888 Đại Lộ Bình Dương', N'Chúng tôi là công ty abcxz', N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1>Giới thiệu</h1>
<article>
<p>Lời đầu ti&ecirc;n, xin gửi đến qu&yacute; kh&aacute;ch h&agrave;ng lời c&aacute;m ơn ch&acirc;n th&agrave;nh nhất v&agrave; ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng gặt h&aacute;i được nhiều th&agrave;nh c&ocirc;ng tr&ecirc;n con đường kinh doanh.</p>
<p>Đ&oacute; l&agrave; tiền đề cho sự ph&aacute;t triển bền vững của&nbsp;<strong>Hyundai Xa Lộ</strong>. Tất cả sản phẩm v&agrave; dịch vụ của c&ocirc;ng ty đều hướng đến gi&aacute; trị lợi &iacute;ch của kh&aacute;ch h&agrave;ng. Để thực hiện được điều đ&oacute;, tập thể&nbsp;<strong>Hyundai Xa Lộ</strong>&nbsp;ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực kh&ocirc;ng ngừng để đem lại cho qu&yacute; kh&aacute;ch h&agrave;ng sự h&agrave;i l&ograve;ng nhất.</p>
<p>Với lợi thế l&agrave; đại l&iacute; 3S ủy quyền&nbsp;của Hyundai Th&agrave;nh C&ocirc;ng,&nbsp;<strong>Hyundai Xa Lộ</strong>&nbsp;lu&ocirc;n dẫn đầu thị trường về cung cấp c&aacute;c d&ograve;ng xe thương mại Hyundai nhập khẩu với chất lượng tốt nhất v&agrave; gi&aacute; cả ph&ugrave; hợp nhất. Dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng sau khi b&aacute;n của&nbsp;<strong>Hyundai Xa Lộ</strong>&nbsp;lu&ocirc;n được ch&uacute; trọng h&agrave;ng đầu v&agrave; được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao.</p>
<p>Hiện nay,&nbsp;<strong>Hyundai Xa Lộ</strong>&nbsp;đang cung cấp ra thị trường cả nước c&aacute;c d&ograve;ng xe tải, xe đầu k&eacute;o, xe trộn, xe ben v&agrave; c&aacute;c d&ograve;ng xe chuy&ecirc;n dụng. B&ecirc;n cạnh đ&oacute;, ch&uacute;ng t&ocirc;i cung cấp k&egrave;m theo dịch vụ đ&oacute;ng th&ugrave;ng, đ&oacute;ng bồn, gắn cẩu theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch h&agrave;ng..</p>
<p>Bằng cả tấm l&ograve;ng v&agrave; sự nhiệt huyết,&nbsp;<strong>Hyundai Xa Lộ</strong>&nbsp;tin rằng qu&yacute; kh&aacute;ch h&agrave;ng sẽ lu&ocirc;n mở rộng v&ograve;ng tay hợp t&aacute;c để ng&agrave;y c&agrave;ng xiết chặt mối quan hệ đ&ocirc;i b&ecirc;n. Đ&oacute; cũng ch&iacute;nh l&agrave; th&ocirc;ng điệp m&agrave;&nbsp;<strong>Hyundai Xa Lộ</strong>&nbsp;muốn chia sẻ v&agrave; tri &acirc;n qu&yacute; kh&aacute;ch h&agrave;ng gần xa.</p>
<p>Tr&acirc;n trọng k&iacute;nh ch&agrave;o!</p>
<p><strong>TH&Ocirc;NG TIN CHUNG</strong></p>
<p><strong>T&ecirc;n c&ocirc;ng ty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; C&Ocirc;NG TY TNHH PH&Aacute;T TRIỂN X&Acirc;Y DỰNG V&Agrave; THƯƠNG MẠI ( HYUNDAI XA LỘ)</strong></p>
<p><strong>T&ecirc;n tiếng Anh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;Development for Constructional and Commerce Co., Ltd</strong></p>
<p><strong>T&ecirc;n viết tắt &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:&nbsp;DCC CO., LTD</strong></p>
<p><strong>Gi&aacute;m đốc &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:&nbsp; B&agrave;&nbsp;&nbsp;Nguyễn Kim Cương</strong></p>
<p><strong>Địa chỉ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp;Tổ 24, Thị trấn Đ&ocirc;ng Anh, Huyện Đ&ocirc;ng Anh, Th&agrave;nh phố H&agrave; Nội​</strong></p>
<p><strong>Điện thoại &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp;</strong>&nbsp;0961 927 493&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Fax : &nbsp;0613 931 888</p>
<p><strong>Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:&nbsp; letuancanh.997@gmail.com</strong></p>
<h2>CHẾ ĐỘ BẢO H&Agrave;NH &Ocirc; T&Ocirc; HYUNDAI tại HYUNDAI XA LỘ</h2>
<p><strong><span style="box-sizing: content-box; text-decoration: underline;">1/ Bước 1:</span></strong>&nbsp;Sau khi đ&agrave;m ph&aacute;n th&agrave;nh c&ocirc;ng về thương vụ mua b&aacute;n xe c&aacute;c c&ocirc;ng việc kế tiếp giữa nh&agrave; ph&acirc;n phối v&agrave; kh&aacute;ch h&agrave;ng được thực hiện như sau</p>
<p><strong>Đối với Đại l&yacute;</strong></p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cấp sổ bảo h&agrave;nh &ocirc; t&ocirc; hyundai v&agrave; s&aacute;ch hướng dẫn vận h&agrave;nh, k&egrave;m theo danh s&aacute;ch trạm dịch vụ bảo h&agrave;nh của Hyundai tr&ecirc;n l&atilde;nh thổ Việt Nam.</p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kiểm tra kỹ thuật xe trước khi b&agrave;n giao xe cho kh&aacute;ch h&agrave;ng.</p>
<p><strong>Đối với kh&aacute;ch h&agrave;ng l&agrave; c&aacute;c c&ocirc;ng ty thương mại:</strong></p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cấp sổ bảo h&agrave;nh &ocirc; t&ocirc; Hyundai k&egrave;m theo danh s&aacute;ch trạm dịch vụ bảo h&agrave;nh của Hyundai tr&ecirc;n l&atilde;nh thổ Việt Nam.</p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kiểm tra kỹ thuật xe trước khi b&agrave;n giao xe cho kh&aacute;ch h&agrave;ng (ghi đầy đủ th&ocirc;ng tin kh&aacute;ch h&agrave;ng (c&ocirc;ng ty thương mại) v&agrave;o trong sổ bảo h&agrave;nh: kiểu, đời xe, số khung, số m&aacute;y, ng&agrave;y giao xe v&agrave;&nbsp;<strong>đ&oacute;ng dấu</strong>) Hướng dẫn kh&aacute;ch h&agrave;ng l&agrave;m thủ tục chuyển quyền đứng t&ecirc;n phương tiện trong sổ bảo h&agrave;nh cho kh&aacute;ch h&agrave;ng sau khi b&agrave;n giao xe.</p>
<p><strong>Đối với Kh&aacute;ch h&agrave;ng</strong></p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cử người c&aacute;n bộ quản l&yacute; xe hoặc l&aacute;i xe tiếp nhận v&agrave; nắm bắt đầy đủ th&ocirc;ng tin về vận h&agrave;nh, nguy&ecirc;n tắc v&agrave; chế độ bảo dưỡng định kỳ trong thời gian đầu sử dụng xe.</p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&aacute;c nhận cam kết sử dụng, bảo dưỡng v&agrave; tu&acirc;n thủ nghiệm ngặt c&aacute;c điều kiện bảo h&agrave;nh của nh&agrave; m&aacute;y Hyundai (ghi đầy đủ th&ocirc;ng tin t&ecirc;n người mua, số khung, số m&aacute;y, ng&agrave;y giao xe v&agrave;&nbsp;<strong>đ&oacute;ng dấu</strong>) v&agrave; k&yacute; x&aacute;c nhận v&agrave;o sổ bảo h&agrave;nh.)</p>
<p><strong><span style="box-sizing: content-box; text-decoration: underline;">2/ Bước 2:</span></strong></p>
<p><strong>Đối với Kh&aacute;ch h&agrave;ng</strong></p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sau khi x&aacute;c nhận v&agrave;o sổ bảo h&agrave;nh, photo 2 bản v&agrave; gửi lại cho Đại l&yacute; để được lưu trữ th&ocirc;ng tin (01 bản lưu tại c&ocirc;ng ty, 01 gửi cho đại l&yacute; (nếu c&oacute;))</p>
<p><strong><span style="box-sizing: content-box; text-decoration: underline;">3/ Bước 3</span></strong><strong>:</strong><em>&nbsp;</em><em>Khi xảy ra sự cố kỹ thuật</em></p>
<p><strong>Đối với Kh&aacute;ch h&agrave;ng</strong></p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Căn cứ v&agrave;o danh s&aacute;ch c&aacute;c trạm dịch vụ ủy quyền của tổng đại l&yacute; ph&acirc;n phối, li&ecirc;n hệ ngay với trạm dịch vụ gần nhất khi xe gặp vấn đề để được tư vấn giải quyết t&igrave;nh huống.</p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đưa xe đến trạm bảo h&agrave;nh gần nhất để được hướng dẫn chế độ &aacute;p dụng bảo h&agrave;nh theo quy định.</p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tuyệt đối kh&ocirc;ng được tự &yacute; th&aacute;o rời v&agrave; sữa chửa (v&igrave; đ&acirc;y l&agrave; quyền lợi của kh&aacute;ch h&agrave;ng.)</p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Xuất tr&igrave;nh sổ chứng nhận bảo h&agrave;nh do đại l&yacute; cấp cho trạm dịch vụ ủy quyền để được bảo h&agrave;nh.</p>
<p>&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Nếu trong qu&aacute; tr&igrave;nh xe được bảo tr&igrave; bảo dưỡng m&agrave; trạm dịch vụ g&acirc;y kh&oacute; dễ, bất hợp t&aacute;c hoặc g&acirc;y sai phạm, mọi &yacute; kiến đ&oacute;ng g&oacute;p ph&agrave;n n&agrave;n xin gọi hoặc gửi về tổng đại l&yacute; ph&acirc;n phối để được tư vấn giải quyết, khắc phục vấn đề, đảm bảo quyền lợi cho người sử dụng.</em></p>
<p><em>&nbsp;</em><strong>&nbsp;BẢO DƯỠNG MIỄN PH&Iacute;</strong><br />Sau khi đưa xe v&agrave;o khai th&aacute;c sử dụng tại c&aacute;c thời điểm h&agrave;nh tr&igrave;nh đi được 1.000 km, 5.000 km v&agrave; 10.000 km đầu ti&ecirc;n, Qu&yacute; kh&aacute;ch cần thiết phải mang xe đến trạm dịch vụ của ch&uacute;ng t&ocirc;i để được kiểm tra v&agrave; bảo dưỡng.<br />Trong những lần kiểm tra bảo dưỡng tr&ecirc;n Qu&yacute; kh&aacute;ch được miễn chi ph&iacute; tiền c&ocirc;ng.<br />Ngo&agrave;i ra Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n tiền c&aacute;c vật tư cho c&ocirc;ng việc bảo dưỡng như :<br />&ndash; Nhớt động cơ<br />&ndash; Lọc nhớt động cơ<br />&ndash; Lọc nhi&ecirc;n liệu<br />&ndash; Lọc gi&oacute; .v.v..<br />Những vật tư kể tr&ecirc;n phục vụ cho c&ocirc;ng t&aacute;c bảo dưỡng&nbsp; theo định kỳ được nh&agrave; sản xuất khuyến c&aacute;o cần được thực hiện để xe của Qu&yacute; kh&aacute;ch hoạt động lu&ocirc;n được tốt, bền v&agrave; hiệu quả hơn .</p>
<p><strong>C&Ocirc;NG VIỆC KIỂM TRA HẰNG NG&Agrave;Y</strong></p>
<ul style="list-style-type: none;">
<li style="list-style-type: disc;">Mức nhi&ecirc;n liệu, t&igrave;nh trạng, sự r&ograve; rỉ: Chất giải nhiệt động cơ, dầu động cơ, dầu hộp số, dầu trợ lực phanh, bơm dầu trợ lực l&aacute;i, dầu ly hợp (d&ugrave;ng cho hệ thống thủy lực)</li>
<li style="list-style-type: disc;">Lốp xe: Kiểm tra &aacute;p suất lốp, độ m&ograve;n hoặc hỏng h&oacute;c.</li>
<li style="list-style-type: disc;">Thiết bị hoạt động: Hệ thống đ&egrave;n, k&egrave;n, phanh dừng, hệ thống l&aacute;i, b&agrave;n đạp ly hợp, b&agrave;n đạp phanh.</li>
<li style="list-style-type: disc;">Hệ lưu dẫn: Kiểm tra bộ phận t&aacute;ch nước v&agrave; ống dẫn lưu nếu cần thiết.</li>
</ul>
<p><strong>KIỂM TRA ĐỊNH KỲ</strong>: &nbsp;1.000KM, 5.000KM, 10.000KM, 20.000KM, 30.000KM, 40.000KM, 50.000KM, 60.000KM, 70.000KM, 80.000KM, 90.000KM, 100.000KM.</p>
<p><strong>PHỤ T&Ugrave;NG HYUNDAI NHẬP KHẨU CH&Iacute;NH H&Atilde;NG</strong></p>
<p>Để đ&aacute;p ứng nhu cầu sửa chữa, thay mới của kh&aacute;ch h&agrave;ng, đại l&yacute;<strong>&nbsp;Hyundai Xa Lộ</strong>&nbsp;cung cấp c&aacute;c mặt h&agrave;ng phụ t&ugrave;ng Hyundai ch&iacute;nh h&atilde;ng nhập khẩu từ H&agrave;n Quốc với chất lượng đảm bảo. Phụ t&ugrave;ng được cung cấp nhanh ch&oacute;ng phục vụ nhu cầu sửa chữa, bảo h&agrave;nh, bảo dưỡng cho kh&aacute;ch h&agrave;ng.</p>
<p>&nbsp;</p>
<p>Xem th&ecirc;m hệ thống đại l&yacute; của Hyundai tr&ecirc;n to&agrave;n quốc&nbsp;<a href="http://hyundaidocquyen.vn/he-thong-dai-ly/" target="_blank" rel="noopener">tại đ&acirc;y</a>.</p>
</article>
</body>
</html>', N'0354624774', N'Luanvo1ad@gmail.com', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3917.6086917045027!2d106.85901821411754!3d10.917314359564266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174dfa1a833929b%3A0x8e9222814b1cd12!2zxJDhuqFpIEzDvSBYZSBUaMawxqFuZyBN4bqhaSBIeXVuZGFpIFhhIEzhu5k!5e0!3m2!1svi!2s!4v1604911227427!5m2!1svi!2s', N'https://www.facebook.com/naulcoc/', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Website] OFF
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_MainCategory] FOREIGN KEY([MainCategoryID])
REFERENCES [dbo].[MainCategory] ([MainCategoryID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_MainCategory]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsCategory] FOREIGN KEY([NewsCategoryID])
REFERENCES [dbo].[NewsCategory] ([NewsCategoryID])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_NewsCategory]
GO
ALTER TABLE [dbo].[NewsCategory]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategory_NewsMainCategory] FOREIGN KEY([NewsMainCategoryID])
REFERENCES [dbo].[NewsMainCategory] ([NewsMainCategoryID])
GO
ALTER TABLE [dbo].[NewsCategory] CHECK CONSTRAINT [FK_NewsCategory_NewsMainCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductCost]  WITH CHECK ADD  CONSTRAINT [FK_ProductCost_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductCost] CHECK CONSTRAINT [FK_ProductCost_Product]
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDetail] CHECK CONSTRAINT [FK_ProductDetail_Product]
GO
ALTER TABLE [dbo].[ProductPreview]  WITH CHECK ADD  CONSTRAINT [FK_ProductPreview_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductPreview] CHECK CONSTRAINT [FK_ProductPreview_Product]
GO
ALTER TABLE [dbo].[ProductRelative]  WITH CHECK ADD  CONSTRAINT [FK_ProductRelative_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductRelative] CHECK CONSTRAINT [FK_ProductRelative_Product]
GO
ALTER TABLE [dbo].[ProductTechInfo]  WITH CHECK ADD  CONSTRAINT [FK_ProductTechInfo_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductTechInfo] CHECK CONSTRAINT [FK_ProductTechInfo_Product]
GO
ALTER TABLE [dbo].[Relative]  WITH CHECK ADD  CONSTRAINT [FK_Relative_News] FOREIGN KEY([NewsID])
REFERENCES [dbo].[News] ([NewsID])
GO
ALTER TABLE [dbo].[Relative] CHECK CONSTRAINT [FK_Relative_News]
GO
ALTER TABLE [dbo].[Relative]  WITH CHECK ADD  CONSTRAINT [FK_Relative_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Relative] CHECK CONSTRAINT [FK_Relative_Product]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Product]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'this is table of product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductRelative'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is relative of news and product for seo page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relative'
GO
