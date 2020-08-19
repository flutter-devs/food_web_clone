'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "7d95b5034b7a9a10310e4670cd618fd7",
"/": "7d95b5034b7a9a10310e4670cd618fd7",
"assets/assets/intro/intro_1.png": "72901cd642a0cb6b7d5177bd0899269b",
"assets/assets/intro/intro_location.png": "256e895897964b4720d4fce0d388f8b8",
"assets/assets/intro/intro_cycle.png": "c1c19e9f271da8325be923d6301a89da",
"assets/assets/intro/intro_search.png": "43e1a159acbe2816a985966717adb6b5",
"assets/assets/images/location.png": "e761a407cb883fcc4ef179f59ad02768",
"assets/assets/food/burger.jpg": "34ac8fc3c8f6a7562e1df42b743fc636",
"assets/assets/food/chinese.jpg": "e6e1ee8c9f3f1817b247734dab11140a",
"assets/assets/food/icecream.jpg": "6b7275949fd357b35d54d0e3928f2e34",
"assets/assets/food/dish_2.jpg": "9e706f62f07bdba92613b0c02ea3e59b",
"assets/assets/food/wrap.jpg": "9b1bb4e80f59f88cc154513fba2c8694",
"assets/assets/food/cafe.jpg": "58b385be0dcbff3cff09645840ad793f",
"assets/assets/food/sushi.jpg": "6b6b7d26f4b6ecf4f4a565aea53ee532",
"assets/assets/food/dish_1.jpg": "5cfcdf9705d6b10bbfdcb293a1c46971",
"assets/FontManifest.json": "580ff1a5d08679ded8fcf5c6848cece7",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/AssetManifest.json": "4de36407ddec56d9911e5056ae43a98d",
"assets/LICENSE": "aa091f405a5d3a3d76421471fd45f8e1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"main.dart.js": "f81d2f6cfb16e0991a04049b9dfca484",
"manifest.json": "9e29199e571f1b9225c6ab49ca1d110c"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
