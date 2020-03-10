import 'package:flutter/material.dart';
import './models/category.dart';
import './models/travel.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'a1',
    title: 'Playas',
    catImage: 'images/playa.jpg'
  ),
  Category(
    id: 'a2',
    title: 'Europa',
    catImage: 'images/europa.jpg'
  ),
    Category(
    id: 'a3',
    title: 'Luna de Miel',
    catImage: 'images/luna_miel.jpg'
  ),
  Category(
    id: 'a4',
    title: 'Cruceros',
    catImage: 'images/crucero.jpg'
  ),
  Category(
    id: 'a5',
    title: 'Hoteles',
    catImage: 'images/hoteles.jpg'
  ),
    Category(
    id: 'a6',
    title: 'Boletos de Avion',
    catImage: 'images/avion.jpg'
  ),
  Category(
    id: 'a7',
    title: 'Disney',
    catImage: 'images/disney.jpg'
  ),
  Category(
    id: 'a8',
    title: 'Paquetes',
    catImage: 'images/paquetes.jpg'
  ),
];

const DUMMY_TRAVELS = const [
  Travel(
    id:'p1',
    categories: ['a1'],
    title: 'Los Cabos',
    priceTable:[
      'Desde \$4,500 x noche',
      'Ninos menores gratis',
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.DesayunoIncluido,
    image: 'images/cabos.jpg',
    descripcion: [
      'Texto muy largo que no voy a teclear. ',
      'Texto muy largo que no voy a teclear. ',
      'Texto muy largo que no voy a teclear. ',
      'Texto muy largo que no voy a teclear. ',
      'Texto muy largo que no voy a teclear. '
    ],
  ),
  Travel(
    id:'p2',
    categories: ['a1'],
    title: 'Puerto Vallarta',
    priceTable:[
      'Desde \$3,500 x noche',
      'Ninos menores gratis',
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.TodoIncluido,
    image: 'images/puertovallarta.jpg',
    descripcion: [
      'Texto 3 muy largo que no voy a teclear. ',
      'Texto 3 muy largo que no voy a teclear. ',
      'Texto 3 muy largo que no voy a teclear. ',
      'Texto 3 muy largo que no voy a teclear. ',
      'Texto 3 muy largo que no voy a teclear. '
    ],
  ),
  Travel(
    id:'e1',
    categories: ['a2'],
    title: 'Paris',
    priceTable:[
      'Desde \$8,500 x noche',
      'Salida de El Paso TX',
    ],
    accesibilidad: Accesibilidad.Costoso,
    planes: Planes.DesayunoIncluido,
    image: 'images/paris.jpeg',
    descripcion: [
      'Texto 2 muy largo que no voy a teclear. ',
      'Texto 2 muy largo que no voy a teclear. ',
      'Texto 2 muy largo que no voy a teclear. ',
      'Texto 2 muy largo que no voy a teclear. ',
      'Texto 2 muy largo que no voy a teclear. '
    ],
  )
];
