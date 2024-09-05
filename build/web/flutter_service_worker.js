'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "9201d62245d80991c7f4c1032bd0db06",
"version.json": "b8f14e26441f92cf1726aee98ff4eafe",
"index.html": "5966b6b11bbf93689e64a3ac7527e358",
"/": "5966b6b11bbf93689e64a3ac7527e358",
"main.dart.js": "5d3e5b1e2efbfeee7787902dea48979c",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"logo.png": "02ebed1524de806c6fca6bb7bebcd337",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "bb5bbb1290211dfaf7a833e5f71042b7",
"assets/AssetManifest.json": "2e663664719966a5a8f9eaee598de4f7",
"assets/NOTICES": "5df8b10a196529cfc8d12057bab0f56e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "1a2d5debc30161d2bca48f52f04946fe",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/soundplayer/lib/assets/g4.wav": "7083f0ad6c5cda6c0c746541ea118e4f",
"assets/packages/soundplayer/lib/assets/c4.wav": "ec097c53198dedea34822a80447aa3a5",
"assets/packages/soundplayer/lib/assets/e4.wav": "c5cf3879b0c01a17a6c7e881e1b90035",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "f3d9add7b04115d407daf5235eebe082",
"assets/fonts/MaterialIcons-Regular.otf": "d60b199d284d1bf8c3b21d1733ab556a",
"assets/assets/images/rebab.png": "8409fcac0403830e3a318957ffacf512",
"assets/assets/images/gamelan.png": "b821e69c27585c7bc575fd70f8bc243c",
"assets/assets/images/kolintang.png": "c62d0bff089be60df8bd6bdcd76f78f1",
"assets/assets/images/bonang.png": "2520375bf2a997f377ed4ae9121a6b54",
"assets/assets/images/tifa.png": "1a37eeacab43b7729c204aa0bc734182",
"assets/assets/images/calung.png": "53283c190192ddd129136b4f356ebac8",
"assets/assets/images/talempong.png": "3fc7efd96bcc630a547af22422b1d234",
"assets/assets/images/kecapi.png": "cde766abd35e3fe9d94cad447a2af84b",
"assets/assets/images/aramba.png": "80c4bc945fee9e39b7deec9f506b7a8a",
"assets/assets/images/sape.png": "f11b53b7a8f0fa6f936d25f0f034df00",
"assets/assets/images/saluang.png": "af78b5d6ebf68f940dd6321d38866748",
"assets/assets/images/sasando.png": "b54c9821cf301eb9975ec7d609fc5d5c",
"assets/assets/images/kendang.png": "cd2a4fdaf5a10da1f01b93d8731df5d2",
"assets/assets/images/angklung.png": "d968fefcaac4fdbc1e176c655027c0a8",
"assets/assets/image_detail/kecapi2.jpeg": "b36fd5002f29888337941c7d573c0b53",
"assets/assets/image_detail/bonang3.jpeg": "7effd65c02e035ff7ea6ad03dbfd824b",
"assets/assets/image_detail/tifa2.jpeg": "c3414d3ee1405f70ad022c942eb113ea",
"assets/assets/image_detail/kolintang1.jpeg": "14d7495aee98b2653144dce758b5ead1",
"assets/assets/image_detail/rebab1.jpeg": "1e778baacac77e6fe7cb38f0631e9c2c",
"assets/assets/image_detail/sasando1.jpg": "4bf2864181a42bebc92806e7a1f76940",
"assets/assets/image_detail/sasando3.png": "8d61b60036394ae70e9eac4f9a927b9c",
"assets/assets/image_detail/kecapi1.jpg": "4bb270c846900a9d0797897916524352",
"assets/assets/image_detail/kolintang2.jpg": "a98c57281c82633849e1a9e9f0935ff7",
"assets/assets/image_detail/sasando2.png": "d3cb945ac20890a1bb6c45665d508ba4",
"assets/assets/image_detail/saluang3.jpg": "23dd1fbf52e43976c15817fb1c5b6e09",
"assets/assets/image_detail/gamelan3.jpg": "ea2fcb93f27aef2276b1f1de80e8cb28",
"assets/assets/image_detail/tifa1.png": "0e900c0a42d3dfdcafb01b05bea35cfa",
"assets/assets/image_detail/saluang2.jpg": "4b5cdf59538f77d95d9d8ba88f5c6af8",
"assets/assets/image_detail/gamelan2.png": "db56a2cd3eac6a42625c445780f973f3",
"assets/assets/image_detail/angklung1.jpg": "a142b0edaf5e7999686e4d08936c7eb6",
"assets/assets/image_detail/tifa3.jpg": "3ccc976b05b7a09c06e81da8ffeb1b5e",
"assets/assets/image_detail/saluang1.jpg": "e6577610041bd17d0f0bdb7d259c804f",
"assets/assets/image_detail/gamelan1.png": "3d09cf3273deb2748dc9b58f58f83859",
"assets/assets/image_detail/bonang2.jpg": "453ff1dc440cc3a02a82c78a5e920d82",
"assets/assets/image_detail/bonang1.jpeg": "df342466c0429f6f85b7a16c6453625c",
"assets/assets/image_detail/angklung2.jpeg": "ae60275017d3d8c1d377733bfc9ec4de",
"assets/assets/image_detail/rebab2.jpeg": "e18c10fb6ec5598adc627e0c7b73e326",
"assets/assets/image_detail/rebab3.png": "42121517dc36f74dd4b0c2191ef380fb",
"assets/assets/image_detail/kolintang3.jpeg": "569470ff2572df3970f20535feb2bc65",
"assets/assets/image_detail/angklung3.jpeg": "dfa4436413315dee71aec5faaa45623d",
"assets/assets/sound/kolintang.ogg": "9279c638143d77d6cf40a6e21e3c27d8",
"assets/assets/sound/gamelan.ogg": "49aeee65c928936e9c6d929910b8fcb6",
"assets/assets/sound/angklung.ogg": "233b7c101f6d4fa5797d73dd8f79cc1a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
