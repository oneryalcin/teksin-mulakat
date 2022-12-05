-- Table: Kisiler

-- ```
-- +-------------+---------+
-- | Sutun       | Type    |
-- +-------------+---------+
-- | kisiId      | int     |
-- | soyad       | text    |
-- | ad          | text    |
-- +-------------+---------+
-- ```
-- `kisiId` bu tablodaki primary key'dir.



-- Table: Adres

-- ```
-- +-------------+---------+
-- | Sutun       | Type    |
-- +-------------+---------+
-- | adresId     | int     |
-- | kisiId      | int     |
-- | sehir       | text    |
-- | ulke        | text    |
-- +-------------+---------+
-- ```
-- `adresId` bu tablodaki primary key'dir.


-- Soru:
-- `Kisiler` tablosundaki insanlarin `ad`, `soyad`, `sehir` ve `ulke` bilgilerini gosteren bir SQL sorgusu yaziniz. Eger `kisiId` `Adres` tablosunda yer almiyorsa `sehir` be `ulke` kismini null ile belirtiniz.  




-- Ornek 1:
 
-- ```
-- Kisiler tablosu:
-- +----------+----------+-----------+
-- | kisiId   | soyad    | ad        |
-- +----------+----------+-----------+
-- | 1        | Mercimek | Baki      |
-- | 2        | Wayne    | Bruce     |
-- +----------+----------+-----------+

-- Adress tablosu:
-- +-----------+----------+---------------+------------+
-- | adresId   | kisiId   | sehir         | ulke       |
-- +-----------+----------+---------------+------------+
-- | 1         | 2        | Gotham        | ABD        |
-- | 2         | 3        | Ankara        | Turkiye    |
-- +-----------+----------+---------------+------------+

-- Sonuc: 
-- +-----------+----------+---------------+----------+
-- | ad        | soyad    | sehir         | ulke     |
-- +-----------+----------+---------------+----------+
-- | Baki      | Mercimek |               |          |
-- | Bruce     | Wayne    | Gotham        | ABD      |
-- +-----------+----------+---------------+----------+
-- ```
-- -- Aciklama: 
-- -- kisiId = 1 icin Adres tablosunda herhangi bir deger yok bu yuzden sehir ve ulke degerleri Null (Bos).
