# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Article.destroy_all
#Users.destroy_all
#Article.create(title: 'Bienvenue sur Ruby on Rails',content: 'Learning to build 
#a modern web application is daunting. Ruby on Rails makes it much easier 
#and more fun. It includes everything you need to build 
#fantastic applications, 
#and you can learn it with the support 
#of our large, friendly community.',slug: 'bienvenue-sur-ruby-on-rails')

#Article.create(title: 'Projet Ruby x ReactJS',content: 'Une bibliothèque JavaScript pour créer 
#des interfaces utilisateurs',slug: 'projet-ruby-x-reactjs')

Article.create(title: 'Bienvenue sur Ruby on Rails',content: 'Learning to build a modern web application is daunting. Ruby on Rails makes it much easier and more fun. It includes everything you need to build fantastic applications, and you can learn it with the support of our large, friendly community.',slug: 'bienvenue-sur-ruby-on-rails',users_id:1,image:"/ruby.png")

Article.create(title: 'React \u0026 Redux : Les concepts',content: 'React est devenu une référence dans le monde des développeurs front-end. Il a même su s’imposer au sein des back-end grâce à NodeJS et aux systèmes d’isomorphisme. React se positionne principalement en concurrent direct d’Angular et de Vue bien que ce dernier soit arrivé plus tard et ce soit fortement inspiré de React. Angular se présente comme un véritable framework avec tous ses outils ainsi que d’une arborescence définie. Du côté de React, il est difficile d’en dire autant. Ce n’est pas un framework, il s’agit d’un outils et par conséquent il est beaucoup plus flexible. Il sera plus adapté pour implémenter des briques isolés de votre page. React est un formidable outils, d’autant plus qu’avec la surcouche JSX, il devient très agréable de développer avec. L’association avec Redux permet de décupler les possibilités. Petit tour d’horizon !',slug: 'react-redux-concept',users_id:1,image:"/react.png")

Article.create(title: 'What is GraphQL?',content: 'GraphQL is one of the biggest buzzwords in software tech today. But what is it actually? Is it a query language like SQL? An execution engine like the JVM? A specification like XML? If you answered all of the above, you are correct! GraphQL is a query language syntax, a programming language-agnostic execution engine, and a continuously evolving specification. Let\'s dive into how GraphQL can be all of these things and get a glimpse of why people are excited about it.',slug: 'react-redux-concept',users_id:1,image:"/react.png")
#Article.create(title: 'Hello world',content: 'lorem ipso',slug: 'hello-world')
#Article.create(title: 'Hello world',content: 'lorem ipso',slug: 'hello-world')
Users.create(name:'joris',email:'jorisloemba@mail.net',password: 'jorisl22')
Users.create(name:'louis',email:'louisd@mail.net',password: 'ssbulouis')
Users.create(name:'albert',email:'albert@mail.net',password: 'hackaton88')

#User.create(firstname:'Daniel',lastname:'Kulaya',mail:'getout@gmail.com')
#User.create(firstname:'Micheal',lastname:'B. Jordan',mail:'killmongera@gmail.com')
#User.create(firstname:'Zion',lastname:'williamson',mail:'z.williamson@gmail.com')
#Users.destroy_all
#Users.create(firstname: 'kobe',lastname:'bryant', mail: 'bugs@rubyplus.com', password: '123456')
#Users.create(firstname: 'zion',lastname:'wiil', mail: 'zion@rubyplus.com', password: '123456')

#Comment.create(content:'Ce tuto est génial')
#Comment.create(content:'J\'apprends à coder en ruby ')
#Comment.create(content:'Python est pas mal aussi')

