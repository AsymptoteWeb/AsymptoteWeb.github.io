'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "9b573c1c20c9b423981116d4a8ff586d",
"assets/AssetManifest.bin.json": "753ecb9623853ab9bd36212bc43a48b8",
"assets/AssetManifest.json": "d8b9558ae3ff1c10f474c06557fa34dc",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "89040331661c4eecf27c354aa0e226db",
"assets/images/aboutus1.jpg": "25be67585aca05e22fed1b719c717ec8",
"assets/images/aboutus2.jpg": "1bdb80d1960e425cbc8a63ab05a45297",
"assets/images/Contact%2520Us.png": "425b011cd46304090a94b1111ce5d3a3",
"assets/images/homepage%2520v2.jpg": "8926b6dab0fc82f6be7d67c6fd923504",
"assets/images/homepage.png": "e80b41f900ed4229d53e001cae7a5380",
"assets/images/homepagecutn.png": "66f20157dc057766ae3cddc1149a9533",
"assets/images/homescreen%2520low%2520v1.png": "57623e021e10f05d5b794ee557528fd7",
"assets/images/homescreen%2520low%2520v4.png": "85b1d46f5cc8a2a00470804316e022be",
"assets/images/logo%2520empty%2520v2.png": "50fa185c36eb2861f0a6c51045bfcd97",
"assets/images/logo%2520empty.png": "a2a521d1f4147a7d77538117cc11d0d1",
"assets/images/logo%2520home%2520v2.png": "f3e9aea9222504b765e18f052c1b5a53",
"assets/images/logo%2520home.png": "657d359913b9ea6ab29de8f06fab08c5",
"assets/images/Logo.jpg": "20536c2619dd1c42e51941033899c35d",
"assets/images/logo.png": "0436c1447e090a90115455cb7694b6bd",
"assets/images/logotest.png": "d93ec277a7d30cc6d15e0c43235aa9d4",
"assets/images/Logo_newb.png": "4b34b2c9bf6dc0bff8faadeafcb33621",
"assets/images/pic1.jpg": "d65bbb6770f707aff7464bf495e2cd95",
"assets/images/projects/Project1.png": "af6a2b46b48d79e4861064e5616b750b",
"assets/images/projects/Project2.png": "3b2c652ff3899b6f4f74a984e38d47ef",
"assets/images/projects/Project3.png": "2bdd728153263c832b0bfd0e228fff4d",
"assets/images/projects/Project4.png": "26ac90a0193c06f44ba84b72571d59e2",
"assets/images/projects/Project5.png": "a0092db5f1e25379b487ee78d96ab86a",
"assets/images/projects/Project6.png": "62c84302c383f88ccaf020a4338be273",
"assets/images/projects/Project7.png": "0f215e83ca4ac1193627fdee05fe3d80",
"assets/images/projects/Project8.png": "feb781da530a4deb567dfe0deb970d4d",
"assets/images/services/Services1.png": "0601d7099c2f678937772474d6c23d12",
"assets/images/services/Services2.png": "51e19e7397947117fef74646713c8aa2",
"assets/images/services/Services3.png": "ebd5fc296ee08adf46f5b159d11146e1",
"assets/images/services/Services4.png": "2a7cc2713e4f940cedddd188693bc34f",
"assets/images/services/Services5.png": "4cfa2f8c4bbbe196ab066bdff6782ce4",
"assets/images/services/Services6.png": "e02a067df12909cc6864f6a844fe3e25",
"assets/NOTICES": "c9c42411e43e6493925e4aedfd0551a2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.ico": "53d59d98144cd6cee3c4fcc099f73077",
"flutter.js": "f31737fb005cd3a3c6bd9355efd33061",
"flutter_bootstrap.js": "10170529445af61f79fb7399989e944d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "72a0a9b9a85c039a3f4b33e086972632",
"/": "72a0a9b9a85c039a3f4b33e086972632",
"main.dart.js": "00e5cb6c942e3ff0aeee624b27d1d277",
"manifest.json": "4778b489c95dca0d8681b901704b1f17",
"version.json": "4d0d1e913bbb1a5c7005e5a495adb59a"};
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
