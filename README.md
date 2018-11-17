# GY8
## Fong árnyalási modell

fényforrás: `light_pos`
a fényforrás fele mutató vektor `to_light`
fény intenzitása a fény forrása és a pont közti szög: `cos`, ez a diffuz fény
p pontból a kamera fele mutató vektor a `to_eye`, ez a visszavert fény irányvektora, ez a spekuláris fény `S = (cosB)^32`
ambiens fény: általános szórt fény.

`directional ligth` a beeső fénysugarak vektorát kel megadni
> normálvektror síkon: két vektor szorzata
>                      gömbön: a sugár meghosszabítása
>                      hengeren a magasságra merőleges
 
#### Textúrakooordináták:
bal alsó 0,0
bal felső 0,1
jobb alsó 1,0
jobb felsó 1,1

> háromszögre a textúra fele
`(0,0);(1,0);(0,1)`


> háromszögre a textúra negyede
`(0,0);(0.5,0);(0,0.5)`
