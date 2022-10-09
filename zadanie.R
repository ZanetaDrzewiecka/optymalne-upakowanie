lista<-c()

for(i in 1:Ns){
LL<-c()
listaFigur<-c()
for(i in 1:Nf){
   alfa <- runif(1,0,360)
   R <- runif(1,Rmin,Rmax)
   x0<- runif(1,0,szer)
   N <- round(runif(1,3,10))
   y0<- runif(1,0,wys)
   kat<-seq(0,2*pi,len=N+1)
   x<-x0+R*cos(kat+alfa)
   y<-y0+R*sin(kat+alfa)
   PKT<-rbind(x,y,x0,y0,R)
   S <- TRUE
   if(all(PKT['x',]>=0) && all(PKT['x',]<=szer) && all(PKT['y',]>=0) && all(PKT['y',]<=wys) ){
      for(wielokat in listaFigur){
      S <- S & (all(sum(point.in.polygon(PKT['x',],PKT['y',],wielokat['x',],wielokat['y',]))==0)) & (all(sum(point.in.polygon(wielokat['x',],wielokat['y',],PKT['x',],PKT['y',]))==0)) & (all(sum(point.in.polygon(PKT['x0',],PKT['y0',],wielokat['x',],wielokat['y',]))==0)) & (all(sum(point.in.polygon(wielokat['x0',],wielokat['y0',],PKT['x',],PKT['y',]))==0))
      if(!S) break()
      }
   }else S <- FALSE
    if(S==TRUE){
     listaFigur <- append(listaFigur,list(PKT))
    }
}
p <- ggplot() + coord_cartesian(xlim = c(0, szer),
                             ylim = c(0, wys)
 ) + coord_equal()
licznik<-0
for(wielokat in listaFigur){
  licznik<- licznik+1 
  
 p <- p + geom_polygon(
         data = tibble(
         x = wielokat['x',],
         y = wielokat['y',]
      ),
      aes(x =x, y = y)
 )
}
LL<-c(LL,licznik)
print(p)
lista<-c(lista,LL)
}
hist(lista)
