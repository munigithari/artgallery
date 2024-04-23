create table if not exists Artist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  genre VARCHAR(255)
);

create table if not exists Art(
   id INT PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(255),
   theme VARCHAR(255),
   artistId INT,
   FOREIGN KEY (artistId) REFERENCES Artist(artistId)
);

create table Gallery(
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(255),
   location VARCHAR(255)
);

create table artist_gallery(
   artistId INT,
   galleryId INT,
   FOREIGN KEY (artistId) REFERENCES Artist(artistId),
   FOREIGN KEY (galleryId) REFERENCES Gallery(galleryId) 
);