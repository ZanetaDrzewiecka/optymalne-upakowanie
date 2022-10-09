# optymalne-upakowanie
## Cel projektu
Ta symulacja nawiązuje do problemów optymalnego upakowania (do najpopularniejszych należy problem plecakowy). Metodą Monte Carlo należy przeprowadzić symulację losowego upakowywania figur w zadany prostokątny obszar. Interesuje nas rozkład liczby figur, które uda się upakować w zadanych obszar.

## Założenia

  **1.** Obszar upakowywania jest zadany poprzez długość i wysokość i ma kształt prostokąta $x∈(0,szer)$ oraz $y∈(0,wys)$.
  
  **2.** Zbiór pakowanych figur ma zawierać tylko wielokąty foremne opisane na okręgach o promieniach z zakresu $(Rmin, Rmax)$.
  
  **3.** W każdym kroku upakowywana figura nie może żadną częścią wychodzić poza obszar oraz nie może nakładać się na inne już upakowane figury.
 
## Opis algorytmu 


  **Krok 1.** Wprowadź liczby: $Ns$ - ilość powtórzeń symulacji, $Rmin$ - minimalny promień wygenerowanego wielokąta, $Rmax$ - maksymalny promień wygenerowanego wielokąta, $szer$ - szerokość zadanego obszaru, $wys$ - wysokość zadanego obszaru, $Nf$ - liczba wygenerowanych figur w jednej symulacji. Tworzymy pustą listę $lista$.
  
  **Krok 2.** Utwórz pustą listę $LL$ i $listaFigur$. 
  
  **Krok 3.** Wygeneruj nowy wielokąt $PKT$ składający się z zmiennych:
  **~**$x0$, $y0$ - środek wygenerowanej figury, 
  **~**$R$ - promień, 
  **~**$x$, $y$ - współrzędne wierzchołków wygenerowanego wielokąta. 
  Ustaw zmienną $S$ na wartość "true", sprawdzającą czy zostały spełnione wszystkie warunki. 
  
  **Krok 4.** Sprawdź czy wierzchołki wygenerowanego wielokąta $PKT$ mieszczą się w zadanym obszarze. Jeśli tak, to przejdź do kroku 5, jeśli nie wróć do kroku 3. 
  
  **Krok 5.** Dla nowo wygenerowanego wielokąta $PKT$ sprawdzamy z każdym wygenerowanym do tej pory wielokątem czy żaden punkt z wielokatu $PKT$ nie pokrywa się z wygenerowanymi do tej pory wielokątami, czy żadne punkty z wygenerowanych do tej pory wielokątów nie pokrywają się z nowo wygenerowanym wielokątem $PKT$ oraz czy środki wszytskich wygenerowanych wielokątów nie znajdują się w nowo wygenerowanym wielokącie i czy środek nowo wygenerowanego wielokątu nie znajduje się w dotąd wygenerowanych wielokątach zapisanych do listy $listyFigury$. Jeśli warunek nie zostaje spełniony, to do zmiennej $S$ przypisz wartość FALSE i przerwij działanie pętli, jeśli tak to przypisz wartość TRUE i do $listyFigur$ zapisz wielokąt.
  
  **Krok 6.** Koniec algorytmu.
  
## Wyniki symulacji

Symulacja została przeprowadzona dla nastepujących parametrów: 

  **-** $Ns$ = 500 
  
  **-** $Rmin$ = 0.1 
  
  **-** $Rmax$ = 1.5 
  
  **-** $szer$ = 10 
  
  **-** $wys$ = 10 
  
  **-** $Nf$ = 1000
