'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "7d95b5034b7a9a10310e4670cd618fd7",
"/": "7d95b5034b7a9a10310e4670cd618fd7",
"assets/assets/profile/address.png": "a6c155c67ae93a20cd24aba436a12c59",
"assets/assets/profile/account.png": "ac323e7635e33157ecafe0089c40c74e",
"assets/assets/profile/profile_phone.png": "ee59fa4d84ec7f77a27f874093e73383",
"assets/assets/profile/order.png": "116a2b68ea33003c15614ca669a22a25",
"assets/assets/profile/profile_settings.png": "92c25f37d91bbc70ba1a197b38c0b57c",
"assets/assets/intro/intro_1.png": "72901cd642a0cb6b7d5177bd0899269b",
"assets/assets/intro/intro_location.png": "256e895897964b4720d4fce0d388f8b8",
"assets/assets/intro/intro_cycle.png": "c1c19e9f271da8325be923d6301a89da",
"assets/assets/intro/intro_search.png": "43e1a159acbe2816a985966717adb6b5",
"assets/assets/images/anguilla.png": "be5d35681d223feee9bad3ca067df8e2",
"assets/assets/images/profile_pic.jpg": "8ba7516ee21d9b69c40cb4ef0ea02c0b",
"assets/assets/images/afganistan.png": "bb90111855e175f4db5ca0777b70928f",
"assets/assets/images/antigua_2.jpg": "cde528d9e2e209dcd61ecdc71e60b11b",
"assets/assets/images/angola.png": "da1e43fa88480790d55910e43e422189",
"assets/assets/images/australia.jpg": "d50606729cb930166dca125423d8b945",
"assets/assets/images/armenia.jpg": "f9ebae43e371ad15b2f5bdc6189e649b",
"assets/assets/images/location.png": "e761a407cb883fcc4ef179f59ad02768",
"assets/assets/images/argentina.png": "3e880c0908c4d0b84a3ed1c5d592155f",
"assets/assets/images/algeria.png": "07b441e0cba1dc4cec6e8ad6cb560a72",
"assets/assets/images/andorra.png": "70be671bba9f1d5631fdda2919ec6212",
"assets/assets/images/albania.png": "c1e8212309a96bb58b8e1f413a6d36cb",
"assets/assets/images/american_samoa.png": "b28f54ecf70ad8b23f5d61d7290b997b",
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
"assets/AssetManifest.json": "b11752ae9555747e348e37f79c8e4cd6",
"assets/LICENSE": "aa091f405a5d3a3d76421471fd45f8e1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"main.dart.js": "103e8e17076f81ca35cee389d7ef8791",
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
