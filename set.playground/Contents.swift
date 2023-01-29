var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurassic park",
    "De volta para o futuro",
]
 
var movies2: Set<String> = []

movies.insert("Homem aranha")

movies.count

let result = movies.insert("Homem aranha")
result.inserted
result.memberAfterInsert

movies.count

movies.remove("Homem aranha")
print(movies)
 
for movie in movies {
    print(movie)
}

if (movies.contains("Matrix")) {
    print("Matrix já está na lista")
}

var myWifeMovies: Set<String> = [
    "De repente 30",
    "Mensagem para você",
    "Sintonia de amor",
    "De volta para o futuro",
    "Jurassic park"
]

let favoritesMovies = movies.intersection(myWifeMovies)
print(favoritesMovies)
 
let allMovies = movies.union(myWifeMovies)
print(allMovies)

movies = movies.subtracting(myWifeMovies)
print(movies)

let address: (
    type: String,
    name: String,
    number: Int,
    city: String,
    state: String,
    zipCode: String
) = (
    "Av",
    "Paulista",
    1578,
    "São Paulo",
    "SP",
    "60760-000"
)
  
print(address.state)
