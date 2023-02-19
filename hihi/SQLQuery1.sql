USE [GomSuBatTrang]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[password] [varchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Requestcode] [nvarchar](100) NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[Avatar] [nvarchar](500) NULL,
	[Dateofbirth] [datetime] NOT NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[create_by] [nvarchar](100) NULL,
	[create_at] [datetime] NOT NULL,
	[update_by] [nvarchar](100) NULL,
	[update_at] [datetime] NOT NULL,
	[expired_at] [datetime] NOT NULL,
	[status] [char](1) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_dbo.Account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Address]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Address](
	[account_address_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[account_address_phonenumber] [nvarchar](10) NULL,
	[account_address_username] [nvarchar](20) NULL,
	[province_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[ward_id] [int] NOT NULL,
	[account_address_content] [nvarchar](50) NULL,
	[account_address_default] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Account_Address] PRIMARY KEY CLUSTERED 
(
	[account_address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[API_Key]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[API_Key](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[client_id] [nvarchar](500) NULL,
	[client_secret] [nvarchar](500) NULL,
	[Return_Url] [nvarchar](200) NULL,
	[active] [bit] NOT NULL,
	[update_at] [datetime] NOT NULL,
	[api_name] [nvarchar](100) NULL,
	[api_decription] [nvarchar](300) NULL,
 CONSTRAINT [PK_dbo.API_Key] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[banner_id] [int] IDENTITY(1,1) NOT NULL,
	[banner_name] [nvarchar](200) NOT NULL,
	[slug] [nvarchar](209) NULL,
	[banner_start] [datetime] NOT NULL,
	[banner_end] [datetime] NOT NULL,
	[description] [nvarchar](100) NULL,
	[image_thumbnail] [nvarchar](500) NOT NULL,
	[status] [char](1) NULL,
	[create_by] [varchar](100) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[banner_type] [int] NOT NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Banner] PRIMARY KEY CLUSTERED 
(
	[banner_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner_Detail]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner_Detail](
	[banner_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [char](1) NULL,
	[create_by] [varchar](100) NOT NULL,
	[create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Banner_Detail] PRIMARY KEY CLUSTERED 
(
	[banner_id] ASC,
	[product_id] ASC,
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [nvarchar](100) NOT NULL,
	[brand_image] [nvarchar](500) NULL,
	[slug] [nvarchar](109) NULL,
	[description] [nvarchar](200) NULL,
	[Web_directory] [nvarchar](200) NULL,
	[status] [char](1) NULL,
	[create_by] [varchar](100) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NULL,
 CONSTRAINT [PK_dbo.Brand] PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChildCategory]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildCategory](
	[childcategory_id] [int] IDENTITY(1,1) NOT NULL,
	[parentcategory_id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[slug] [nvarchar](150) NOT NULL,
	[image] [nvarchar](500) NOT NULL,
	[image2] [nvarchar](500) NOT NULL,
	[description] [nvarchar](100) NULL,
	[create_at] [datetime] NOT NULL,
	[update_at] [datetime] NOT NULL,
	[create_by] [nvarchar](100) NULL,
	[update_by] [nvarchar](100) NULL,
	[status] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.ChildCategory] PRIMARY KEY CLUSTERED 
(
	[childcategory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentLikes]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentLikes](
	[comment_like_id] [int] IDENTITY(1,1) NOT NULL,
	[comment_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[comment_like] [nvarchar](1) NULL,
	[create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CommentLikes] PRIMARY KEY CLUSTERED 
(
	[comment_like_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](10) NULL,
	[email] [nvarchar](100) NOT NULL,
	[content] [nvarchar](200) NOT NULL,
	[image] [nvarchar](500) NULL,
	[reply] [nvarchar](max) NULL,
	[flag] [int] NOT NULL,
	[status] [nvarchar](1) NOT NULL,
	[create_by] [nvarchar](100) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[delivery_id] [int] IDENTITY(1,1) NOT NULL,
	[delivery_name] [nvarchar](100) NOT NULL,
	[price] [money] NOT NULL,
	[create_at] [datetime] NOT NULL,
	[create_by] [varchar](100) NOT NULL,
	[status] [char](1) NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Delivery] PRIMARY KEY CLUSTERED 
(
	[delivery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[disscount_id] [int] IDENTITY(1,1) NOT NULL,
	[discount_name] [nvarchar](200) NOT NULL,
	[discount_start] [datetime] NOT NULL,
	[discount_end] [datetime] NOT NULL,
	[discount_price] [float] NOT NULL,
	[discount_max] [float] NOT NULL,
	[discounts_code] [varchar](20) NULL,
	[discounts_type] [int] NOT NULL,
	[create_at] [datetime] NOT NULL,
	[create_by] [varchar](100) NOT NULL,
	[status] [char](1) NULL,
	[discount_global] [nvarchar](1) NULL,
	[quantity] [nvarchar](10) NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Discount] PRIMARY KEY CLUSTERED 
(
	[disscount_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[province_id] [int] NOT NULL,
	[district_name] [nvarchar](50) NOT NULL,
	[type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Districts] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
	[parent_feedback_id] [int] NOT NULL,
	[description] [nvarchar](200) NULL,
	[rate_star] [int] NOT NULL,
	[create_at] [datetime] NOT NULL,
	[create_by] [varchar](100) NOT NULL,
	[status] [char](1) NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC,
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback_Image]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback_Image](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[feedback_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[image] [text] NULL,
	[create_at] [datetime] NOT NULL,
	[create_by] [varchar](20) NOT NULL,
	[status] [char](1) NULL,
	[update_by] [nvarchar](20) NOT NULL,
	[update_at] [datetime] NULL,
 CONSTRAINT [PK_dbo.Feedback_Image] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[genre_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_genre_id] [int] NOT NULL,
	[genre_name] [nvarchar](100) NOT NULL,
	[slug] [nvarchar](109) NULL,
	[genre_image] [nvarchar](500) NULL,
	[description] [nvarchar](200) NULL,
	[status] [char](1) NULL,
	[create_at] [datetime] NOT NULL,
	[create_by] [varchar](100) NOT NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Genre] PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[childcategory_id] [int] NOT NULL,
	[news_title] [nvarchar](500) NOT NULL,
	[meta_title] [nvarchar](150) NOT NULL,
	[slug] [nvarchar](159) NOT NULL,
	[news_content] [nvarchar](max) NOT NULL,
	[ViewCount] [int] NOT NULL,
	[image] [nvarchar](500) NOT NULL,
	[image2] [nvarchar](500) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[update_at] [datetime] NOT NULL,
	[update_by] [nvarchar](100) NULL,
	[status] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.News] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsComments]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsComments](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[news_id] [int] NOT NULL,
	[comment_content] [nvarchar](500) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[status] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.NewsComments] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsProducts]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsProducts](
	[news_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.NewsProducts] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsTags]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsTags](
	[news_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.NewsTags] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC,
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_address_id] [int] NOT NULL,
	[payment_id] [int] NOT NULL,
	[delivery_id] [int] NOT NULL,
	[oder_date] [datetime] NOT NULL,
	[account_id] [int] NOT NULL,
	[payment_transaction] [nvarchar](1) NULL,
	[status] [char](1) NULL,
	[order_note] [nvarchar](200) NULL,
	[create_at] [datetime] NOT NULL,
	[total] [float] NOT NULL,
	[create_by] [varchar](100) NOT NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[product_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[price] [float] NOT NULL,
	[status] [char](1) NULL,
	[discount_code] [nvarchar](20) NULL,
	[quantity] [int] NOT NULL,
	[create_by] [varchar](100) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Order_Detail] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[genre_id] ASC,
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderAddress]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderAddress](
	[order_address_id] [int] IDENTITY(1,1) NOT NULL,
	[order_address_phonenumber] [nvarchar](10) NULL,
	[order_address_username] [nvarchar](20) NULL,
	[order_adress_email] [nvarchar](100) NULL,
	[order_address_content] [nvarchar](150) NULL,
	[times_edit_adress] [int] NOT NULL,
	[order_adress_province] [nvarchar](50) NULL,
	[order_adress_district] [nvarchar](50) NULL,
	[order_adress_wards] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.OrderAddress] PRIMARY KEY CLUSTERED 
(
	[order_address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentCategory]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentCategory](
	[parentcategory_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[slug] [nvarchar](109) NOT NULL,
	[image] [nvarchar](500) NOT NULL,
	[image2] [nvarchar](500) NOT NULL,
	[category_description] [nvarchar](100) NULL,
	[create_at] [datetime] NOT NULL,
	[update_at] [datetime] NOT NULL,
	[create_by] [nvarchar](100) NULL,
	[update_by] [nvarchar](100) NULL,
	[status] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.ParentCategory] PRIMARY KEY CLUSTERED 
(
	[parentcategory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentGenres]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentGenres](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[slug] [nvarchar](159) NULL,
	[icon] [nvarchar](20) NULL,
	[image] [nvarchar](500) NULL,
	[description] [nvarchar](200) NULL,
	[status] [nvarchar](1) NULL,
	[create_at] [datetime] NOT NULL,
	[create_by] [nvarchar](100) NOT NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ParentGenres] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_name] [nvarchar](100) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[create_by] [varchar](100) NOT NULL,
	[status] [char](1) NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[Exchange_rates] [nvarchar](30) NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Payment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[permission_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_name] [nvarchar](50) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Permissions] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[genre_id] [int] NOT NULL,
	[brand_id] [int] NOT NULL,
	[disscount_id] [int] NOT NULL,
	[product_name] [nvarchar](200) NOT NULL,
	[title_seo] [nvarchar](150) NOT NULL,
	[slug] [nvarchar](159) NULL,
	[price] [float] NOT NULL,
	[view] [bigint] NOT NULL,
	[buyturn] [bigint] NOT NULL,
	[quantity] [char](10) NOT NULL,
	[status] [char](1) NULL,
	[create_by] [varchar](100) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[updateby] [nvarchar](100) NULL,
	[update_at] [datetime] NOT NULL,
	[image] [nvarchar](500) NULL,
	[description] [nvarchar](max) NULL,
	[specification] [nvarchar](max) NULL,
	[taxes_id] [int] NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Image]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Image](
	[product_image_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
	[image_1] [nvarchar](500) NULL,
	[image_2] [nvarchar](500) NULL,
	[image_3] [nvarchar](500) NULL,
	[image_4] [nvarchar](500) NULL,
	[image_5] [nvarchar](500) NULL,
	[status] [nvarchar](1) NULL,
	[create_by] [nvarchar](100) NULL,
	[update_by] [nvarchar](100) NULL,
	[create_at] [datetime] NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Product_Image] PRIMARY KEY CLUSTERED 
(
	[product_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[province_id] [int] IDENTITY(1,1) NOT NULL,
	[province_name] [nvarchar](50) NOT NULL,
	[type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Provinces] PRIMARY KEY CLUSTERED 
(
	[province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reply_Comments]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply_Comments](
	[reply_comment_id] [int] IDENTITY(1,1) NOT NULL,
	[comment_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[reply_comment_content] [nvarchar](500) NULL,
	[create_at] [datetime] NOT NULL,
	[status] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.Reply_Comments] PRIMARY KEY CLUSTERED 
(
	[reply_comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReplyCommentLikes]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyCommentLikes](
	[reply_like_id] [int] IDENTITY(1,1) NOT NULL,
	[reply_comment_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[reply_like] [nvarchar](1) NULL,
	[create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ReplyCommentLikes] PRIMARY KEY CLUSTERED 
(
	[reply_like_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesPermissions]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesPermissions](
	[role_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RolesPermissions] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StickyPost]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StickyPost](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[news_id] [int] NOT NULL,
	[create_by] [nvarchar](100) NOT NULL,
	[update_by] [nvarchar](100) NOT NULL,
	[sticky_start] [datetime] NOT NULL,
	[sticky_end] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.StickyPost] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[tag_id] [int] IDENTITY(1,1) NOT NULL,
	[tag_name] [nvarchar](100) NOT NULL,
	[slug] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Tags] PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taxes]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taxes](
	[taxes_id] [int] IDENTITY(1,1) NOT NULL,
	[taxes_name] [nvarchar](50) NOT NULL,
	[taxes_value] [int] NOT NULL,
	[create_at] [datetime] NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Taxes] PRIMARY KEY CLUSTERED 
(
	[taxes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wards]    Script Date: 2/9/2023 9:40:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wards](
	[ward_id] [int] IDENTITY(1,1) NOT NULL,
	[district_id] [int] NOT NULL,
	[ward_name] [nvarchar](50) NOT NULL,
	[type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Wards] PRIMARY KEY CLUSTERED 
(
	[ward_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StickyPost] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [sticky_start]
GO
ALTER TABLE [dbo].[StickyPost] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [sticky_end]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Account_dbo.Roles_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([role_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_dbo.Account_dbo.Roles_role_id]
GO
ALTER TABLE [dbo].[Account_Address]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Account_Address_dbo.Account_account_id] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account_Address] CHECK CONSTRAINT [FK_dbo.Account_Address_dbo.Account_account_id]
GO
ALTER TABLE [dbo].[Account_Address]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Account_Address_dbo.Districts_district_id] FOREIGN KEY([district_id])
REFERENCES [dbo].[Districts] ([district_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account_Address] CHECK CONSTRAINT [FK_dbo.Account_Address_dbo.Districts_district_id]
GO
ALTER TABLE [dbo].[Account_Address]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Account_Address_dbo.Provinces_province_id] FOREIGN KEY([province_id])
REFERENCES [dbo].[Provinces] ([province_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account_Address] CHECK CONSTRAINT [FK_dbo.Account_Address_dbo.Provinces_province_id]
GO
ALTER TABLE [dbo].[Account_Address]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Account_Address_dbo.Wards_ward_id] FOREIGN KEY([ward_id])
REFERENCES [dbo].[Wards] ([ward_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Account_Address] CHECK CONSTRAINT [FK_dbo.Account_Address_dbo.Wards_ward_id]
GO
ALTER TABLE [dbo].[Banner_Detail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Banner_Detail_dbo.Banner_banner_id] FOREIGN KEY([banner_id])
REFERENCES [dbo].[Banner] ([banner_id])
GO
ALTER TABLE [dbo].[Banner_Detail] CHECK CONSTRAINT [FK_dbo.Banner_Detail_dbo.Banner_banner_id]
GO
ALTER TABLE [dbo].[Banner_Detail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Banner_Detail_dbo.Product_product_id_genre_id] FOREIGN KEY([product_id], [genre_id])
REFERENCES [dbo].[Product] ([product_id], [genre_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Banner_Detail] CHECK CONSTRAINT [FK_dbo.Banner_Detail_dbo.Product_product_id_genre_id]
GO
ALTER TABLE [dbo].[ChildCategory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ChildCategory_dbo.ParentCategory_parentcategory_id] FOREIGN KEY([parentcategory_id])
REFERENCES [dbo].[ParentCategory] ([parentcategory_id])
GO
ALTER TABLE [dbo].[ChildCategory] CHECK CONSTRAINT [FK_dbo.ChildCategory_dbo.ParentCategory_parentcategory_id]
GO
ALTER TABLE [dbo].[CommentLikes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommentLikes_dbo.Account_account_id] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[CommentLikes] CHECK CONSTRAINT [FK_dbo.CommentLikes_dbo.Account_account_id]
GO
ALTER TABLE [dbo].[CommentLikes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CommentLikes_dbo.NewsComments_comment_id] FOREIGN KEY([comment_id])
REFERENCES [dbo].[NewsComments] ([comment_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommentLikes] CHECK CONSTRAINT [FK_dbo.CommentLikes_dbo.NewsComments_comment_id]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Districts_dbo.Provinces_province_id] FOREIGN KEY([province_id])
REFERENCES [dbo].[Provinces] ([province_id])
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_dbo.Districts_dbo.Provinces_province_id]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Feedback_dbo.Account_account_id] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_dbo.Feedback_dbo.Account_account_id]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Feedback_dbo.Product_product_id_genre_id] FOREIGN KEY([product_id], [genre_id])
REFERENCES [dbo].[Product] ([product_id], [genre_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_dbo.Feedback_dbo.Product_product_id_genre_id]
GO
ALTER TABLE [dbo].[Feedback_Image]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Feedback_Image_dbo.Feedback_feedback_id_account_id] FOREIGN KEY([feedback_id], [account_id])
REFERENCES [dbo].[Feedback] ([feedback_id], [account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Feedback_Image] CHECK CONSTRAINT [FK_dbo.Feedback_Image_dbo.Feedback_feedback_id_account_id]
GO
ALTER TABLE [dbo].[Genre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Genre_dbo.ParentGenres_parent_genre_id] FOREIGN KEY([parent_genre_id])
REFERENCES [dbo].[ParentGenres] ([id])
GO
ALTER TABLE [dbo].[Genre] CHECK CONSTRAINT [FK_dbo.Genre_dbo.ParentGenres_parent_genre_id]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_dbo.News_dbo.Account_account_id] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_dbo.News_dbo.Account_account_id]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_dbo.News_dbo.ChildCategory_childcategory_id] FOREIGN KEY([childcategory_id])
REFERENCES [dbo].[ChildCategory] ([childcategory_id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_dbo.News_dbo.ChildCategory_childcategory_id]
GO
ALTER TABLE [dbo].[NewsComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NewsComments_dbo.Account_account_id] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsComments] CHECK CONSTRAINT [FK_dbo.NewsComments_dbo.Account_account_id]
GO
ALTER TABLE [dbo].[NewsComments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NewsComments_dbo.News_news_id] FOREIGN KEY([news_id])
REFERENCES [dbo].[News] ([news_id])
GO
ALTER TABLE [dbo].[NewsComments] CHECK CONSTRAINT [FK_dbo.NewsComments_dbo.News_news_id]
GO
ALTER TABLE [dbo].[NewsProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NewsProducts_dbo.News_news_id] FOREIGN KEY([news_id])
REFERENCES [dbo].[News] ([news_id])
GO
ALTER TABLE [dbo].[NewsProducts] CHECK CONSTRAINT [FK_dbo.NewsProducts_dbo.News_news_id]
GO
ALTER TABLE [dbo].[NewsProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NewsProducts_dbo.Product_product_id_genre_id] FOREIGN KEY([product_id], [genre_id])
REFERENCES [dbo].[Product] ([product_id], [genre_id])
GO
ALTER TABLE [dbo].[NewsProducts] CHECK CONSTRAINT [FK_dbo.NewsProducts_dbo.Product_product_id_genre_id]
GO
ALTER TABLE [dbo].[NewsTags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NewsTags_dbo.News_news_id] FOREIGN KEY([news_id])
REFERENCES [dbo].[News] ([news_id])
GO
ALTER TABLE [dbo].[NewsTags] CHECK CONSTRAINT [FK_dbo.NewsTags_dbo.News_news_id]
GO
ALTER TABLE [dbo].[NewsTags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NewsTags_dbo.Tags_tag_id] FOREIGN KEY([tag_id])
REFERENCES [dbo].[Tags] ([tag_id])
GO
ALTER TABLE [dbo].[NewsTags] CHECK CONSTRAINT [FK_dbo.NewsTags_dbo.Tags_tag_id]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Account_account_id] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Account_account_id]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Delivery_delivery_id] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[Delivery] ([delivery_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Delivery_delivery_id]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.OrderAddress_order_address_id] FOREIGN KEY([order_address_id])
REFERENCES [dbo].[OrderAddress] ([order_address_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.OrderAddress_order_address_id]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment] FOREIGN KEY([payment_id])
REFERENCES [dbo].[Payment] ([payment_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Payment]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_Detail_dbo.Order_order_id] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_dbo.Order_Detail_dbo.Order_order_id]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_Detail_dbo.Product_product_id_genre_id] FOREIGN KEY([product_id], [genre_id])
REFERENCES [dbo].[Product] ([product_id], [genre_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_dbo.Order_Detail_dbo.Product_product_id_genre_id]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.Brand_brand_id] FOREIGN KEY([brand_id])
REFERENCES [dbo].[Brand] ([brand_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.Brand_brand_id]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.Discount_disscount_id] FOREIGN KEY([disscount_id])
REFERENCES [dbo].[Discount] ([disscount_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.Discount_disscount_id]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.Genre_genre_id] FOREIGN KEY([genre_id])
REFERENCES [dbo].[Genre] ([genre_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.Genre_genre_id]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.Taxes_taxes_id] FOREIGN KEY([taxes_id])
REFERENCES [dbo].[Taxes] ([taxes_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.Taxes_taxes_id]
GO
ALTER TABLE [dbo].[Product_Image]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_Image_dbo.Product_product_id_genre_id] FOREIGN KEY([product_id], [genre_id])
REFERENCES [dbo].[Product] ([product_id], [genre_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Image] CHECK CONSTRAINT [FK_dbo.Product_Image_dbo.Product_product_id_genre_id]
GO
ALTER TABLE [dbo].[Reply_Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reply_Comments_dbo.Account_account_id] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Reply_Comments] CHECK CONSTRAINT [FK_dbo.Reply_Comments_dbo.Account_account_id]
GO
ALTER TABLE [dbo].[Reply_Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reply_Comments_dbo.NewsComments_comment_id] FOREIGN KEY([comment_id])
REFERENCES [dbo].[NewsComments] ([comment_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reply_Comments] CHECK CONSTRAINT [FK_dbo.Reply_Comments_dbo.NewsComments_comment_id]
GO
ALTER TABLE [dbo].[ReplyCommentLikes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReplyCommentLikes_dbo.Account_account_id] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[ReplyCommentLikes] CHECK CONSTRAINT [FK_dbo.ReplyCommentLikes_dbo.Account_account_id]
GO
ALTER TABLE [dbo].[ReplyCommentLikes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReplyCommentLikes_dbo.Reply_Comments_reply_comment_id] FOREIGN KEY([reply_comment_id])
REFERENCES [dbo].[Reply_Comments] ([reply_comment_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReplyCommentLikes] CHECK CONSTRAINT [FK_dbo.ReplyCommentLikes_dbo.Reply_Comments_reply_comment_id]
GO
ALTER TABLE [dbo].[RolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RolesPermissions_dbo.Permissions_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permissions] ([permission_id])
GO
ALTER TABLE [dbo].[RolesPermissions] CHECK CONSTRAINT [FK_dbo.RolesPermissions_dbo.Permissions_permission_id]
GO
ALTER TABLE [dbo].[RolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RolesPermissions_dbo.Roles_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([role_id])
GO
ALTER TABLE [dbo].[RolesPermissions] CHECK CONSTRAINT [FK_dbo.RolesPermissions_dbo.Roles_role_id]
GO
ALTER TABLE [dbo].[StickyPost]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StickyPost_dbo.News_news_id] FOREIGN KEY([news_id])
REFERENCES [dbo].[News] ([news_id])
GO
ALTER TABLE [dbo].[StickyPost] CHECK CONSTRAINT [FK_dbo.StickyPost_dbo.News_news_id]
GO
ALTER TABLE [dbo].[Wards]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Wards_dbo.Districts_district_id] FOREIGN KEY([district_id])
REFERENCES [dbo].[Districts] ([district_id])
GO
ALTER TABLE [dbo].[Wards] CHECK CONSTRAINT [FK_dbo.Wards_dbo.Districts_district_id]
GO