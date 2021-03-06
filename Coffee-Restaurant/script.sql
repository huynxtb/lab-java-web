USE [marias_coffee]
GO
/****** Object:  Table [dbo].[about]    Script Date: 10/12/2020 10:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[about](
	[name] [nvarchar](255) NOT NULL,
	[image_description] [varchar](255) NULL,
	[content] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contact]    Script Date: 10/12/2020 10:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[addresses] [nvarchar](255) NOT NULL,
	[phone_number] [varchar](11) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[opening_hours] [nvarchar](255) NOT NULL,
	[description_image] [varchar](255) NOT NULL,
	[introduction] [nvarchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 10/12/2020 10:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description_image] [varchar](500) NULL,
	[content] [nvarchar](max) NOT NULL,
	[price] [bigint] NOT NULL,
	[page_count] [int] NOT NULL,
 CONSTRAINT [id_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[about] ([name], [image_description], [content]) VALUES (N'About my Cakes
', N'https://cf.shopee.ph/file/afacdb713292705cba655d04325ba33e', N'Tất cả các loại bánh nướng nhỏ không được tạo ra như nhau. Đối xử tốt nhất với bản thân.

Rất lâu trước khi bánh nướng nhỏ trở thành một cơn sốt, Cupcake đã tạo ra những chiếc bánh nhỏ mới mẻ và vui nhộn với sự kết hợp thơm ngon lạ thường của nhân và lớp trên. Họ đã thành công. Nhiều hương vị ban đầu vẫn được ưa chuộng và sẽ không sớm biến mất — nhưng để giúp mọi thứ trở nên ngon miệng và thú vị hơn, chúng tôi có một bộ sưu tập luôn thay đổi với hơn 50 loại bánh nướng nhỏ thủ công, bánh macaron và bánh đặc sản.

Một thay đổi khác so với những ngày đầu tiên đó là khách hàng có thể dễ dàng chia sẻ những chiếc bánh macaron ngon của chúng tôi với những người thân yêu hoặc khách hàng trên khắp cả nước. Đơn giản chỉ cần chọn từ các hương vị trực tuyến và chúng tôi sẽ nướng một mẻ tươi, đóng gói chúng trong những chiếc hộp xinh xắn của chúng tôi, thêm một tấm thiệp nếu bạn muốn, và chúng sẽ làm hài lòng người nhận ... Một điều không thay đổi? Chúng tôi làm bánh nướng từ đầu. Hằng ngày. Với các thành phần tốt nhất.

Hãy đến và ngồi trong quán cà phê vui vẻ của chúng tôi, hoặc lấy cà phê và một chiếc bánh ngọt mới nướng để đi hoặc đặt hàng trực tuyến. Dù bạn làm gì, chúng tôi rất vui được chia sẻ tình yêu làm bánh với bạn!

')
INSERT [dbo].[contact] ([addresses], [phone_number], [email], [opening_hours], [description_image], [introduction]) VALUES (N'Saigon Center, L3-01, 65 Đ. Lê Lợi, St, Ward, 71006', N'0123456789', N'cafeandcake@gmail.com', N'Monday: Closed
Tuesday - Friday: 10:00 - 20:00
Saturday and Sunday: 11.00 - 21:00', N'https://static3.depositphotos.com/1006708/215/i/950/depositphotos_2158884-stock-photo-owner-of-a-small-business.jpg', N'Miyama Café được hình thành từ khát vọng mang một quán café Tokyo hiện đại đến giữa lòng Sài Gòn nhộn nhịp. Từ những món dessert thú vị, những món ăn đầy cảm hứng, dịch vụ cho đến không gian tối giản cho đến khung cảnh thành phố qua khung cửa kính, mô hình của Miyama được thiết kế để tạo cho bạn cảm giác như thưởng ngoạn một cách trọn vẹn tại một quán café Toyko ngắm nhìn khu Shibuya sầm uất với hàng người và xe đan xen nhau.')
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (1, N'DARK CHOCOLATE', N'https://cdn.valrhona-chocolate.com/pub/media/wysiwyg/recipes/DARK_CHOCOLATE_CUPCAKE.jpg', N'Bạn đang săn lùng những viên đá quý sô cô la phức tạp và suy đồi nhất để làm mê mẩn khẩu vị sành điệu của mình. Hãy "phong phú" với bánh nướng nhỏ Sprinkles Dark Chocolate! Ca cao dồi dào mang đến cho món bánh này hương vị đậm đà trong khi vani Madagascar Bourbon thơm nồng thêm hương nước hoa đậm đà. Bên trên là lớp kem phủ đầy kem, có vị đăng đắng và rắc sô cô la thật từ Pháp, thứ duy nhất trên thế giới mà bạn sẽ muốn là một ly sữa đá lạnh!', 25000, 2)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (2, N'VANILLA MILK CHOCOLATE
', N'https://cdn3.tmbi.com/toh/GoogleImagesPostCard/Buttermilk-Chocolate-Cupcakes_exps24970_RDS2447887D10_26_8b_RMS.jpg', N'Bạn có biết hầu hết các công thức chế biến sô cô la đều yêu cầu một chút vani không? Được nướng đồng thời, vani và sô cô la làm tăng hương vị của nhau. Rắc chứng tỏ sự đối lập thu hút với chiếc bánh vani nguyên chất này được phủ lớp kem phô mai kem sô cô la sữa béo ngậy và rắc sô cô la sữa tan chảy trong miệng. Vì vậy, trong khi những người khác tranh luận vani và sô cô la, bạn có thể ngồi thoải mái thưởng thức những gì tốt nhất của cả hai thế giới!', 30000, 1)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (3, N'STRAWBERRY', N'https://previews.123rf.com/images/siravich/siravich1709/siravich170900006/85489697-black-coffee-cup-with-red-velvet-and-strawberry-cupcakes-on-wooden-plate-on-wooden-table-top.jpg', N'Đánh lừa vị giác của bạn với bánh nướng nhỏ Sprinkles Strawberry! Chiếc bánh cupcake ngon ngọt này được làm từ những quả dâu tây chín mọng, mọng nước được xay nhuyễn thành cả phần bánh và lớp phủ của nó. Tự nhiên sơn màu hồng với trái cây yêu thích của mọi người, chúng đẹp như ngọt ngào!', 22000, 22)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (4, N'LEMON', N'https://previews.123rf.com/images/iaroshenko/iaroshenko1605/iaroshenko160500197/56729782-light-lemon-cupcakes-muffins-on-wooden-background-and-a-cup-of-tea-.jpg', N'Khi cuộc sống giao cho bạn những quả chanh, đã đến lúc nướng bánh nướng nhỏ! Sprinkles Những chiếc bánh cupcake chanh bùng nổ với tinh chất thơm ngậy của những trái chanh California ngon ngọt và phủ lên trên là lớp phủ chanh-vani phủ đầy vỏ chanh leo. Vì vậy, trái cây và sảng khoái, bạn sẽ không bao giờ cảm thấy chua khi nhìn thấy nó!', 28000, 8)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (5, N'BANANA', N'https://previews.123rf.com/images/lookaod/lookaod1804/lookaod180400020/99522545-2-banana-cupcakes-with-a-cup-of-hot-black-coffee-.jpg', N'Với bánh mì chuối kiểu cũ nướng trong lò. Rắc rắc vào thức ăn thoải mái này giúp chuối chín hoàn hảo thành một chiếc bánh vàng, đậm đà. Phủ lớp kem phủ vani, sô cô la hoặc bơ đậu phộng thơm ngon, bạn sẽ được "banana cup" trên đó là món yêu thích của mình!', 23000, 1)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (6, N'RED VELVET
', N'https://live.staticflickr.com/5173/5483198965_3f2eecb73f_b.jpg', N'Nếu một hương vị đồng nghĩa với Sprinkles Cupcakes, thì đó là Red Velvet! Chiếc bánh cupcake phổ biến nhất của chúng tôi được phát triển bởi người sáng lập Sprinkles, Candace Nelson, để tỏ lòng kính trọng đối với người chồng Charles và cội nguồn Oklahoma sâu sắc của anh ấy. Là một người yêu thích sô cô la, Candace đã nâng cao thương hiệu sô cô la với ca cao Callebaut, làm dịu màu đỏ thành một màu sắc tinh vi. Đặt trên nền trắng hoa huệ của lớp phủ kem phô mai béo ngậy, sự tương phản thật tuyệt vời ... giá như chúng ta có thể tự kiềm chế để ngồi và chiêm ngưỡng nó!', 32000, 2)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (7, N'Blueberry Cheesecake', N'https://wholesomepatisserie.com/wp-content/uploads/2019/03/Blueberry-Cupcakes-2-1030x1030.jpg', N'Vỏ bánh quy giòn Graham với bánh kem caramel có một lớp bánh phô mai việt quất nướng ngay trong, phủ kem phô mai và việt quất tươi.', 23000, 6)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (8, N'Baby S''more (Dozen)', N'https://cdn.shopify.com/s/files/1/0091/5190/5852/products/Lemon_Sunshine_2_1200x1200_486be61f-9013-4786-b918-287c2de4411a_2048x.jpg?v=1567109238', N'Bánh sô cô la đậm đà phủ lớp kem marshmallow nướng, trong lớp vỏ bánh quy giòn.', 24000, 0)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (9, N'Carrot Cake', N'https://thenovicechefblog.com/wp-content/uploads/2020/04/Carrot-Cake-Cupcakes-1-720x720.jpeg', N'Bánh cà rốt từng đoạt giải thưởng của chúng tôi phủ lớp kem phô mai và cà rốt bánh hạnh nhân làm thủ công (có các loại hạt).', 27000, 1)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (10, N'Salted Caramel', N'https://media-cdn.tripadvisor.com/media/photo-s/05/96/30/0f/localista.jpg', N'Bánh bơ bơ phủ sốt caramel, phủ kem bơ caramel mặn.', 29000, 0)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (19, N'Lemon Lavender', N'https://artofnaturalliving.com/wp-content/uploads/2014/06/ll-cupcakes-w-coffee-pot-sq.jpg', N'Bánh vani GF phủ đầy sữa đông chanh và phủ trên cùng là lớp kem phủ hoa oải hương ngọt ngào và những bông hoa phi vàng.', 32000, 1)
INSERT [dbo].[products] ([id], [name], [description_image], [content], [price], [page_count]) VALUES (20, N'SPRINKLE', N'https://c1.wallpaperflare.com/preview/663/148/872/cupcake-dessert-icing-vanilla.jpg', N'Chiếc bánh sinh nhật vui tươi này được phủ đầy rắc cầu vồng và phủ lớp kem bơ vani. Được tô điểm bằng những chiếc bánh nướng không cầu vồng giòn, điều ước sinh nhật duy nhất của bạn sẽ còn nhiều hơn thế nữa!', 19000, 1)
SET IDENTITY_INSERT [dbo].[products] OFF
