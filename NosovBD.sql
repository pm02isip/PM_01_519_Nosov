USE [PM01_519_Nosov]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 19.04.2023 15:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NOT NULL,
	[EnglishCountryName] [nvarchar](max) NOT NULL,
	[Code] [nchar](2) NOT NULL,
	[Code2] [int] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 19.04.2023 15:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventSecurity]    Script Date: 19.04.2023 15:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventSecurity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Days] [int] NOT NULL,
	[CityID] [int] NULL,
 CONSTRAINT [PK_EventSecurity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gender]    Script Date: 19.04.2023 15:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 19.04.2023 15:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Joins]    Script Date: 19.04.2023 15:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Joins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Birthday] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[GenderID] [int] NOT NULL,
 CONSTRAINT [PK_Joins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jury]    Script Date: 19.04.2023 15:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jury](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[GenderID] [int] NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Birthday] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[JobID] [int] NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Jury] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Moderator]    Script Date: 19.04.2023 15:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderator](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[GenderID] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Birthday] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[JobID] [int] NOT NULL,
	[EventID] [int] NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Moderator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Organisation]    Script Date: 19.04.2023 15:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organisation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Birthday] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[GenderID] [int] NOT NULL,
 CONSTRAINT [PK_Organisation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (1, N'Абхазия', N'Abkhazia', N'AB', 895)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (2, N'Австралия', N'Australia', N'AU', 36)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (3, N'Австрия', N'Austria', N'AT', 40)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (4, N'Азербайджан', N'Azerbaijan', N'AZ', 31)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (5, N'Албания', N'Albania', N'AL', 8)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (6, N'Алжир', N'Algeria', N'DZ', 12)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (7, N'Американское Самоа', N'American Samoa', N'AS', 16)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (8, N'Ангилья', N'Anguilla', N'AI', 660)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (9, N'Ангола', N'Angola', N'AO', 24)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (10, N'Андорра', N'Andorra', N'AD', 20)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (11, N'Антарктида', N'Antarctica', N'AQ', 10)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (12, N'Антигуа и Барбуда', N'Antigua and Barbuda', N'AG', 28)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (13, N'Аргентина', N'Argentina', N'AR', 32)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (14, N'Армения', N'Armenia', N'AM', 51)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (15, N'Аруба', N'Aruba', N'AW', 533)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (16, N'Афганистан', N'Afghanistan', N'AF', 4)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (17, N'Багамы', N'Bahamas', N'BS', 44)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (18, N'Бангладеш', N'Bangladesh', N'BD', 50)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (19, N'Барбадос', N'Barbados', N'BB', 52)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (20, N'Бахрейн', N'Bahrain', N'BH', 48)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (21, N'Беларусь', N'Belarus', N'BY', 112)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (22, N'Белиз', N'Belize', N'BZ', 84)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (23, N'Бельгия', N'Belgium', N'BE', 56)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (24, N'Бенин', N'Benin', N'BJ', 204)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (25, N'Бермуды', N'Bermuda', N'BM', 60)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (26, N'Болгария', N'Bulgaria', N'BG', 100)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (27, N'Боливия, Многонациональное Государство', N'Bolivia, plurinational state of', N'BO', 68)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (28, N'Бонайре, Саба и Синт-Эстатиус', N'Bonaire, Sint Eustatius and Saba', N'BQ', 535)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (29, N'Босния и Герцеговина', N'Bosnia and Herzegovina', N'BA', 70)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (30, N'Ботсвана', N'Botswana', N'BW', 72)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (31, N'Бразилия', N'Brazil', N'BR', 76)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (32, N'Британская территория в Индийском океане', N'British Indian Ocean Territory', N'IO', 86)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (33, N'Бруней-Даруссалам', N'Brunei Darussalam', N'BN', 96)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (34, N'Буркина-Фасо', N'Burkina Faso', N'BF', 854)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (35, N'Бурунди', N'Burundi', N'BI', 108)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (36, N'Бутан', N'Bhutan', N'BT', 64)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (37, N'Вануату', N'Vanuatu', N'VU', 548)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (38, N'Венгрия', N'Hungary', N'HU', 348)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (39, N'Венесуэла Боливарианская Республика', N'Venezuela', N'VE', 862)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (40, N'Виргинские острова, Британские', N'Virgin Islands, British', N'VG', 92)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (41, N'Виргинские острова, США', N'Virgin Islands, U.S.', N'VI', 850)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (42, N'Вьетнам', N'Vietnam', N'VN', 704)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (43, N'Габон', N'Gabon', N'GA', 266)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (44, N'Гаити', N'Haiti', N'HT', 332)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (45, N'Гайана', N'Guyana', N'GY', 328)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (46, N'Гамбия', N'Gambia', N'GM', 270)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (47, N'Гана', N'Ghana', N'GH', 288)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (48, N'Гваделупа', N'Guadeloupe', N'GP', 312)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (49, N'Гватемала', N'Guatemala', N'GT', 320)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (50, N'Гвинея', N'Guinea', N'GN', 324)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (51, N'Гвинея-Бисау', N'Guinea-Bissau', N'GW', 624)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (52, N'Германия', N'Germany', N'DE', 276)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (53, N'Гернси', N'Guernsey', N'GG', 831)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (54, N'Гибралтар', N'Gibraltar', N'GI', 292)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (55, N'Гондурас', N'Honduras', N'HN', 340)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (56, N'Гонконг', N'Hong Kong', N'HK', 344)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (57, N'Гренада', N'Grenada', N'GD', 308)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (58, N'Гренландия', N'Greenland', N'GL', 304)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (59, N'Греция', N'Greece', N'GR', 300)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (60, N'Грузия', N'Georgia', N'GE', 268)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (61, N'Гуам', N'Guam', N'GU', 316)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (62, N'Дания', N'Denmark', N'DK', 208)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (63, N'Джерси', N'Jersey', N'JE', 832)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (64, N'Джибути', N'Djibouti', N'DJ', 262)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (65, N'Доминика', N'Dominica', N'DM', 212)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (66, N'Доминиканская Республика', N'Dominican Republic', N'DO', 214)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (67, N'Египет', N'Egypt', N'EG', 818)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (68, N'Замбия', N'Zambia', N'ZM', 894)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (69, N'Западная Сахара', N'Western Sahara', N'EH', 732)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (70, N'Зимбабве', N'Zimbabwe', N'ZW', 716)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (71, N'Израиль', N'Israel', N'IL', 376)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (72, N'Индия', N'India', N'IN', 356)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (73, N'Индонезия', N'Indonesia', N'ID', 360)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (74, N'Иордания', N'Jordan', N'JO', 400)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (75, N'Ирак', N'Iraq', N'IQ', 368)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (76, N'Иран, Исламская Республика', N'Iran, Islamic Republic of', N'IR', 364)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (77, N'Ирландия', N'Ireland', N'IE', 372)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (78, N'Исландия', N'Iceland', N'IS', 352)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (79, N'Испания', N'Spain', N'ES', 724)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (80, N'Италия', N'Italy', N'IT', 380)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (81, N'Йемен', N'Yemen', N'YE', 887)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (82, N'Кабо-Верде', N'Cape Verde', N'CV', 132)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (83, N'Казахстан', N'Kazakhstan', N'KZ', 398)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (84, N'Камбоджа', N'Cambodia', N'KH', 116)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (85, N'Камерун', N'Cameroon', N'CM', 120)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (86, N'Канада', N'Canada', N'CA', 124)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (87, N'Катар', N'Qatar', N'QA', 634)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (88, N'Кения', N'Kenya', N'KE', 404)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (89, N'Кипр', N'Cyprus', N'CY', 196)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (90, N'Киргизия', N'Kyrgyzstan', N'KG', 417)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (91, N'Кирибати', N'Kiribati', N'KI', 296)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (92, N'Китай', N'China', N'CN', 156)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (93, N'Кокосовые (Килинг) острова', N'Cocos (Keeling) Islands', N'CC', 166)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (94, N'Колумбия', N'Colombia', N'CO', 170)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (95, N'Коморы', N'Comoros', N'KM', 174)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (96, N'Конго', N'Congo', N'CG', 178)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (97, N'Конго, Демократическая Республика', N'Congo, Democratic Republic of the', N'CD', 180)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (98, N'Корея, Народно-Демократическая Республика', N'Korea, Democratic People''s republic of', N'KP', 408)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (99, N'Корея, Республика', N'Korea, Republic of', N'KR', 410)
GO
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (100, N'Коста-Рика', N'Costa Rica', N'CR', 188)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (101, N'Кот д''Ивуар', N'Cote d''Ivoire', N'CI', 384)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (102, N'Куба', N'Cuba', N'CU', 192)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (103, N'Кувейт', N'Kuwait', N'KW', 414)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (104, N'Кюрасао', N'Curaçao', N'CW', 531)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (105, N'Лаос', N'Lao People''s Democratic Republic', N'LA', 418)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (106, N'Латвия', N'Latvia', N'LV', 428)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (107, N'Лесото', N'Lesotho', N'LS', 426)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (108, N'Ливан', N'Lebanon', N'LB', 422)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (109, N'Ливийская Арабская Джамахирия', N'Libyan Arab Jamahiriya', N'LY', 434)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (110, N'Либерия', N'Liberia', N'LR', 430)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (111, N'Лихтенштейн', N'Liechtenstein', N'LI', 438)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (112, N'Литва', N'Lithuania', N'LT', 440)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (113, N'Люксембург', N'Luxembourg', N'LU', 442)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (114, N'Маврикий', N'Mauritius', N'MU', 480)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (115, N'Мавритания', N'Mauritania', N'MR', 478)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (116, N'Мадагаскар', N'Madagascar', N'MG', 450)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (117, N'Майотта', N'Mayotte', N'YT', 175)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (118, N'Макао', N'Macao', N'MO', 446)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (119, N'Малави', N'Malawi', N'MW', 454)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (120, N'Малайзия', N'Malaysia', N'MY', 458)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (121, N'Мали', N'Mali', N'ML', 466)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (122, N'Малые Тихоокеанские отдаленные острова Соединенных Штатов', N'United States Minor Outlying Islands', N'UM', 581)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (123, N'Мальдивы', N'Maldives', N'MV', 462)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (124, N'Мальта', N'Malta', N'MT', 470)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (125, N'Марокко', N'Morocco', N'MA', 504)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (126, N'Мартиника', N'Martinique', N'MQ', 474)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (127, N'Маршалловы острова', N'Marshall Islands', N'MH', 584)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (128, N'Мексика', N'Mexico', N'MX', 484)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (129, N'Микронезия, Федеративные Штаты', N'Micronesia, Federated States of', N'FM', 583)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (130, N'Мозамбик', N'Mozambique', N'MZ', 508)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (131, N'Молдова, Республика', N'Moldova', N'MD', 498)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (132, N'Монако', N'Monaco', N'MC', 492)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (133, N'Монголия', N'Mongolia', N'MN', 496)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (134, N'Монтсеррат', N'Montserrat', N'MS', 500)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (135, N'Мьянма', N'Myanmar', N'MM', 104)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (136, N'Намибия', N'Namibia', N'NA', 516)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (137, N'Науру', N'Nauru', N'NR', 520)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (138, N'Непал', N'Nepal', N'NP', 524)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (139, N'Нигер', N'Niger', N'NE', 562)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (140, N'Нигерия', N'Nigeria', N'NG', 566)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (141, N'Нидерланды', N'Netherlands', N'NL', 528)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (142, N'Никарагуа', N'Nicaragua', N'NI', 558)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (143, N'Ниуэ', N'Niue', N'NU', 570)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (144, N'Новая Зеландия', N'New Zealand', N'NZ', 554)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (145, N'Новая Каледония', N'New Caledonia', N'NC', 540)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (146, N'Норвегия', N'Norway', N'NO', 578)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (147, N'Объединенные Арабские Эмираты', N'United Arab Emirates', N'AE', 784)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (148, N'Оман', N'Oman', N'OM', 512)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (149, N'Остров Буве', N'Bouvet Island', N'BV', 74)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (150, N'Остров Мэн', N'Isle of Man', N'IM', 833)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (151, N'Остров Норфолк', N'Norfolk Island', N'NF', 574)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (152, N'Остров Рождества', N'Christmas Island', N'CX', 162)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (153, N'Остров Херд и острова Макдональд', N'Heard Island and McDonald Islands', N'HM', 334)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (154, N'Острова Кайман', N'Cayman Islands', N'KY', 136)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (155, N'Острова Кука', N'Cook Islands', N'CK', 184)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (156, N'Острова Теркс и Кайкос', N'Turks and Caicos Islands', N'TC', 796)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (157, N'Пакистан', N'Pakistan', N'PK', 586)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (158, N'Палау', N'Palau', N'PW', 585)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (159, N'Палестинская территория, оккупированная', N'Palestinian Territory, Occupied', N'PS', 275)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (160, N'Панама', N'Panama', N'PA', 591)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (161, N'Папский Престол (Государство — город Ватикан)', N'Holy See (Vatican City State)', N'VA', 336)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (162, N'Папуа-Новая Гвинея', N'Papua New Guinea', N'PG', 598)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (163, N'Парагвай', N'Paraguay', N'PY', 600)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (164, N'Перу', N'Peru', N'PE', 604)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (165, N'Питкерн', N'Pitcairn', N'PN', 612)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (166, N'Польша', N'Poland', N'PL', 616)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (167, N'Португалия', N'Portugal', N'PT', 620)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (168, N'Пуэрто-Рико', N'Puerto Rico', N'PR', 630)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (169, N'Республика Македония', N'Macedonia, The Former Yugoslav Republic Of', N'MK', 807)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (170, N'Реюньон', N'Reunion', N'RE', 638)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (171, N'Россия', N'Russian Federation', N'RU', 643)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (172, N'Руанда', N'Rwanda', N'RW', 646)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (173, N'Румыния', N'Romania', N'RO', 642)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (174, N'Самоа', N'Samoa', N'WS', 882)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (175, N'Сан-Марино', N'San Marino', N'SM', 674)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (176, N'Сан-Томе и Принсипи', N'Sao Tome and Principe', N'ST', 678)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (177, N'Саудовская Аравия', N'Saudi Arabia', N'SA', 682)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (178, N'Свазиленд', N'Swaziland', N'SZ', 748)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (179, N'Святая Елена, Остров вознесения, Тристан-да-Кунья', N'Saint Helena, Ascension And Tristan Da Cunha', N'SH', 654)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (180, N'Северные Марианские острова', N'Northern Mariana Islands', N'MP', 580)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (181, N'Сен-Бартельми', N'Saint Barthélemy', N'BL', 652)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (182, N'Сен-Мартен', N'Saint Martin (French Part)', N'MF', 663)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (183, N'Сенегал', N'Senegal', N'SN', 686)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (184, N'Сент-Винсент и Гренадины', N'Saint Vincent and the Grenadines', N'VC', 670)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (185, N'Сент-Люсия', N'Saint Lucia', N'LC', 662)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (186, N'Сент-Китс и Невис', N'Saint Kitts and Nevis', N'KN', 659)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (187, N'Сент-Пьер и Микелон', N'Saint Pierre and Miquelon', N'PM', 666)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (188, N'Сербия', N'Serbia', N'RS', 688)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (189, N'Сейшелы', N'Seychelles', N'SC', 690)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (190, N'Сингапур', N'Singapore', N'SG', 702)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (191, N'Синт-Мартен', N'Sint Maarten', N'SX', 534)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (192, N'Сирийская Арабская Республика', N'Syrian Arab Republic', N'SY', 760)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (193, N'Словакия', N'Slovakia', N'SK', 703)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (194, N'Словения', N'Slovenia', N'SI', 705)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (195, N'Соединенное Королевство', N'United Kingdom', N'GB', 826)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (196, N'Соединенные Штаты', N'United States', N'US', 840)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (197, N'Соломоновы острова', N'Solomon Islands', N'SB', 90)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (198, N'Сомали', N'Somalia', N'SO', 706)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (199, N'Судан', N'Sudan', N'SD', 729)
GO
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (200, N'Суринам', N'Suriname', N'SR', 740)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (201, N'Сьерра-Леоне', N'Sierra Leone', N'SL', 694)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (202, N'Таджикистан', N'Tajikistan', N'TJ', 762)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (203, N'Таиланд', N'Thailand', N'TH', 764)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (204, N'Тайвань (Китай)', N'Taiwan, Province of China', N'TW', 158)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (205, N'Танзания, Объединенная Республика', N'Tanzania, United Republic Of', N'TZ', 834)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (206, N'Тимор-Лесте', N'Timor-Leste', N'TL', 626)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (207, N'Того', N'Togo', N'TG', 768)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (208, N'Токелау', N'Tokelau', N'TK', 772)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (209, N'Тонга', N'Tonga', N'TO', 776)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (210, N'Тринидад и Тобаго', N'Trinidad and Tobago', N'TT', 780)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (211, N'Тувалу', N'Tuvalu', N'TV', 798)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (212, N'Тунис', N'Tunisia', N'TN', 788)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (213, N'Туркмения', N'Turkmenistan', N'TM', 795)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (214, N'Турция', N'Turkey', N'TR', 792)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (215, N'Уганда', N'Uganda', N'UG', 800)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (216, N'Узбекистан', N'Uzbekistan', N'UZ', 860)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (217, N'Украина', N'Ukraine', N'UA', 804)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (218, N'Уоллис и Футуна', N'Wallis and Futuna', N'WF', 876)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (219, N'Уругвай', N'Uruguay', N'UY', 858)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (220, N'Фарерские острова', N'Faroe Islands', N'FO', 234)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (221, N'Фиджи', N'Fiji', N'FJ', 242)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (222, N'Филиппины', N'Philippines', N'PH', 608)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (223, N'Финляндия', N'Finland', N'FI', 246)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (224, N'Фолклендские острова (Мальвинские)', N'Falkland Islands (Malvinas)', N'FK', 238)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (225, N'Франция', N'France', N'FR', 250)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (226, N'Французская Гвиана', N'French Guiana', N'GF', 254)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (227, N'Французская Полинезия', N'French Polynesia', N'PF', 258)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (228, N'Французские Южные территории', N'French Southern Territories', N'TF', 260)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (229, N'Хорватия', N'Croatia', N'HR', 191)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (230, N'Центрально-Африканская Республика', N'Central African Republic', N'CF', 140)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (231, N'Чад', N'Chad', N'TD', 148)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (232, N'Черногория', N'Montenegro', N'ME', 499)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (233, N'Чешская Республика', N'Czech Republic', N'CZ', 203)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (234, N'Чили', N'Chile', N'CL', 152)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (235, N'Швейцария', N'Switzerland', N'CH', 756)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (236, N'Швеция', N'Sweden', N'SE', 752)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (237, N'Шпицберген и Ян Майен', N'Svalbard and Jan Mayen', N'SJ', 744)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (238, N'Шри-Ланка', N'Sri Lanka', N'LK', 144)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (239, N'Эквадор', N'Ecuador', N'EC', 218)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (240, N'Экваториальная Гвинея', N'Equatorial Guinea', N'GQ', 226)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (241, N'Эландские острова', N'Åland Islands', N'AX', 248)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (242, N'Эль-Сальвадор', N'El Salvador', N'SV', 222)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (243, N'Эритрея', N'Eritrea', N'ER', 232)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (244, N'Эстония', N'Estonia', N'EE', 233)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (245, N'Эфиопия', N'Ethiopia', N'ET', 231)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (246, N'Южная Африка', N'South Africa', N'ZA', 710)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (247, N'Южная Джорджия и Южные Сандвичевы острова', N'South Georgia and the South Sandwich Islands', N'GS', 239)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (248, N'Южная Осетия', N'South Ossetia', N'OS', 896)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (249, N'Южный Судан', N'South Sudan', N'SS', 728)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (250, N'Ямайка', N'Jamaica', N'JM', 388)
INSERT [dbo].[Country] ([ID], [CountryName], [EnglishCountryName], [Code], [Code2]) VALUES (251, N'Япония', N'Japan', N'JP', 392)
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([ID], [EventName]) VALUES (1, N'IT в бизнесе')
INSERT [dbo].[Events] ([ID], [EventName]) VALUES (2, N'Разработка приложений')
INSERT [dbo].[Events] ([ID], [EventName]) VALUES (3, N'IT-инфраструктура')
INSERT [dbo].[Events] ([ID], [EventName]) VALUES (4, N'Стартапы')
INSERT [dbo].[Events] ([ID], [EventName]) VALUES (5, N'Информационная безопасность')
SET IDENTITY_INSERT [dbo].[Events] OFF
SET IDENTITY_INSERT [dbo].[EventSecurity] ON 

INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (1, N'Всероссийский хакатон neuromedia 2017 по разработке продуктов на стыке информационных технологий, медиа и нейронных сетей ', CAST(N'2022-10-26' AS Date), 1, 34)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (2, N'Встреча #3 клуба ITBizRadio на тему:  «уборка» — выкидываем ненужные навыки, инструменты и ограничения» ', CAST(N'2022-07-14' AS Date), 3, 34)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (3, N'Встреча клуба «Leader stories»: Мотивирующее руководство ', CAST(N'2023-11-09' AS Date), 2, 2)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (4, N'Встреча клуба руководителей «Leader Stories»: Постановка целей команде ', CAST(N'2023-07-06' AS Date), 2, 66)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (5, N'Быстрее, выше, сильнее: как спорт помогает бизнесу и корпорациям ', CAST(N'2023-04-13' AS Date), 3, 4)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (6, N'Встреча клуба Leader Stories «Мотивирующее руководство» ', CAST(N'2022-02-20' AS Date), 3, 76)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (7, N'Встреча клуба Leader Stories в формате настольной трансформационной коучинговой игры «УниверсУм» ', CAST(N'2023-10-10' AS Date), 2, 78)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (8, N'Встреча пользователей PTV в России ', CAST(N'2022-04-16' AS Date), 3, 50)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (9, N'Встреча сообщества CocoaHeads Russia ', CAST(N'2023-07-01' AS Date), 3, 78)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (10, N'Встреча СПб СоА 16 апреля. Репетиция докладов к Analyst Days ', CAST(N'2022-10-18' AS Date), 1, 78)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (11, N'Встреча JUG.ru с Венкатом Субраманиамом — Design Patterns in the Light of Lambda Expressions ', CAST(N'2023-08-26' AS Date), 1, 56)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (12, N'Встреча №3 HR-клуба Моего круга ', CAST(N'2022-11-27' AS Date), 1, 45)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (13, N'Встреча №4 HR-клуба «Моего круга» ', CAST(N'2023-10-31' AS Date), 2, 78)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (14, N'Встреча SPb Python Community ', CAST(N'2022-07-02' AS Date), 3, 9)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (15, N'Встреча SpbDotNet №36 ', CAST(N'2022-10-14' AS Date), 3, 8)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (16, N'Встреча SpbDotNet №40 ', CAST(N'2023-05-08' AS Date), 2, 23)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (17, N'Встреча SpbDotNet №44 ', CAST(N'2022-05-10' AS Date), 2, 56)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (18, N'Вторая международная конференция и выставка «ЦОД: модели, сервисы, инфраструктура - 2018» ', CAST(N'2022-03-03' AS Date), 2, 33)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (19, N'Выбор и создание методов решения аналитических задач ', CAST(N'2023-09-13' AS Date), 2, 22)
INSERT [dbo].[EventSecurity] ([ID], [EventName], [Date], [Days], [CityID]) VALUES (20, N'Выгорание: от бесплатного печенья до депрессии ', CAST(N'2023-11-11' AS Date), 3, 4)
SET IDENTITY_INSERT [dbo].[EventSecurity] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [GenderName]) VALUES (1, N'Мужской')
INSERT [dbo].[Gender] ([ID], [GenderName]) VALUES (2, N'Женский')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([ID], [JobName]) VALUES (1, N'ИТ')
INSERT [dbo].[Jobs] ([ID], [JobName]) VALUES (2, N'Биг Дата')
INSERT [dbo].[Jobs] ([ID], [JobName]) VALUES (3, N'Дизайн')
INSERT [dbo].[Jobs] ([ID], [JobName]) VALUES (4, N'Аналитика')
INSERT [dbo].[Jobs] ([ID], [JobName]) VALUES (5, N'Информационная безопасность')
SET IDENTITY_INSERT [dbo].[Jobs] OFF
SET IDENTITY_INSERT [dbo].[Joins] ON 

INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (1, N'Ершова Нора Федотовна', N'techie@outlook.com', CAST(N'1987-03-26' AS Date), 71, N'+7 (960) 424-07-11', N'tKKevv8%', N'foto60.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (2, N'Афанасьева Жанна Валентиновна', N'agapow@yahoo.com', CAST(N'1988-01-04' AS Date), 34, N'+7 (930) 661-69-31', N'huSfHm4$', N'foto61.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (3, N'Крылова Рая Всеволодовна', N'chaikin@yahoo.ca', CAST(N'1988-04-05' AS Date), 73, N'+7 (957) 265-60-68', N'TlUwMw77%', N'foto62.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (4, N'Попова Вида Тимофеевна', N'lbecchi@yahoo.ca', CAST(N'1989-10-25' AS Date), 64, N'+7 (911) 744-03-14', N'%afF#@6', N'foto63.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (5, N'Давыдова Сандра Богуславовна', N'bbirth@gmail.com', CAST(N'1989-12-27' AS Date), 55, N'+7 (984) 877-87-64', N'SU4Jpw"', N'foto64.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (6, N'Прохорова Сабина Созоновна', N'library@sbcglobal.net', CAST(N'1990-01-16' AS Date), 77, N'+7 (940) 500-20-72', N'wL#O0V', N'foto65.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (7, N'Громова Сильва Адольфовна', N'sisyphus@live.com', CAST(N'1990-06-13' AS Date), 52, N'+7 (956) 056-75-21', N'p5r{zY', N'foto66.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (8, N'Боброва Джема Феликсовна', N'msroth@hotmail.com', CAST(N'1990-07-03' AS Date), 28, N'+7 (965) 493-39-66', N'wTVK~M1', N'foto67.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (9, N'Фокина Алия Юлиановна', N'dodong@yahoo.com', CAST(N'1990-11-27' AS Date), 53, N'+7 (997) 329-69-78', N'8*Zfaj', N'foto68.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (10, N'Калинина Маргарита Анатольевна', N'bcevc@hotmail.com', CAST(N'1991-06-08' AS Date), 74, N'+7 (964) 571-56-50', N'4sBGr*', N'foto69.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (11, N'Горшкова Дина Тарасовна', N'sethbrown@aol.com', CAST(N'1991-08-13' AS Date), 7, N'+7 (918) 418-80-73', N'BpC8e8]', N'foto70.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (12, N'Гуляева Ирэна Юрьевна', N'ftgvh2xbdaps@tutanota.com', CAST(N'1992-10-03' AS Date), 38, N'+7 (91) 841-39-39', N'cI1CTd', N'foto1.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (15, N'Степанова Розалия Евсеевна', N'8e9kvxq6z70o@mail.com', CAST(N'1994-11-02' AS Date), 24, N'+7 (918) 418-01-29', N'cErGgC', N'foto4.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (16, N'Тимофеева Евгения Викторовна', N'obnk82vzpg34@yahoo.com', CAST(N'1982-01-02' AS Date), 11, N'+7 (918) 418-12-03', N'q2se3v', N'foto5.jpg', 2)
INSERT [dbo].[Joins] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (20, N'Михеева Аделия Авксентьевна', N'4hu6f8dxvngq@tutanota.com', CAST(N'1989-06-11' AS Date), 64, N'+7 (918) 239-45-82', N'FkX6Ms', N'foto9.jpg', 2)
SET IDENTITY_INSERT [dbo].[Joins] OFF
SET IDENTITY_INSERT [dbo].[Jury] ON 

INSERT [dbo].[Jury] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [Password], [Photo]) VALUES (12, N'Герасимова Айлин Ефимовна', 2, N'loraine.aufderhar@johnston.info', CAST(N'1966-06-09' AS Date), 53, N'7(835)478-61-60', 3, N'TuhRzy', N'foto22.jpg')
INSERT [dbo].[Jury] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [Password], [Photo]) VALUES (13, N'Большаков Августин Алексеевич', 1, N'juanita.kuvalis@yahoo.com', CAST(N'1978-07-12' AS Date), 52, N'7(173)770-55-13', 1, N'4Y83lz', N'foto23.jpg')
INSERT [dbo].[Jury] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [Password], [Photo]) VALUES (14, N'Морозов Ким Демьянович', 1, N'ibode@lebsack.com', CAST(N'1981-10-11' AS Date), 67, N'7(518)761-85-69', 1, N'z0q7Co', N'foto24.jpg')
INSERT [dbo].[Jury] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [Password], [Photo]) VALUES (16, N'Ларионова Марина Владимировна', 2, N'sandrine84@gmail.com', CAST(N'1950-06-06' AS Date), 94, N'7(521)121-28-90', 1, N'o7Cjwu', N'foto26.jpg')
SET IDENTITY_INSERT [dbo].[Jury] OFF
SET IDENTITY_INSERT [dbo].[Moderator] ON 

INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (43, N'Царева Виктория Давидовна', 2, N'iunhxq41tgr5@tutanota.com', CAST(N'1988-07-03' AS Date), 33, N'7(567)103-73-32', 1, 1, N'FYi396Dd5u', N'foto9.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (44, N'Зорин Дмитрий Маркович', 1, N'ofdt4z1bijq0@tutanota.com', CAST(N'1993-09-07' AS Date), 57, N'7(79)644-01-06', 1, 1, N'7gi7E8K4Ng', N'foto10.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (45, N'Зотова Анна Тимуровна', 2, N'ac6yxzg7rl5k@mail.com', CAST(N'1990-09-21' AS Date), 11, N'7(488)643-19-98', 2, 2, N'3L3eA5eEg3', N'foto8.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (46, N'Соловьев Тимур Константинович', 1, N'b1p4ur8nsedj@yahoo.com', CAST(N'1992-09-03' AS Date), 45, N'7(1828)504-39-49', 3, 3, N'Si8S5kS83v', N'foto11.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (47, N'Малахов Александр Фёдорович', 1, N'wyo6k9emv1j5@mail.com', CAST(N'1957-05-18' AS Date), 78, N'7(905)793-68-23', 2, 2, N'T83vfX2Z3b', N'foto12.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (48, N'Зорин Марк Ярославович', 1, N'g7kwp8lu65xi@tutanota.com', CAST(N'1961-03-09' AS Date), 82, N'7(54)522-60-54', 4, 4, N'25cPn58HxV', N'foto13.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (49, N'Егорова Ева Михайловна', 2, N'doj5r1m8xnky@gmail.com', CAST(N'1987-06-15' AS Date), 80, N'7(05)441-48-14', 1, 1, N'3z86YDzaX8', N'foto14.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (50, N'Гущина Кристина Львовна', 2, N'bxk06h5touyr@mail.com', CAST(N'1966-06-28' AS Date), 47, N'7(023)826-25-26', 5, 5, N't8F9hZXp89', N'foto16.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (51, N'Кудрявцева Виктория Романовна', 2, N'26yf8xbcntgp@gmail.com', CAST(N'1953-01-27' AS Date), 30, N'7(7804)582-64-90', 2, 2, N'92mARR3gu4', N'foto17.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (52, N'Новикова Александра Александровна', 2, N'0z4fvq65c7tg@gmail.com', CAST(N'1982-09-02' AS Date), 76, N'7(1472)122-56-07', 4, 4, N'Kf64Y6rhZ3', N'foto18.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (53, N'Масленников Родион Филиппович', 1, N'3kma18t5furi@gmail.com', CAST(N'1952-06-09' AS Date), 24, N'7(23)912-71-67', 4, 4, N's7iAYE9d38', N'foto19.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (54, N'Иванов Тимур Иванович', 1, N'ws7nxyhd6g1o@yahoo.com', CAST(N'1955-08-30' AS Date), 6, N'7(5939)489-85-18', 5, 5, N'3Ga9jfT9D2', N'foto20.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (55, N'Иванов Сергей Степанович', 1, N'oitzvs1mylj2@gmail.com', CAST(N'1993-09-01' AS Date), 83, N'7(4020)034-48-35', 3, 3, N'N6598CFsgi', N'foto21.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (56, N'Спиридонов Ярослав Сергеевич', 1, N'las6pufjkv45@outlook.com', CAST(N'1969-04-22' AS Date), 64, N'7(17)843-77-26', 3, 3, N'DV5625Zfmj', N'foto22.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (57, N'Виноградова Эмилия Валерьевна', 2, N'nl81b9i7s0ka@gmail.com', CAST(N'1991-10-25' AS Date), 90, N'7(16)788-42-97', 3, 3, N'22YyD83dMg', N'foto23.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (58, N'Мартынова Ева Семёновна', 2, N'ma87ser3gkj9@yahoo.com', CAST(N'1984-03-24' AS Date), 54, N'7(087)267-87-85', 5, 5, N'522EmkEmA6', N'foto24.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (59, N'Яковлева Анисия Григорьевна', 2, N'dfmygtwpecj9@tutanota.com', CAST(N'1997-09-13' AS Date), 53, N'7(798)711-92-89', 5, 5, N'uf9u227NYU', N'foto25.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (60, N'Свиридов Тимофей Александрович', 1, N'82zju4yritwo@mail.com', CAST(N'1991-07-22' AS Date), 84, N'7(68)882-28-10', 2, 2, N'4UDk9p76mD', N'foto26.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (61, N'Медведев Захар Даниилович', 1, N'zo6nye42s87t@yahoo.com', CAST(N'1960-04-11' AS Date), 63, N'7(36)230-79-77', 4, 4, N'cK49u3JU4n', N'foto27.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (62, N'Тихонова Елизавета Александровна', 2, N'0cejwmnpqtb6@gmail.com', CAST(N'1955-01-07' AS Date), 34, N'7(2594)224-28-37', 5, 5, N'b2JHb32S8i', N'foto28.jpg')
INSERT [dbo].[Moderator] ([ID], [FIO], [GenderID], [Email], [Birthday], [CountryID], [Phone], [JobID], [EventID], [Password], [Photo]) VALUES (63, N'Рыжов Роман Константинович', 1, N'42thql96cwe5@yahoo.com', CAST(N'1981-12-30' AS Date), 67, N'7(1009)025-64-70', 2, 2, N'uASc9446eF', N'foto29.jpg')
SET IDENTITY_INSERT [dbo].[Moderator] OFF
SET IDENTITY_INSERT [dbo].[Organisation] ON 

INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (1, N'Васильев Всеволод Давидович', N'6z92wongmash@tutanota.com', CAST(N'1988-10-16' AS Date), 51, N'7(354)903-53-67', N'Ke22Yh8Pp7', N'foto1.jpg', 1)
INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (2, N'Новиков Фёдор Макарович', N'jkp23vlzsqei@gmail.com', CAST(N'1980-08-03' AS Date), 33, N'7(6562)925-01-77', N'Tj78jXeH68', N'foto2.jpg', 1)
INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (3, N'Фролова Владислава Савельевна', N'dncmxp1vqr4t@tutanota.com', CAST(N'1999-07-13' AS Date), 43, N'7(12)981-33-56', N'DF9a8cJf82', N'foto3.jpg', 2)
INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (4, N'Кузнецов Елисей Александрович', N'sn4xvg8wyb0h@outlook.com', CAST(N'1983-12-19' AS Date), 3, N'7(698)667-22-45', N'B2bdk8FD27', N'foto4.jpg', 1)
INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (5, N'Рябова София Матвеевна', N'9zaecohlw2xy@tutanota.com', CAST(N'1998-08-10' AS Date), 33, N'7(38)393-11-43', N'58vMHdK4g5', N'foto5.jpg', 2)
INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (6, N'Власов Арсений Львович', N'sohzld6c52mv@gmail.com', CAST(N'1980-05-28' AS Date), 31, N'7(4297)539-13-81', N'T3uhc34E9Z', N'foto6.jpg', 1)
INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (7, N'Маслова Екатерина Макаровна', N'a1v0lgxsz3qb@mail.com', CAST(N'1983-10-26' AS Date), 40, N'7(49)638-66-62', N'dj8PN3b4M9', N'foto7.jpg', 2)
INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (8, N'Агафонов Давид Артёмович', N'lry2ko5t031w@gmail.com', CAST(N'1995-10-14' AS Date), 27, N'7(65)706-55-85', N'uy69Pp8DY6', N'foto8.jpg', 1)
INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (9, N'Федотова Варвара Сергеевна', N'omrjzf0pc8n6@outlook.com', CAST(N'1996-12-05' AS Date), 2, N'7(40)420-24-06', N'Sp3k6Ax86E', N'foto9.jpg', 2)
INSERT [dbo].[Organisation] ([ID], [FIO], [Email], [Birthday], [CountryID], [Phone], [Password], [Photo], [GenderID]) VALUES (10, N'Кудряшова Виктория Дмитриевна', N't1wpou7merxi@yahoo.com', CAST(N'1999-02-13' AS Date), 16, N'7(427)939-24-67', N'fvm774FV3R', N'foto10.jpg', 2)
SET IDENTITY_INSERT [dbo].[Organisation] OFF
ALTER TABLE [dbo].[Joins]  WITH CHECK ADD  CONSTRAINT [FK_Joins_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Joins] CHECK CONSTRAINT [FK_Joins_Country]
GO
ALTER TABLE [dbo].[Joins]  WITH CHECK ADD  CONSTRAINT [FK_Joins_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Joins] CHECK CONSTRAINT [FK_Joins_Gender]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Country]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Gender]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Jobs] FOREIGN KEY([JobID])
REFERENCES [dbo].[Jobs] ([ID])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Jobs]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Country]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Events] FOREIGN KEY([EventID])
REFERENCES [dbo].[Events] ([ID])
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Events]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Gender]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Jobs] FOREIGN KEY([JobID])
REFERENCES [dbo].[Jobs] ([ID])
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Jobs]
GO
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_Country]
GO
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_Gender]
GO
