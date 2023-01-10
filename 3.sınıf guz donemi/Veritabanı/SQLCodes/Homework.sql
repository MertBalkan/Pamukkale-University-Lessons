--Soru 5
--select COUNT(*) as Sayi, virusTurId from tbl_Virus group by virusTurId order by Sayi desc 
--go

--Soru 5 Eger soruda türlerin adlarýna göre gruplanmasýný isteseydi
--select COUNT(*) as Sayi, tbl_VirusTur.ad from 
--tbl_Virus INNER JOIN 
--tbl_VirusTur ON 
--tbl_Virus.virusTurId = tbl_VirusTur.id 
--group by tbl_VirusTur.Ad order by Sayi desc
--go

--Soru 6
--select tbl_Virus.ad, genDizilimi from tbl_Virus INNER JOIN
--tbl_VirusTur ON
--tbl_Virus.virusTurId = tbl_VirusTur.id
--where tbl_VirusTur.Ad like '%çiDNA virüsleri%'

--Soru 7
--select Virus2.Ad from tbl_Virus as Virus1 INNER JOIN
--tbl_Virus as Virus2 ON
--Virus2.id = Virus1.ataId
--where Virus1.ataId is not null 

--Soru 8
--select virusTur.Ad from tbl_Virus virus INNER JOIN
--tbl_VirusTur virusTur ON
--virus.id = virusTur.id
--where virus.Ad like '%herpes%'

--Soru 9
--SELECT tbl_virustur.* FROM tbl_virus
--RIGHT JOIN tbl_virustur
--ON tbl_virustur.id=tbl_virus.virusTurId
--WHERE tbl_virus.id IS NULL
--Soru 10--SELECT tbl_VirusTur.ad, COUNT(*) as Sayisi
--FROM tbl_virus INNER JOIN tbl_VirusTur
--ON tbl_virus.virusturID=tbl_VirusTur.id
--GROUP BY tbl_VirusTur.ad HAVING COUNT(*)>=2
--ORDER BY Sayisi DESC
--Soru 11
--INSERT INTO tbl_Virus
--(Ad, genDizilimi, ataId, kesifTarihi, virusTurId)
--VALUES 
--('Herpesviridae 1', 'STSSAT', 
--(select id from tbl_Virus where Ad like '%Herpesvirüsler%'),
--'1989.09.15',
--(select id from tbl_VirusTur where Ad like '%çiDNA virüsleri%'))

--Soru 12
--UPDATE tbl_Virus SET
--genDizilimi = 'TASGSAT'
--where ad = 'Reovirüsler'

--Soru 13
--delete tbl_Virus where id = 12