SELECT ad, soyad, maas FROM calisanlar
WHERE calisan_birim_id IN (SELECT birim_id FROM birimler 
WHERE birim_ad = 'Yaz�l�m' OR birim_ad = 'Donan�m');