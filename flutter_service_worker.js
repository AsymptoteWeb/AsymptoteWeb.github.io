'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "a8737fb5659496bcc6a23ab5a064fb06",
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
".git/index": "a9ac52113ffa5797adabe45cff1cd5cb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "4d91d80c352c04cc3107b2e032508f4c",
".git/logs/refs/heads/master": "4d91d80c352c04cc3107b2e032508f4c",
".git/logs/refs/remotes/origin/master": "b37128344867eb857cabe462314c9a3d",
".git/objects/01/7b8b54bd1a03cbe8ca5dee8f85e0f97b4d58a9": "c5c57993a2d9c0268b22f2517e556dbd",
".git/objects/02/03fb3084da8052aa54a2fc2b8a6745dc6d9e55": "36f036ae2749dfa4949e4ea285aef1ad",
".git/objects/02/9d146a8145a5bb0fb9e7404d3cc278064aebaf": "69c2db6f3a8b211dc0663ac7066a84ac",
".git/objects/04/93ff6cb1e756d240fbf5178e8dfb11deee1f7c": "069b771ab72980de6a408cc31fd767c9",
".git/objects/08/6dd3c115d73b6493df48f6842d04939a56e1e5": "9390e6cfb9d50dd7656def358b29e559",
".git/objects/0b/9b3c9e69501d008a4d5964caad039df5fbd72f": "0ef5a1971e35cdc2c4cda7810023d0f7",
".git/objects/0c/e06d6fa3fabd4f040b6455adc497e65cb60d4d": "65a81cd8cee295e71102bf3dc51888d2",
".git/objects/12/8d6dbe25a8eca3a61e796118a65bc311e27d2c": "237277a42d6149727a87a0271a87dd21",
".git/objects/13/4114bf90f7b31bde10665db7ac12dfc1bb6483": "1dc359302f7954558ec50e773a68d00b",
".git/objects/14/4d8c0e0614632f025e42e61010b6bf0ad74bb7": "82de612856b324d9d57b5ee610ce690a",
".git/objects/15/31f85a267b065609687656d580d55b2882ed40": "dca99b9523e47c03936ea7a26dfac20e",
".git/objects/16/0e76445f5abc1ebb2d60609ef7d0e68166a79e": "507662913c02a268c40ee68f69dffcd3",
".git/objects/17/df584559378fd4bcecd7fd329d6ce1becb1799": "7615979d5f8d8b0d2dcbea5c9d18d964",
".git/objects/18/810784f1dcd126c6516d4906b156ff8959ae2f": "d5bcda6d4614d5d95b22b56bbc63707d",
".git/objects/19/7b1c539299200dbe4e87375610f851b0611c4b": "3b22a40aa651eb3c0d7018e3bd24939d",
".git/objects/1c/e9c6f81e0cdd189d238d50d63ace5d5fafacea": "d519eae42b6012ef015e4cca1d5be5b4",
".git/objects/1d/384f3748038966a5c7316223edf120dd5894dd": "a8d542276aa823dfefb8d26439e1077a",
".git/objects/20/7e9613fa1f730548c1c18d561d3baf78ae8069": "0c715c3d73ebb5d2b02734fcf76d0d4d",
".git/objects/21/518e04300426d9d85069d7e5002a05ce80c6cf": "c31be9788a59b1ac82fe6209f79f5520",
".git/objects/21/e4720565e331958c18d3e7a8af05cddfa8a93e": "8b0cc2a5d56e30f19c248b48c0eef230",
".git/objects/22/5091531f8e7dc36e8a18ae14dbd17e7c44ca80": "004a5c9efd813ce81ad08ca6f83b5520",
".git/objects/24/1700b6d99bf47c7cbf230e856da9a704cc01de": "761d3ab1eb78b0076b4b8d2b8755840d",
".git/objects/26/ecf46733e960034a181aecd1afd9ea4b24f770": "788a3336f44db1aa729178f2f5cecd2f",
".git/objects/29/3474b7b811bbd394433191dbfcd4146256e28b": "002aab0c2ed4cae97994f06aacb9c4d5",
".git/objects/2c/464f6b2179f8671f422e8b860f849f3da19da4": "f984ef84594eb9bbbcb6b4705ccd1da4",
".git/objects/2c/b8c2c94b4371c707da29dab3f870e6c0a0dca8": "e95a17830efdf6cfeaebf6c5d71ef99b",
".git/objects/2e/af35e6c607a91cabdea910a5a6bd11128d8d24": "69df1a3d78cda34d20982f4ef126f1a7",
".git/objects/30/da8f86b3df0d11ce5b8e86ac4adba07d2766b5": "2f518595f5bd4986aa04562043187324",
".git/objects/33/6c1061e97c40101e5940882656060d876abaca": "59caea8464a6d66923821a0c61b6b225",
".git/objects/33/bf6807a32d8967ac816f72e7fa3d1145c47dc7": "9a5005c19104bd844df1b1365ec94a69",
".git/objects/35/192b758d41e949662552e799e65003c0220f82": "68b1e33241099637ce1cddde76fb5248",
".git/objects/37/fdc008cf53a77f50bc932cf40cd1bf4d42ebe8": "49adc336dc8e9b30ddfa2a678887bbad",
".git/objects/38/9ec8e111abe29277785d166cc38eec15f16760": "38b455561d4439e506c43d91e1f04dba",
".git/objects/38/eb762498fc1e2f518685dcb2fa84c2007208f4": "4c6fb87ebffa3e32997148b5986a8e91",
".git/objects/40/f9cd5274a3d3cbf480b6b46b26329b1ebc83ee": "e54ca7d2909099a904ca82bb7a6b3702",
".git/objects/42/7bec1c6bf397ce1be2f8badac56990adb1a319": "093315101bb6d5c3b5334f82d03d520a",
".git/objects/44/0066dfcf94a9f3d512e02ae2dfb5ff4b052c57": "0fdaf69a4ccd0a94e09f2f6a060b697d",
".git/objects/44/45c0188c5925f104533401abd90b19e5882b8d": "3f8d7876a25c7c541d58434f7e6431e7",
".git/objects/44/4cbc8625f46c8b767e9966cf2c15f1d09944ca": "bca998c85fcbb394efcb437d1dae2af9",
".git/objects/44/5211a7327397931d7f9acc3b004dac90766dd4": "431370f93130baed5607d83d93598add",
".git/objects/44/d8954ada5674b636a4406a19981e1430b73c1b": "d5a1dbb7a5888f67cf4de44d41243b89",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/47/5ad406307210ca9fe73bbe6d74d92bb5fde748": "ab9cc7f1f481f6cc4b1dca6502ec8b19",
".git/objects/48/37a02362b4ac58d07b0c229343608f85525b70": "0d4cbd2d56b043c96966a134d2cf9513",
".git/objects/49/06652480c974901a859b201ba559e6fd9ccadd": "0c2466a9fceff332321baef596bb3a07",
".git/objects/4a/d2ab25411810bca4164e423e658deb6c019c21": "d47ee360fb77f7719829af22f77814f8",
".git/objects/4b/ffb62be49e828e3f9dd00b1121c1d6c665146a": "e8753c4cf0d5f66844c7b7d379a7bad4",
".git/objects/4f/7b7ef4147977801e1e64373d38e20843ff359f": "128b4cc45cf19b787a6e725bcbfdb144",
".git/objects/50/566922e570a3e1aec61d1bf9c4ae5002c08e83": "ad1d930fee3b0f525e2c887fb04d2647",
".git/objects/51/911591ecdcbdf2f8614f0d26fab2141485bfb6": "450d5b1b6bd78cd17473ccba5d6785ef",
".git/objects/52/34facead7064ff10f14d9a16d7cd134d84ed33": "894ebcd540e356fd3e85ddee1bed5976",
".git/objects/52/51123184670c3b67c1f5ed84f6dae66032f265": "1c90f2f62a94bab51f8a86faa12f1483",
".git/objects/52/cfb77a424101413b81e246b965151f443a0e85": "453827b9337fef0116c048dee437d21d",
".git/objects/55/5d7b97d19c840fdf4888c7e4742645f1a94621": "912daf50864b5ed9e6102e2ca9a4b392",
".git/objects/57/288e4427c9bfdac6a44b5162bb598deb521b2e": "027548b8355403a9e92477dd9f35b233",
".git/objects/58/df09328b4ef27632aedbc538ed83d9109702bc": "91b90800d95717576c34304963765ed6",
".git/objects/5a/18c0256da9561548b441292092f05258334edc": "2ae93f0c8594ad5e1506b84b94b2a6d2",
".git/objects/5a/c5f8481f66295778dba03016d2961ff322217a": "4769fc8a1a288a9f4fb2fab471a7a7ec",
".git/objects/5a/ea169a1fec8203defde597aef0ea2ed6de6e43": "f5819495f706bfba32d33afa7154c3cb",
".git/objects/5b/f65588c5b25637d65aac1dace3323c01a8af4d": "f7b744d9863cfe1414f40078aff97513",
".git/objects/5c/d7c79965eceba1300b440812475c02b204b177": "7ad95c02de3b8a7ace2984697ec6312b",
".git/objects/60/bc0206e90fa1723d5efc91ee708b158d0e4b9c": "ca87314edc6120de5ece05de7e3c2580",
".git/objects/65/2e5d40126227087f336b1891e2fc6fae3f045f": "1f7c5bf31a242938672eefa7b018d82a",
".git/objects/6a/185c64136eefad6294d088f86825506cf64724": "adb05a7d5e4fe0c379d436115babafda",
".git/objects/6b/4fffecdff1dcb27cf8e7a416232e93835da881": "7d3553f607cbc58897459cbd0dc0317f",
".git/objects/6b/7798fc613ca147347919bd1f3d16c688b0128a": "9a3e41a31fd192703e07db90625ef708",
".git/objects/6e/a8cfe4f79030cc265e78c7ebe7516b1e19949a": "3bf5f7ddb62e0509d19292981ee1d691",
".git/objects/6f/5e2855b20d04fa3edbe2df51bdb243c1e85c7c": "54b92ffb66af7e5566e85e7d15d55baa",
".git/objects/6f/858efb5a42e6e488f208a4ffd0c067b24abe7c": "1edcdfd21a2e7e8a851a415e61e3fac7",
".git/objects/72/41288a16ad503c6abeb367eece506d3880da70": "dbd563e59fa32886446fc3711a0b36f8",
".git/objects/7d/cee95a8760f65a19bcfe0c7c6ff07a0a415799": "312212aea643fe1a8b73b2241c9c4cd5",
".git/objects/7f/04867eba86508139d737a09d4264a08790ff06": "12af358d496d449c89e897c41bf273d0",
".git/objects/80/1d3c298869e61a87d4442b9460973c1711549b": "00b2f545d77e4527dc61aee7665ad425",
".git/objects/80/5050cdc7d03984bf490a14862dd121fb7bf980": "318ff63d84b1f520ef0fcb246c86c1f2",
".git/objects/80/fc9dc36869b7e18b9d2038646d5efc61978160": "4e5b394da316f6c64f5d631c553ac2e8",
".git/objects/81/90c5cbe3225670495328efa1b1ca761ed25b84": "515db9bef1c112f58607d67b4f29cdca",
".git/objects/82/9496eea92e2c5b15bfa1b52dbec3930c24b0f5": "1890fb2c568c71685339e2e26ff7c79a",
".git/objects/85/5a34a2bce0599e20e6837afd569caa8260fd7b": "bcb967d3243069f2d082b068d2665f72",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8d/95c51c335519727898e5b5a5fdc03ba342094f": "1d170cf38f04510c1117b895e3bcc3b8",
".git/objects/8e/7f4b338840099949781ab85496d7a67fae46f1": "7f2803c236e9e7d95ef6ed16a3a2bd13",
".git/objects/8e/ad0339b09ca419b1fd853e0a600b59c6d94926": "ba0421c91d65ecdd91649ceeff23b5a3",
".git/objects/90/04deaad39f15ecd5c3a4696551f6ebbc660397": "b34000746045fbf49cb5e681e1967a99",
".git/objects/90/3e1ea9b5f0e3d9f46ba137513c696371997951": "4168a1d1ef3c0704f3eac40d6679c518",
".git/objects/92/c4f8ee107ac6ad65e524973841064736286ffd": "3a45826faed7742b1bd1bd74e560a522",
".git/objects/95/99e31f7558e848bb98851355394a0136000252": "1e6b0df543466d41ce0bdca8100f72e1",
".git/objects/96/a0e73db6139c6d895249ccbd542a6c3a1b7f63": "460b5ff486abd6955c88612433fde116",
".git/objects/98/d07d8a4afe4a86598942edaa82ccb977083243": "4071f5e0afa1320df7512a13fbe3ebfe",
".git/objects/99/6b539c97deb7e8e65bf19462ca99c40a5baa7f": "62a4084648c8531b8993d09b4969990a",
".git/objects/9a/feae2aa4abdab0d67a2a17cb396fc88d64f3f8": "cbff8b25fb4e8eb40482d4ab6113a0d8",
".git/objects/9e/67118016bded4004c9ec9871bc6aa66b42619c": "8095c199412285004827b8f50e39e553",
".git/objects/9e/92543539bbd396abfe8e68b4691efbec4ac477": "c9ab21fc3a33a9f854aa61d691926fe2",
".git/objects/a0/c96849c582bbb4316702bd30cdb4b35641f61f": "c4491b59e93a2988c7a892741761d0eb",
".git/objects/a5/43d1e47d01d274670fdaf711a8d01ab84180e5": "154a1a13bcdfdabe7203525ea44f84ae",
".git/objects/a8/2302c42a235f9bc62365a81c7777e4b71599d5": "15989739ac5431d38bb801a3916158fb",
".git/objects/a8/4affaafc0d523cf2f1cc68dfcb1b7bc5c006ce": "4908659dd3a4b98a679904f6c0357984",
".git/objects/a8/aa9468fd28f05c574d09ba9d0bcc9b3c142eda": "9b939aee23a9395a927cda2fd3852e25",
".git/objects/a8/b333bfd99121e04f30a4ad1e08288d913b809f": "a09b7dd26ba44877b1b9c99ba2c9718f",
".git/objects/ac/0a2a1b026ee7538839fcd16cf624226f12e726": "c56ec2c0f15b68785a8c176b36917a71",
".git/objects/ad/2a0a5a9cac93e3a7b248520b6bf6b35db2d805": "1a8c75278df020d69fa634b00f95ffa6",
".git/objects/ae/37803d1933c3979fd1b939ff61cc667b0b70dc": "f5c08c98e82ebd9034dbd78b64a292fa",
".git/objects/b0/f279f66cbe304e48b23ecc1f53365cf76e4dd9": "b5928ddb2d47629d742c0f6cdb260ff3",
".git/objects/b4/25823a90b7adc28d7242e5e90cf56d586e8e1f": "bc951b80f39bed57fe65003be32e0674",
".git/objects/b5/54cf78f8c981b0814a47cac5919afe67234f66": "24c88c23911a12e8bd5ff619e74e691c",
".git/objects/b6/847af84668f859e670bc343cb1767c5f9fb9a1": "2b1c613b00e1262af4bd1c864593130b",
".git/objects/b7/3f618906e9825b07131b675383ba8766561259": "a249a15a8ae06a76cf2758e69c990883",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/05e4cdf49413f7a787e8c2eeca57c02c0c81eb": "28ef6485f2704b4411396c77cb4b81b8",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/a870fda4526362e134c4a1d52a935242727fd9": "353902a6dcfc3618dce1de0eafcd7f6c",
".git/objects/bc/9583b7ac3484121cdacc2e89d8144005dd45cf": "f3659d9d27e24119bab341e0010134cd",
".git/objects/c3/f02d691ba623f28b540f782ecd72fa7b0cd16b": "736360e796e335f4935e74a0b67f7337",
".git/objects/c8/b10a93a654aa1353a46acc9e793d4bd34d1b37": "9a8987031f594ccb479b7051fb036b2c",
".git/objects/ca/7a53f0923a6cd078e540b5a23e516ef5865f4b": "6dfb00cdeec5b801fd8be3da48efbda5",
".git/objects/cd/2d7448d9af7c9b2e5179d73fae02aed091681f": "260dc80a2bca48ff209ff980dfb5d97b",
".git/objects/cd/c1a316f578d211191e3f6b559acecec5a0d649": "085fd080a191eabdfe53aa15a8465727",
".git/objects/ce/660e735351a81e1a4ba60176a31c5526d97c13": "ef62cefa0d98e03f4814a50f946dc191",
".git/objects/cf/d1e7395dd7ddae6cc1f31e056a3b4ba3eea3ac": "c033efb47e2ad3550a9f846802704803",
".git/objects/d0/6e38e5a8e7d4b10deb199609f3ac65bf3ca72d": "559fab29fc32a6df9af23cb0128d9a02",
".git/objects/d3/9adb9abbf8096213107e8be2505d2ed27d68b0": "5f14b973ca4fd681335885bdf5cb9c93",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d5/16ea3711eb2b402f1094c2b10826436a15e96f": "c3cfe5157e624d3d865f40ad0f2aaa8a",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/f78429a520b5818f973560a48f7a15ed21cb62": "aee1148a01e924d916bdb84d73715b53",
".git/objects/d7/983ee9d29e32528b49d4a3ccb2bb004ac07aec": "fc8b31b0484c3089246b2f175a1ca2be",
".git/objects/d9/7387b07c55a74c294a4f9cbfc2a85530376c4c": "6875e4adf89e596730988828c420629a",
".git/objects/d9/de68d9fe966009d9cf63e7282659428ae5d300": "dd8cd256e88c57fdff3523eea8a4b197",
".git/objects/da/f509d19f3f835aab88bc558466f808ae50c421": "099e4975880a2cb0f2f164312916359a",
".git/objects/de/c01faff316d820befe5501a7d6cb8c25265a6b": "3757fa2b3f8ac55df8535572d7d24348",
".git/objects/e7/5e920f175da53dd6f04d858636baa25dc702f4": "0fd694d0b7477cee41611e70d0cd6732",
".git/objects/eb/3bcd6af5cc918b6297e09c5c74e25f47c7e8ee": "9ce008a85d5e2064dc2e3f5c03cd2d2a",
".git/objects/eb/754060726e83ca958e446d8f497dca532e9979": "d7f0166c5ca4fd6a4c936257ce6fcbcc",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/36ccf699242875b8545a155cdbec8a75f946fc": "2fa94bafd8235cd774ee2b6c3dc074bc",
".git/objects/ec/cadb3e0f3a78632f77affffcd3f7af29c9c4bf": "d8406b4827244589be07d90761ef453c",
".git/objects/f1/9586f460e7683546bb59dba83d5731b0668b8d": "ed73f6f5fbc7cde51bea8823804e1072",
".git/objects/f7/afdb339a89f6bc2097d3fb18845c08886e9748": "a4df67954e2587ad2be55b7121f7b129",
".git/objects/f9/c9a0c9a4a5f9ea4b996e35cf93d93d5d756c10": "ae2419ecae62df4d15844694c3636d1c",
".git/objects/fa/4658d48b9a49922fa162eb9c9af3b7c1c7dcba": "22cbb48b3bfa95604d45bc31b2e9aecb",
".git/objects/fb/79db771c6542abb598e64f4e6736943abf2f88": "63fbc74a6e4c1224f503d4b458ce09c4",
".git/refs/heads/master": "c261ba4c58b2a9950ef59cd4a63d7dee",
".git/refs/remotes/origin/master": "c261ba4c58b2a9950ef59cd4a63d7dee",
"assets/AssetManifest.bin": "408781a6e57fc05027260af517549e4f",
"assets/AssetManifest.json": "2e76285b5ba01dc8c50a4cc5d7bbb78b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "f495a0babe318adc35bab4ca445b7bff",
"assets/images/aboutus1.jpg": "25be67585aca05e22fed1b719c717ec8",
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
"index.html": "7a0dfd07309f0742c2c3a8b5575d7ce9",
"/": "7a0dfd07309f0742c2c3a8b5575d7ce9",
"main.dart.js": "68f20e52b52bdfcbf993ffb5a9180a40",
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
