import 'package:flutter/material.dart';

class ToLearn {
  final List<String> imageUrl;
  final List<String> letters;
  final List<String> words;
  final String title;
  final String headerImage;

  ToLearn(
      this.imageUrl, this.letters, this.words, this.title, this.headerImage);
}

List<ToLearn> ITEMS = [
  //ALPHABETS
  ToLearn([
    'assets/alphabets/apple1.png',
    'assets/alphabets/basketball.png',
    'assets/alphabets/clock.png'
  ], [
    'A',
    'B',
    'C'
  ], [
    'Apple',
    'Basketball',
    'Clock'
  ], 'Alphabets', 'assets/headerimages/h_alphabet.jpg'),

  // ANIMALS
  ToLearn([
    'assets/animals/bear.png',
    'assets/animals/lion.png',
    'assets/animals/tiger.png'
  ], [], [
    'Bear',
    'Lion',
    'Tiger'
  ], 'Animals', 'assets/headerimages/h_animals.png'),

  //BIRDS
  ToLearn([
    'assets/birds/crow.png',
    'assets/birds/duck.png',
    'assets/birds/eagle.png'
  ], [], [
    'Crow',
    'Duck',
    'Eagle'
  ], 'Birds', 'assets/headerimages/h_birds.png'),

  //BODY
  ToLearn(
      ['assets/body/eye.png', 'assets/body/hand.png', 'assets/body/leg.png'],
      [],
      ['Eye', 'Hand', 'Leg'],
      'Body Parts',
      'assets/headerimages/h_body_parts.jpg'),

  //COLORS
  ToLearn([
    'assets/colors/black.jpg',
    'assets/colors/green.jpg',
    'assets/colors/red.jpg'
  ], [], [
    'Black',
    'Green',
    'Red'
  ], 'Colors', 'assets/headerimages/h_colors.png'),

  //FLOWERS
  ToLearn([
    'assets/flowers/daisy.png',
    'assets/flowers/hibiscus.png',
    'assets/flowers/rose.png'
  ], [], [
    'Daisy',
    'Hibiscus',
    'Rose'
  ], 'Flowers', 'assets/headerimages/h_flowers.png'),

  //FRUITS
  ToLearn([
    'assets/fruits/apple.png',
    'assets/fruits/strawberry.png',
    'assets/fruits/watermelon.png'
  ], [], [
    'Apple',
    'Strawberry',
    'Watermelon'
  ], 'Fruits', 'assets/headerimages/h_fruits.png'),

//INSECTS
  ToLearn([
    'assets/insects/ant.png',
    'assets/insects/bee.png',
    'assets/insects/butterfly.png'
  ], [], [
    'Ant',
    'Bee',
    'Butterfly'
  ], 'Insects', 'assets/headerimages/h_insects.png'),

  //NUMBERS
  ToLearn([
    'assets/numbers/one_.jpg',
    'assets/numbers/two_.jpg',
    'assets/numbers/three.jpg_'
  ], [], [
    'One',
    'Two',
    'Three'
  ], 'Numbers', 'assets/headerimages/h_numbers.jpg'),

  //REPTILES
  ToLearn([
    'assets/reptiles/chameleon.png',
    'assets/reptiles/crocodile.png',
    'assets/reptiles/gecko.png'
  ], [], [
    'Chameleon',
    'Crocodile',
    'Gecko'
  ], 'Reptiles', 'assets/headerimages/h_reptiles.png'),

  //SCHOOL ITEMS
  ToLearn([
    'assets/schoolitems/books.png',
    'assets/schoolitems/chalkboard.png',
    'assets/schoolitems/chalks.png'
  ], [], [
    'Books',
    'Chalkboard',
    'Chalks'
  ], 'School Items', 'assets/headerimages/h_school_items.png'),

  //SHAPES
  ToLearn([
    'assets/shapes/arrow.png',
    'assets/shapes/cross.png',
    'assets/shapes/diamond.png'
  ], [], [
    'Arrow',
    'Cross',
    'Diamond'
  ], 'Shape', 'assets/headerimages/h_shapes.jpg'),

  //VEGETABLES
  ToLearn([
    'assets/vegetables/brocolli.png',
    'assets/vegetables/cabbage.png',
    'assets/vegetables/capcicum.png'
  ], [], [
    'Brocolli',
    'Cabbage',
    'Capcicum'
  ], 'Vegetables', 'assets/headerimages/h_vegetable.png'),

  //VEHICLES
  ToLearn([
    'assets/vehicles/aeroplane.png',
    'assets/vehicles/bicycle.png',
    'assets/vehicles/bus.png'
  ], [], [
    'Aeroplane',
    'Bicycle',
    'Bus'
  ], 'Vehicles', 'assets/headerimages/h_vehicles.png'),

  //WATER ANIMALS
  ToLearn([
    'assets/wateranimals/crab.png',
    'assets/wateranimals/dolphin.png',
    'assets/wateranimals/octopus.png'
  ], [], [
    'Crab',
    'Dolphin',
    'Octopus'
  ], 'Water Animals', 'assets/headerimages/h_water_animals.png'),
];
