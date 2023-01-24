create proc PersonelListele
as begin
select * from Personel
end

create proc MenuListele
as begin
select * from Menü
end

create proc RezervasyonListele
as begin
select * from Rezervasyon
end


create proc SiparisListele
as begin
select * from Siparis
end
--crup create-update'den oluþur  bir action result'ta tek iþlemde hem eklemeyi hem de güncellemeyi yapar

create proc PersonelSirala
@PersonelNo int
as begin
select * from Personel where PersonelNo=@PersonelNo
end

create proc MenuSirala
@MenuNo int
as begin
select * from Menü where MenuNo=@MenuNo
end

create proc RezervasyonSirala
@RezervasyonNo int
as begin
select * from Rezervasyon where RezervasyonNo=@RezervasyonNo
end


create proc SiparisSirala
@SiparisNo int
as begin
select * from Siparis where SiparisNo=@SiparisNo
end

create proc PSil
@PersonelNo int
as begin
delete from Personel where PersonelNo=@PersonelNo
end

create proc MenuSil
@MenuNo int
as begin
delete from Menü where MenuNo=@MenuNo 
end

create proc RezervasyonSil
@RezervasyonNo int
as begin
delete from Rezervasyon where RezervasyonNo=@RezervasyonNo
end

create proc SiparisSil
@SiparisNo int
as begin
delete from Siparis where SiparisNo=@SiparisNo
end

create proc PersonelEkleYenile
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

create proc MenuEkleYenile
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

create proc RezervasyonEkleYenile
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

create proc SiparisEkleYenile
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





--sql sorgusu
--mvc 
--masaüstü
--index layout
--razor page
--render
--model controllerý açýklayýnýz

