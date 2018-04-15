[Mathigon: Graphs and Networks](https://mathigon.org/course/graphs-and-networks)
====

Studylog
----

Fri  7 Jul 2017 [3hrs]

Definitions
----

Vertex/Vertices
: point in a network  

Edge  
: a connection between vertices  

Order (of graph)  
: number of vertices  

Degree (of vertex)  
: number of edges that meet at vertex

Face (of planar graph)
: areas that the edges and vertices make  

Directed Graph  
: edges only go one way  

Disconnected Graph  
: distinct segments not connected by edges  

Loops  
: multiple edges between same pair of vertices  

Subgraph  
: made from removing edges/vertices from existing graph  

Cycles  
: single ring of vertices connected by the same number of edges, found as subgraphs of most graphs  

Complete Graph ($K_N$)
: every vertex is connected to every other vertex (handshakes at a party)
: has (N*N-1)/2 edges

Bipartite Graph ($K_{x,y}$)  
: every vertex in set x is connected to every vertex in set y, but not to vertices in its own set.
: has $x * y$ edges

Planar Graph
: graph that can be drawn without overlapping edges
: $K_5$ is the smallest complete graph that is not planar
: $K_{3,3} is the smallest bipartite graph that is not planar
: travel each edge only once

Hamiltonian cycles
: paths which visit every vertex exactly once	

Examples
----

### Handshakes

* person = vertex (n), handshake = edge  
* total handshakes = $\frac{n * (n-1)}{2}$ or $\sum^{n-1}_{i=1}i$  

### Speed dating

* two sets of vertices (x, y)
* total dates = $x*y$

### Bridges of Konigsberg & Three Utilities

* graph must be planar to satisfy single path
* at most two vertices can have odd degrees

### Euler Formula

* planar graphs: F + V = E + 1
* polyhedra: F + V = E + 2
* planar graphs similar to the nets of polyhedra

### Map Coloring

* four color theorem
* every pair of vertices connected by an edge must be different colours

### Travelling Salesman problem

* in complete graphs, there are n! hamiltonian cycles
* to find shortest, you need to try all but that is computationally impossible 
* instead, use Heuristics
    * greedy algorithm/nearest neighbor algorithm
    * 2-Opt algorithm
    * ant colony system algorithm















