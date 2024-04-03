SELECT calisanlar.ad, calisanlar.soyad, calisanlar.maas
FROM calisanlar
INNER JOIN (
    SELECT calisan_birim_id, MAX(maas) AS max_maas
    FROM calisanlar
    GROUP BY calisan_birim_id
) AS max_maaslar ON calisanlar.calisan_birim_id = max_maaslar.calisan_birim_id AND calisanlar.maas = max_maaslar.max_maas;