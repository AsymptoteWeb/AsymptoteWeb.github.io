'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "030c6af722e5187679e13239d8e7e7ae",
".git/config": "1c9e7a29c16682b202f9a1653e2e1deb",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "8324aee9670f97d7d683df903f4260ea",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "52934d30d5dbdd26386cfb69310d4ba8",
".git/logs/refs/heads/master": "52934d30d5dbdd26386cfb69310d4ba8",
".git/logs/refs/remotes/origin/master": "e87d8a190a6cf719d6ec29b8595dabbc",
".git/objects/02/9d146a8145a5bb0fb9e7404d3cc278064aebaf": "69c2db6f3a8b211dc0663ac7066a84ac",
".git/objects/04/93ff6cb1e756d240fbf5178e8dfb11deee1f7c": "069b771ab72980de6a408cc31fd767c9",
".git/objects/08/6dd3c115d73b6493df48f6842d04939a56e1e5": "9390e6cfb9d50dd7656def358b29e559",
".git/objects/13/4114bf90f7b31bde10665db7ac12dfc1bb6483": "1dc359302f7954558ec50e773a68d00b",
".git/objects/17/df584559378fd4bcecd7fd329d6ce1becb1799": "7615979d5f8d8b0d2dcbea5c9d18d964",
".git/objects/18/810784f1dcd126c6516d4906b156ff8959ae2f": "d5bcda6d4614d5d95b22b56bbc63707d",
".git/objects/1d/384f3748038966a5c7316223edf120dd5894dd": "a8d542276aa823dfefb8d26439e1077a",
".git/objects/20/7e9613fa1f730548c1c18d561d3baf78ae8069": "0c715c3d73ebb5d2b02734fcf76d0d4d",
".git/objects/21/e4720565e331958c18d3e7a8af05cddfa8a93e": "8b0cc2a5d56e30f19c248b48c0eef230",
".git/objects/22/5091531f8e7dc36e8a18ae14dbd17e7c44ca80": "004a5c9efd813ce81ad08ca6f83b5520",
".git/objects/26/ecf46733e960034a181aecd1afd9ea4b24f770": "788a3336f44db1aa729178f2f5cecd2f",
".git/objects/29/3474b7b811bbd394433191dbfcd4146256e28b": "002aab0c2ed4cae97994f06aacb9c4d5",
".git/objects/2c/b8c2c94b4371c707da29dab3f870e6c0a0dca8": "e95a17830efdf6cfeaebf6c5d71ef99b",
".git/objects/33/6c1061e97c40101e5940882656060d876abaca": "59caea8464a6d66923821a0c61b6b225",
".git/objects/42/7bec1c6bf397ce1be2f8badac56990adb1a319": "093315101bb6d5c3b5334f82d03d520a",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/47/5ad406307210ca9fe73bbe6d74d92bb5fde748": "ab9cc7f1f481f6cc4b1dca6502ec8b19",
".git/objects/48/37a02362b4ac58d07b0c229343608f85525b70": "0d4cbd2d56b043c96966a134d2cf9513",
".git/objects/49/06652480c974901a859b201ba559e6fd9ccadd": "0c2466a9fceff332321baef596bb3a07",
".git/objects/4a/d2ab25411810bca4164e423e658deb6c019c21": "d47ee360fb77f7719829af22f77814f8",
".git/objects/4b/ffb62be49e828e3f9dd00b1121c1d6c665146a": "e8753c4cf0d5f66844c7b7d379a7bad4",
".git/objects/50/566922e570a3e1aec61d1bf9c4ae5002c08e83": "ad1d930fee3b0f525e2c887fb04d2647",
".git/objects/51/911591ecdcbdf2f8614f0d26fab2141485bfb6": "450d5b1b6bd78cd17473ccba5d6785ef",
".git/objects/52/cfb77a424101413b81e246b965151f443a0e85": "453827b9337fef0116c048dee437d21d",
".git/objects/55/5d7b97d19c840fdf4888c7e4742645f1a94621": "912daf50864b5ed9e6102e2ca9a4b392",
".git/objects/58/df09328b4ef27632aedbc538ed83d9109702bc": "91b90800d95717576c34304963765ed6",
".git/objects/5b/f65588c5b25637d65aac1dace3323c01a8af4d": "f7b744d9863cfe1414f40078aff97513",
".git/objects/60/bc0206e90fa1723d5efc91ee708b158d0e4b9c": "ca87314edc6120de5ece05de7e3c2580",
".git/objects/6b/7798fc613ca147347919bd1f3d16c688b0128a": "9a3e41a31fd192703e07db90625ef708",
".git/objects/7d/cee95a8760f65a19bcfe0c7c6ff07a0a415799": "312212aea643fe1a8b73b2241c9c4cd5",
".git/objects/82/9496eea92e2c5b15bfa1b52dbec3930c24b0f5": "1890fb2c568c71685339e2e26ff7c79a",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/7f4b338840099949781ab85496d7a67fae46f1": "7f2803c236e9e7d95ef6ed16a3a2bd13",
".git/objects/8e/ad0339b09ca419b1fd853e0a600b59c6d94926": "ba0421c91d65ecdd91649ceeff23b5a3",
".git/objects/90/04deaad39f15ecd5c3a4696551f6ebbc660397": "b34000746045fbf49cb5e681e1967a99",
".git/objects/90/3e1ea9b5f0e3d9f46ba137513c696371997951": "4168a1d1ef3c0704f3eac40d6679c518",
".git/objects/99/6b539c97deb7e8e65bf19462ca99c40a5baa7f": "62a4084648c8531b8993d09b4969990a",
".git/objects/a8/aa9468fd28f05c574d09ba9d0bcc9b3c142eda": "9b939aee23a9395a927cda2fd3852e25",
".git/objects/ad/2a0a5a9cac93e3a7b248520b6bf6b35db2d805": "1a8c75278df020d69fa634b00f95ffa6",
".git/objects/ae/37803d1933c3979fd1b939ff61cc667b0b70dc": "f5c08c98e82ebd9034dbd78b64a292fa",
".git/objects/b4/25823a90b7adc28d7242e5e90cf56d586e8e1f": "bc951b80f39bed57fe65003be32e0674",
".git/objects/b6/847af84668f859e670bc343cb1767c5f9fb9a1": "2b1c613b00e1262af4bd1c864593130b",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/a870fda4526362e134c4a1d52a935242727fd9": "353902a6dcfc3618dce1de0eafcd7f6c",
".git/objects/bc/9583b7ac3484121cdacc2e89d8144005dd45cf": "f3659d9d27e24119bab341e0010134cd",
".git/objects/ca/7a53f0923a6cd078e540b5a23e516ef5865f4b": "6dfb00cdeec5b801fd8be3da48efbda5",
".git/objects/cd/2d7448d9af7c9b2e5179d73fae02aed091681f": "260dc80a2bca48ff209ff980dfb5d97b",
".git/objects/cd/c1a316f578d211191e3f6b559acecec5a0d649": "085fd080a191eabdfe53aa15a8465727",
".git/objects/d0/6e38e5a8e7d4b10deb199609f3ac65bf3ca72d": "559fab29fc32a6df9af23cb0128d9a02",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d5/16ea3711eb2b402f1094c2b10826436a15e96f": "c3cfe5157e624d3d865f40ad0f2aaa8a",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d9/7387b07c55a74c294a4f9cbfc2a85530376c4c": "6875e4adf89e596730988828c420629a",
".git/objects/e7/5e920f175da53dd6f04d858636baa25dc702f4": "0fd694d0b7477cee41611e70d0cd6732",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/36ccf699242875b8545a155cdbec8a75f946fc": "2fa94bafd8235cd774ee2b6c3dc074bc",
".git/objects/ec/cadb3e0f3a78632f77affffcd3f7af29c9c4bf": "d8406b4827244589be07d90761ef453c",
".git/objects/f9/c9a0c9a4a5f9ea4b996e35cf93d93d5d756c10": "ae2419ecae62df4d15844694c3636d1c",
".git/objects/fa/4658d48b9a49922fa162eb9c9af3b7c1c7dcba": "22cbb48b3bfa95604d45bc31b2e9aecb",
".git/objects/fb/79db771c6542abb598e64f4e6736943abf2f88": "63fbc74a6e4c1224f503d4b458ce09c4",
".git/refs/heads/master": "c0c687f8816b0f5175cc9c0cca75a1f4",
".git/refs/remotes/origin/master": "c0c687f8816b0f5175cc9c0cca75a1f4",
"assets/AssetManifest.bin": "a738ddb3ce0090ebfe8b40013125e245",
"assets/AssetManifest.json": "e63aea6ca2cc5f47108a69bfe66897fb",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "f495a0babe318adc35bab4ca445b7bff",
"assets/images/aboutus1.jpg": "25be67585aca05e22fed1b719c717ec8",
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
"assets/images/services/Services1.png": "0601d7099c2f678937772474d6c23d12",
"assets/images/services/Services2.png": "51e19e7397947117fef74646713c8aa2",
"assets/images/services/Services3.png": "ebd5fc296ee08adf46f5b159d11146e1",
"assets/images/services/Services4.png": "2a7cc2713e4f940cedddd188693bc34f",
"assets/images/services/Services5.png": "4cfa2f8c4bbbe196ab066bdff6782ce4",
"assets/images/services/Services6.png": "e02a067df12909cc6864f6a844fe3e25",
"assets/NOTICES": "c98a6fe14a3161be5eb7ca4ade50988c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "57f2f020e63be0dd85efafc7b7b25d80",
"canvaskit/canvaskit.js": "3e7c7e90ff8e206f4023c12e31b0d058",
"canvaskit/canvaskit.wasm": "296ba26fdb37b50c239d4ead66144d01",
"canvaskit/chromium/canvaskit.js": "c5ff0f8767a7ea0962b15d1f1832002d",
"canvaskit/chromium/canvaskit.wasm": "c6b1144d5baffbdd9482ee820dbd7dc9",
"canvaskit/skwasm.js": "3dbd05be6db4a4154ce733ff194dcae7",
"canvaskit/skwasm.wasm": "f767200511478d7f7052f2b536d82875",
"canvaskit/skwasm.worker.js": "23be0fdafa5ddef67734292a576f8fe3",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9909b1ade917fd61581979acba795d87",
"/": "9909b1ade917fd61581979acba795d87",
"main.dart.js": "2709ee86699671febb3a6bfd17fc24c3",
"manifest.json": "6ab4d150485a0be3211d325fdc987166",
"version.json": "4d0d1e913bbb1a5c7005e5a495adb59a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
