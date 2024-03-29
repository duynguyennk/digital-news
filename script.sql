USE [master]
GO
/****** Object:  Database [J3LP0004]    Script Date: 5/28/2021 1:20:55 PM ******/
CREATE DATABASE [J3LP0004]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J3LP0004', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\J3LP0004.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'J3LP0004_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\J3LP0004_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [J3LP0004] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3LP0004].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3LP0004] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3LP0004] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3LP0004] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3LP0004] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3LP0004] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3LP0004] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3LP0004] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3LP0004] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3LP0004] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3LP0004] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3LP0004] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3LP0004] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3LP0004] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3LP0004] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3LP0004] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J3LP0004] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3LP0004] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3LP0004] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3LP0004] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3LP0004] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3LP0004] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3LP0004] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3LP0004] SET RECOVERY FULL 
GO
ALTER DATABASE [J3LP0004] SET  MULTI_USER 
GO
ALTER DATABASE [J3LP0004] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3LP0004] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3LP0004] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3LP0004] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [J3LP0004] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'J3LP0004', N'ON'
GO
USE [J3LP0004]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 5/28/2021 1:20:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[image] [nvarchar](200) NULL,
	[short_content] [text] NULL,
	[content] [text] NULL,
	[author] [nvarchar](100) NULL,
	[published_date] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (1, N'The flashes of colored light you see when you rub your eyes are called “phosphenes”.', N'i1.jpg', N'Greg understood that this situation would make Michael terribly uncomfortable. Michael simply had no idea what was about to come and even though Greg could prevent it from happening, he opted to let it happen. ', N'Greg understood that this situation would make Michael terribly uncomfortable. Michael simply had no idea what was about to come and even though Greg could prevent it from happening, he opted to let it happen. It was quite ironic, really. It was something Greg had said he would never wish upon anyone a million times, yet here he was knowingly letting it happen to one of his best friends. He rationalized that it would ultimately make Michael a better person and that no matter how uncomfortable, everyone should experience racism at least once in their lifetime. Greg understood that this situation would make Michael terribly uncomfortable. Michael simply had no idea what was about to come and even though Greg could prevent it from happening, he opted to let it happen. It was quite ironic, really. It was something Greg had said he would never wish upon anyone a million times, yet here he was knowingly letting it happen to one of his best friends. He rationalized that it would ultimately make Michael a better person and that no matter how uncomfortable, everyone should experience racism at least once in their lifetime.', N'Xavier Conway', CAST(N'2021-05-12 16:21:58.583' AS DateTime))
INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (2, N'Approximately 1,000,000 dogs in the U.S. are named as the heirs of their owners’ wills.', N'i1.jpg', N'Green vines attached to the trunk of the tree had wound themselves toward the top of the canopy. Ants used the vine as their private highway, avoiding all the creases and crags of the bark, to freely move at top speed from top to bottom or bottom to top depending on their current chore', N'Green vines attached to the trunk of the tree had wound themselves toward the top of the canopy. Ants used the vine as their private highway, avoiding all the creases and crags of the bark, to freely move at top speed from top to bottom or bottom to top depending on their current chore. At least this was the way it was supposed to be. Something had damaged the vine overnight halfway up the tree leaving a gap in the once pristine ant highway. Green vines attached to the trunk of the tree had wound themselves toward the top of the canopy. Ants used the vine as their private highway, avoiding all the creases and crags of the bark, to freely move at top speed from top to bottom or bottom to top depending on their current chore. At least this was the way it was supposed to be. Something had damaged the vine overnight halfway up the tree leaving a gap in the once pristine ant highway.', N'Raphael Schmidt', CAST(N'2021-03-18 16:22:03.773' AS DateTime))
INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (3, N'When he was President, George H.W. Bush banned broccoli from Air Force One and the White House.', N'i1.jpg', N'Turning away from the ledge, he started slowly down the mountain, deciding that he would, that very night, satisfy his curiosity about the man-house. ', N'Turning away from the ledge, he started slowly down the mountain, deciding that he would, that very night, satisfy his curiosity about the man-house. In the meantime, he would go down into the canyon and get a cool drink, after which he would visit some berry patches just over the ridge, and explore among the foothills a bit before his nap-time, which always came just after the sun had walked past the middle of the sky. At that period of the day the sun’s warm rays seemed to cast a sleepy spell over the silent mountainside, so all of the animals, with one accord, had decided it should be the hour for their mid-day sleep. Turning away from the ledge, he started slowly down the mountain, deciding that he would, that very night, satisfy his curiosity about the man-house. In the meantime, he would go down into the canyon and get a cool drink, after which he would visit some berry patches just over the ridge, and explore among the foothills a bit before his nap-time, which always came just after the sun had walked past the middle of the sky. At that period of the day the sun’s warm rays seemed to cast a sleepy spell over the silent mountainside, so all of the animals, with one accord, had decided it should be the hour for their mid-day sleep.', N'William Morton', CAST(N'2021-04-26 16:22:09.370' AS DateTime))
INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (4, N'High heels are nothing new to the world. In the 18th Century, they were fashionable even for children.', N'i1.jpg', N'I recently discovered I could make fudge with just chocolate chips, sweetened condensed milk, vanilla extract, and a thick pot on slow heat. I tried it with dark chocolate chunks and I tried it with semi-sweet chocolate chips. ', N'I recently discovered I could make fudge with just chocolate chips, sweetened condensed milk, vanilla extract, and a thick pot on slow heat. I tried it with dark chocolate chunks and I tried it with semi-sweet chocolate chips. It''s better with both kinds. It comes out pretty bad with just the dark chocolate. The best add-ins are crushed almonds and marshmallows -- what you get from that is Rocky Road. It takes about twenty minutes from start to fridge, and then it takes about six months to work off the twenty pounds you gain from eating it. All things in moderation, friends. All things in moderation. I recently discovered I could make fudge with just chocolate chips, sweetened condensed milk, vanilla extract, and a thick pot on slow heat. I tried it with dark chocolate chunks and I tried it with semi-sweet chocolate chips. It''s better with both kinds. It comes out pretty bad with just the dark chocolate. The best add-ins are crushed almonds and marshmallows -- what you get from that is Rocky Road. It takes about twenty minutes from start to fridge, and then it takes about six months to work off the twenty pounds you gain from eating it. All things in moderation, friends. All things in moderation.', N'Joseph Montoya', CAST(N'2021-01-10 16:22:13.730' AS DateTime))
INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (5, N'The total population of insects is estimated to be a billion times greater than that of the human population.', N'i1.jpg', N'There was something in the tree. It was difficult to tell from the ground, but Rachael could see movement. She squinted her eyes and peered in the direction of the movement, trying to decipher exactly what she had spied', N'There was something in the tree. It was difficult to tell from the ground, but Rachael could see movement. She squinted her eyes and peered in the direction of the movement, trying to decipher exactly what she had spied. The more she peered, however, the more she thought it might be a figment of her imagination. Nothing seemed to move until the moment she began to take her eyes off the tree. Then in the corner of her eye, she would see the movement again and begin the process of staring again.
 There was something in the tree. It was difficult to tell from the ground, but Rachael could see movement. She squinted her eyes and peered in the direction of the movement, trying to decipher exactly what she had spied. The more she peered, however, the more she thought it might be a figment of her imagination. Nothing seemed to move until the moment she began to take her eyes off the tree. Then in the corner of her eye, she would see the movement again and begin the process of staring again.
', N'Jared Wallace', CAST(N'2020-05-29 16:22:13.730' AS DateTime))
INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (6, N'The average household income of the top 1% in the United States is $1,260,508 per year.', N'i1.jpg', N'Since they are still preserved in the rocks for us to see, they must have been formed quite recently, that is, geologically speaking. What can explain these striations and their common orientation? Did you ever hear about the Great Ice Age or the Pleistocene Epoch? ', N'Since they are still preserved in the rocks for us to see, they must have been formed quite recently, that is, geologically speaking. What can explain these striations and their common orientation? Did you ever hear about the Great Ice Age or the Pleistocene Epoch? Less than one million years ago, in fact, some 12,000 years ago, an ice sheet many thousands of feet thick rode over Burke Mountain in a southeastward direction. The many boulders frozen to the underside of the ice sheet tended to scratch the rocks over which they rode. The scratches or striations seen in the park rocks were caused by these attached boulders. The ice sheet also plucked and rounded Burke Mountain into the shape it possesses today. Since they are still preserved in the rocks for us to see, they must have been formed quite recently, that is, geologically speaking. What can explain these striations and their common orientation? Did you ever hear about the Great Ice Age or the Pleistocene Epoch? Less than one million years ago, in fact, some 12,000 years ago, an ice sheet many thousands of feet thick rode over Burke Mountain in a southeastward direction. The many boulders frozen to the underside of the ice sheet tended to scratch the rocks over which they rode. The scratches or striations seen in the park rocks were caused by these attached boulders. The ice sheet also plucked and rounded Burke Mountain into the shape it possesses today.', N'Nero Rowe', CAST(N'2019-05-24 16:22:21.587' AS DateTime))
INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (7, N'Lettuce is a member of the sunflower family.', N'i1.jpg', N'It went through such rapid contortions that the little bear was forced to change his hold on it so many times he became confused in the darkness, and could not, for the life of him, tell whether he held the sheep right side up, or upside down', N'It went through such rapid contortions that the little bear was forced to change his hold on it so many times he became confused in the darkness, and could not, for the life of him, tell whether he held the sheep right side up, or upside down. But that point was decided for him a moment later by the animal itself, who, with a sudden twist, jabbed its horns so hard into his lowest ribs that he gave a grunt of anger and disgust. It went through such rapid contortions that the little bear was forced to change his hold on it so many times he became confused in the darkness, and could not, for the life of him, tell whether he held the sheep right side up, or upside down. But that point was decided for him a moment later by the animal itself, who, with a sudden twist, jabbed its horns so hard into his lowest ribs that he gave a grunt of anger and disgust.', N'Eagan Rhodes', CAST(N'2021-02-25 16:22:21.587' AS DateTime))
INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (8, N'On average, 46.1% of Americans have less than $10,000 in assets when they die.', N'i1.jpg', N'Out of another, I get a lovely view of the bay and a little private wharf belonging to the estate. There is a beautiful shaded lane that runs down there from the house. I always fancy I see people walking in these numerous paths and arbors', N'Out of another, I get a lovely view of the bay and a little private wharf belonging to the estate. There is a beautiful shaded lane that runs down there from the house. I always fancy I see people walking in these numerous paths and arbors, but John has cautioned me not to give way to fancy in the least. He says that with my imaginative power and habit of story-making a nervous weakness like mine is sure to lead to all manner of excited fancies and that I ought to use my will and good sense to check the tendency. So I try. Out of another, I get a lovely view of the bay and a little private wharf belonging to the estate. There is a beautiful shaded lane that runs down there from the house. I always fancy I see people walking in these numerous paths and arbors, but John has cautioned me not to give way to fancy in the least. He says that with my imaginative power and habit of story-making a nervous weakness like mine is sure to lead to all manner of excited fancies and that I ought to use my will and good sense to check the tendency. So I try.', N'Vaughan Moore', CAST(N'2020-05-17 16:22:21.587' AS DateTime))
INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (9, N'Originally, cigarette filters were made out of cork, the look of which was incorporated into today’s pattern.', N'i1.jpg', N'Dave wasn''t exactly sure how he had ended up in this predicament. He ran through all the events that had lead to this current situation and it still didn''t make senseDave wasn''t exactly sure how he had ended up in this predicament. He ran through all the events that had lead to this current situation and it still didn''t make sense', N'Dave wasn''t exactly sure how he had ended up in this predicament. He ran through all the events that had lead to this current situation and it still didn''t make sense. He wanted to spend some time to try and make sense of it all, but he had higher priorities at the moment. The first was how to get out of his current situation of being naked in a tree with snow falling all around and no way for him to get down.
 Dave wasn''t exactly sure how he had ended up in this predicament. He ran through all the events that had lead to this current situation and it still didn''t make sense. He wanted to spend some time to try and make sense of it all, but he had higher priorities at the moment. The first was how to get out of his current situation of being naked in a tree with snow falling all around and no way for him to get down.
', N'Len Velez', CAST(N'2018-05-06 16:22:21.587' AS DateTime))
INSERT [dbo].[Article] ([id], [title], [image], [short_content], [content], [author], [published_date]) VALUES (10, N'Coca-Cola owns all website URLs that can be read as ahh, all the way up to 62 h’s.', N'i1.jpg', N'She nervously peered over the edge. She understood in her mind that the view was supposed to be beautiful, but all she felt was fear. ', N'She nervously peered over the edge. She understood in her mind that the view was supposed to be beautiful, but all she felt was fear. There had always been something about heights that disturbed her, and now she could feel the full force of this unease. She reluctantly crept a little closer with the encouragement of her friends as the fear continued to build. She couldn''t help but feel that something horrible was about to happen. She nervously peered over the edge. She understood in her mind that the view was supposed to be beautiful, but all she felt was fear. There had always been something about heights that disturbed her, and now she could feel the full force of this unease. She reluctantly crept a little closer with the encouragement of her friends as the fear continued to build. She couldn''t help but feel that something horrible was about to happen.', N'Russell Cruz', CAST(N'2020-10-15 16:22:21.587' AS DateTime))
SET IDENTITY_INSERT [dbo].[Article] OFF
USE [master]
GO
ALTER DATABASE [J3LP0004] SET  READ_WRITE 
GO
