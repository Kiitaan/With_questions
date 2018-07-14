require "sinatra"
require "sinatra/reloader" if development?
require_relative "database"

# DB = DB.to_json

get "/" do

  @DB = [
  {
    title: "Parce que c'est le plus drôle et le plus gentil",
    content: "Christian LIM est connu de tous pour sa bienveillance légendaire et son sens de l'humour à tout épreuve. Ce n'est pas pour rien qu'on le surnomme Chri-chri punchline dans le milieu. En plus, il a soif d'apprendre.",
    photo: "https://image.noelshack.com/fichiers/2018/28/6/1531564294-christian-filtre.jpg",
    rating: "5"
  },
  {
    title: "Diamant, Saphir, Emeraude...Il a choisi RUBY",
    content: "Après tant d'années de suspense, il a enfin choisi RUBY. L'avenir nous dira ce que le futur nous réserve!!! Espérons qu'il soit brillant. ",
    photo: "https://image.noelshack.com/fichiers/2018/28/6/1531562883-ruby.png",
    rating: "4"
  },
  {
    title: "La méthode agile n'a plus de secret pour lui",
    content: "Autrefois utilisé par les révolutionnaires, cette méthode est aujourd'hui utilisé par la plupart des entreprises. Même la photo est agile...on ne la voit plus dans le cadre. Backlog, sprint, ticket, rien ne lui résiste.",
    rating: "4"
  },
  {
    title: "Une révolution est en cours",
    content: "Suite au burnout du célébre chef étoilé Jean BONNOT causé par une gestion administrative de son retaurant beaucoup trop lourde. Tous les Restaurateurs, Hôteliers et Boulangers ont décidé de faire la grêve. Pour résoudre ce problème Skello a décidé de créer un gestionnaire de planning révolutionnaire. On peut dire qu'ils ont du pain sur la planche. Dans ce cadre là, le valeureux Christian LIM souhaite leur offrir ses services.",
    photo: "https://image.noelshack.com/fichiers/2018/28/6/1531566008-greve-1.jpg",
  },
  {
    title: "Et enfin...parce qu'on est CHAMPION DU MONDE",
    content: "Emmené par Didier DESCHAMPS, l'équipe de FRANCE remporte une nouvelle coupe du monde! C'est tout un peuple qui danse, qui chante et qui acclame KYLIAN MBAPPE.",
    photo: "https://image.noelshack.com/fichiers/2018/28/6/1531565865-37228313-10216521268162942-452325077778694144-n.jpg",
    rating: "2"
  }
]

@COMMENTS = [
  [ "FIRST", "Nous pleurons encore son départ", "Embauchez-le", "Je confirme"],
  ["RUBY c'est la vie", "Règle d'OR...DRY", "Mon précieux"],
  ["Ticket: With questions à rendre samedi 14 Juillet à 20h", "Trop agile pour être vu"],
  ["On veut le retour de la baguette"],
  ["MBAPPE président", "GRIZOU il est trop beau"]
]

  erb :layout
end

