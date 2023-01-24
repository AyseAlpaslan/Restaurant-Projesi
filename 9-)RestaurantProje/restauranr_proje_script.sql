USE [master]
GO
/****** Object:  Database [Restaurant]    Script Date: 12.12.2022 12:47:34 ******/
CREATE DATABASE [Restaurant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Restaurant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Restaurant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Restaurant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Restaurant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Restaurant] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restaurant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Restaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restaurant] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Restaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restaurant] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Restaurant] SET  MULTI_USER 
GO
ALTER DATABASE [Restaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restaurant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Restaurant] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Restaurant] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Restaurant', N'ON'
GO
ALTER DATABASE [Restaurant] SET QUERY_STORE = OFF
GO
USE [Restaurant]
GO
/****** Object:  Table [dbo].[AdminGiris]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminGiris](
	[Uid1] [int] IDENTITY(1,1) NOT NULL,
	[Name1] [varchar](50) NULL,
	[UserId] [varchar](50) NULL,
	[Password1] [varchar](50) NULL,
	[isActive] [bit] NULL,
	[Role] [int] NULL,
	[createdon] [datetime] NULL,
 CONSTRAINT [PK_AdminGiris] PRIMARY KEY CLUSTERED 
(
	[Uid1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menü]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menü](
	[MenuNo] [int] IDENTITY(1,1) NOT NULL,
	[YemekAdi] [varchar](50) NULL,
	[YemekFiyati] [money] NULL,
	[IcecekAdi] [varchar](50) NULL,
	[IcecekFiyati] [money] NULL,
	[TatliAdi] [varchar](50) NULL,
	[TatliFiyati] [money] NULL,
 CONSTRAINT [PK_Menü] PRIMARY KEY CLUSTERED 
(
	[MenuNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusteriGiris]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusteriGiris](
	[Uid1] [int] IDENTITY(1,1) NOT NULL,
	[Name1] [varchar](50) NULL,
	[UserId] [varchar](50) NULL,
	[Password1] [varchar](50) NULL,
	[isActive] [bit] NULL,
	[Role] [int] NULL,
	[createdon] [datetime] NULL,
 CONSTRAINT [PK_MusteriGiris] PRIMARY KEY CLUSTERED 
(
	[Uid1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PersonelNo] [int] IDENTITY(1,1) NOT NULL,
	[Unvan] [varchar](50) NULL,
	[Yas] [int] NULL,
	[AdSoyad] [varchar](50) NULL,
	[Adres] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
	[Maas] [money] NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[PersonelNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervasyon]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyon](
	[RezervasyonNo] [int] IDENTITY(1,1) NOT NULL,
	[MasaNo] [int] NULL,
	[KisiAdSoyad] [varchar](50) NULL,
	[KisiSayisi] [int] NULL,
	[GelecegiSaat] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
 CONSTRAINT [PK_Rezervasyon] PRIMARY KEY CLUSTERED 
(
	[RezervasyonNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparis]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis](
	[SiparisNo] [int] IDENTITY(1,1) NOT NULL,
	[YemekAdi] [varchar](50) NULL,
	[IcecekAdi] [varchar](50) NULL,
	[TatliAdi] [varchar](50) NULL,
 CONSTRAINT [PK_Siparis] PRIMARY KEY CLUSTERED 
(
	[SiparisNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([PersonelNo], [Unvan], [Yas], [AdSoyad], [Adres], [Telefon], [Maas]) VALUES (2, N'Şef', 28, N'Fatma Sarı', N'Göztepe', N'562 358 24 65', 20000.0000)
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[Rezervasyon] ON 

INSERT [dbo].[Rezervasyon] ([RezervasyonNo], [MasaNo], [KisiAdSoyad], [KisiSayisi], [GelecegiSaat], [Telefon]) VALUES (2, 1, N'Şeyma Kır', 3, N'15.30', N'535 658 45 98')
SET IDENTITY_INSERT [dbo].[Rezervasyon] OFF
GO
SET IDENTITY_INSERT [dbo].[Siparis] ON 

INSERT [dbo].[Siparis] ([SiparisNo], [YemekAdi], [IcecekAdi], [TatliAdi]) VALUES (1, N'Karışık Pizza', N'Kola', N'Sufle')
SET IDENTITY_INSERT [dbo].[Siparis] OFF
GO
/****** Object:  StoredProcedure [dbo].[MenuEkleYenile]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MenuEkleYenile]
@MenuNo int,
@YemekAdi varchar(50),
@YemekFiyati int,
@IcecekAdi varchar(50),
@IcecekFiyati int,
@TatliAdi varchar(50),
@TatliFiyati int
as begin
if @MenuNo=0
insert into Menü(YemekAdi,YemekFiyati,IcecekAdi,IcecekFiyati,TatliAdi,TatliFiyati)values(@YemekAdi,@YemekFiyati,@IcecekAdi,@IcecekFiyati,@TatliAdi,@TatliFiyati)
else
update Menü set YemekAdi=@YemekAdi,YemekFiyati=@YemekFiyati,@IcecekAdi=@IcecekAdi,IcecekFiyati=@IcecekFiyati,TatliAdi=@TatliAdi,TatliFiyati=@TatliFiyati where MenuNo=@MenuNo
end
GO
/****** Object:  StoredProcedure [dbo].[MenuListele]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MenuListele]
as begin
select * from Menü
end
GO
/****** Object:  StoredProcedure [dbo].[MenuSil]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MenuSil]
@MenuNo int
as begin
delete from Menü where MenuNo=@MenuNo 
end
GO
/****** Object:  StoredProcedure [dbo].[MenuSirala]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MenuSirala]
@MenuNo int
as begin
select * from Menü where MenuNo=@MenuNo
end
GO
/****** Object:  StoredProcedure [dbo].[PersonelEkleYenile]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[PersonelEkleYenile]
@PersonelNo int,
@Unvan varchar(50),
@Yas int,
@AdSoyad varchar(50),
@Adres varchar(50),
@Telefon varchar(50),
@Maas money
as begin
if @PersonelNo=0
insert into Personel(Unvan,Yas,AdSoyad,Adres,Telefon,Maas)values(@Unvan,@Yas,@AdSoyad,@Adres,@Telefon,@Maas)
else
update Personel set Unvan=@Unvan,Yas=@Yas,AdSoyad=@AdSoyad,Adres=@Adres,Telefon=@Telefon,Maas=@Maas where PersonelNo=@PersonelNo
end
GO
/****** Object:  StoredProcedure [dbo].[PersonelListele]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PersonelListele]
as begin
select * from Personel
end
GO
/****** Object:  StoredProcedure [dbo].[PersonelSirala]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PersonelSirala]
@PersonelNo int
as begin
select * from Personel where PersonelNo=@PersonelNo
end
GO
/****** Object:  StoredProcedure [dbo].[PSil]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PSil]
@PersonelNo int
as begin
delete from Personel where PersonelNo=@PersonelNo
end
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonEkleYenile]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[RezervasyonEkleYenile]
@RezervasyonNo int,
@MasaNo int,
@KisiAdSoyad varchar(50),
@KisiSayisi int,
@GelecegiSaat varchar(50),
@Telefon varchar(50)
as begin
if @RezervasyonNo=0
insert into Rezervasyon(MasaNo,KisiAdSoyad,KisiSayisi,GelecegiSaat,Telefon)values(@MasaNo,@KisiAdSoyad,@KisiSayisi,@GelecegiSaat,@Telefon)
else
update Rezervasyon set MasaNo=@MasaNo,KisiAdSoyad=@KisiAdSoyad,KisiSayisi=@KisiSayisi,GelecegiSaat=@GelecegiSaat,Telefon=@Telefon where RezervasyonNo=@RezervasyonNo
end
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonListele]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[RezervasyonListele]
as begin
select * from Rezervasyon
end
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonSil]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[RezervasyonSil]
@RezervasyonNo int
as begin
delete from Rezervasyon where RezervasyonNo=@RezervasyonNo
end
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonSirala]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[RezervasyonSirala]
@RezervasyonNo int
as begin
select * from Rezervasyon where RezervasyonNo=@RezervasyonNo
end
GO
/****** Object:  StoredProcedure [dbo].[SiparisEkleYenile]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SiparisEkleYenile]
@SiparisNo int,
@YemekAdi varchar(50),
@IcecekAdi varchar(50),
@TatliAdi varchar(50)
as begin
if @SiparisNo=0
insert into Siparis(YemekAdi,IcecekAdi,TatliAdi)values(@YemekAdi,@IcecekAdi,@TatliAdi)
else
update Siparis set YemekAdi=@YemekAdi,@IcecekAdi=@IcecekAdi,TatliAdi=@TatliAdi where SiparisNo=@SiparisNo
end
GO
/****** Object:  StoredProcedure [dbo].[SiparisListele]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SiparisListele]
as begin
select * from Siparis
end
GO
/****** Object:  StoredProcedure [dbo].[SiparisSil]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SiparisSil]
@SiparisNo int
as begin
delete from Siparis where SiparisNo=@SiparisNo
end
GO
/****** Object:  StoredProcedure [dbo].[SiparisSirala]    Script Date: 12.12.2022 12:47:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SiparisSirala]
@SiparisNo int
as begin
select * from Siparis where SiparisNo=@SiparisNo
end
GO
USE [master]
GO
ALTER DATABASE [Restaurant] SET  READ_WRITE 
GO
