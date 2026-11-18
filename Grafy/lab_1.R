library(igraph)

graf1<-graph_from_literal(a-b-g-d-a, a-c-f-g-j-k-i-f-j-h-i, d-e-f, c-h-b,e-h)
print(graf1);
graf1
d1<- graph_from_literal(1-+2-+3-+4-+1)
d2<- graph_from_literal(5-+6-+7-+8,5-+8)
d3<- graph_from_literal(1-+2-+3-+4,1-+4,4-+2)
d3

G1<-matrix(c(0,1,0,0,0,
             1,0,1,0,0,
             0,1,0,1,1,
             0,0,1,0,1,
             0,0,1,1,0), ncol=5,byrow=TRUE)
g1<-graph_from_adjacency_matrix(G1, mode = 'undirected')
g1
G1edges<-matrix(c(1,2,
                  2,3,
                  3,4,
                  4,5,
                  3,5), ncol=2, byrow=TRUE)
gr1<-graph_from_edgelist(G1edges, directed = FALSE)

V(graf1)
E(graf1)

degree(graf1)
degree(d3)
degree(d3,mode="out")
degree(d3,mode="in")

components(graf1)
components(d3, mode='weak')
components(d3, mode='strong')

plot(graf1)
plot(d3)
tkpl<-tkplot(d3)
tkgraf<-tk_coords(tkpl)
plot(d3, layout=tkgraf)
edge_attr(graf1, "weight") <- c(2,2,1,5,1,4,3,2,3,6,4,1,2,1,5,3,2,3,1)
E(graf1)$weight <- c(2,2,1,5,1,4,3,2,3,6,4,1,2,1,5,3,2,3,1)
plot(graf1, edge.label = E(graf1)$weight)
plot(graf1, edge.label = E(graf1)$weight, edge.width = E(graf1)$weight)
edge_attr(graf1, "nazwa") <- c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","R","S","T")
plot(graf1, edge.label = E(graf1)$nazwa)
plot(graf1, edge.label = E(graf1)$weight, edge.width = E(graf1)$weight,layout=layout_in_circle)
plot(graf1, edge.label = E(graf1)$weight, edge.width = E(graf1)$weight,layout=layout_with_kk)
plot(graf1, edge.label = E(graf1)$weight, edge.width = E(graf1)$weight,layout=layout_with_fr(graf1))
plot(graf1, edge.label = E(graf1)$weight, edge.width = E(graf1)$weight,layout=layout_in_circle,
     vertex.color="green",vertex.shape="square",vertex.size=8)
cd3<-components(d3, mode='strong')
plot(d3, vertex.color=cd3$membership)


#zadanie 1
#nieskierowany, ważony
mojgraf<-graph_from_literal(a-b-c-d, a-c-e-f-c-g, f-g-h-b-d)
mojgraf
plot(mojgraf)
edge_attr(mojgraf, "weight")<-c(1,2,3,4,5,6,7,8,9,10,11,12)
plot(mojgraf, edge.label = E(mojgraf)$weight)

#skierowany, ważony
mojgrafs<-graph_from_literal(1-+2-+3-+4-+5-+6-+7-+8-+1, 1-+4-+7)
plot(mojgrafs)
components(mojgrafs, mode='weak')
components(mojgrafs, mode='strong')
