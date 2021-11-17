# Lab_4_4z3

Zadanie2.
Do zbudowania obrazu należy użyć polecenia:  ``` docker build -t lab4docker . ```

Zadanie3.
W celu utworzenia wolumenu o LocalVol należy użyć:   ``` docker volume create LocalVol ```

Zadanie4.
Do uruchomienia kontenera na bazie zbudowanego obrazu z podłączonym wolumenem oraz z ograniczoną ilością wykorzystanmej pamięci RAM do 512MB należy użyć
``` docker run -it --name alpine4 --memory=512m --mount source=LocalVol,target=/logi lab4docker ```

Zadanie5.
a) W celu sprawdzenia zawartości pliu info.log należy użyć polecenia (w konsoli uruchomionego kontenera)
```ls``` w celu sprawdzenia czy plik istnieje, następnie zawartość otworzyć poleceniem ```cat info.log```

b) W celu sprawdzenia czy kontener ma ograniczoną ilość pamięci należy użyć polecenia:
```docker stats --no-stream --format {{.MemUsage}} alpine4```
