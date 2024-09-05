class TraditionalInstrument{
  String name;
  String origin;
  String description;
  String history;
  String category;
  String imageAsset;
  String thumbnail;
  String sound;
  List<String> imageDetail;

  TraditionalInstrument({
    required this.name,
    required this.origin,
    required this.description,
    required this.history,
    required this.category,
    required this.imageAsset,
    required this.thumbnail,
    required this.sound,
    required this.imageDetail,
  });
}

var traditionalInstrumentList = [
    TraditionalInstrument(
      name: 'Angklung',
      origin: 'Jawa Barat',
      description: 'Angklung adalah alat musik tradisional yang terbuat dari bambu dan dimainkan dengan cara digoyangkan sehingga menghasilkan nada yang khas. Alat musik ini memiliki beberapa tabung bambu yang disusun vertikal dan dirangkai dengan tali. Ketika digoyangkan, tabung-tabung bambu ini akan berbenturan dan menghasilkan suara harmonis. Angklung sering dimainkan dalam grup, menciptakan komposisi musik yang kaya dan kompleks. Alat musik ini juga sering digunakan dalam upacara adat dan acara kebudayaan di Jawa Barat.',
      history: 'Angklung memiliki sejarah panjang yang berasal dari masyarakat Sunda di Jawa Barat. Alat musik ini sudah ada sejak zaman kerajaan Sunda dan digunakan dalam berbagai ritual keagamaan untuk memanggil Dewi Sri, dewi kesuburan. Pada abad ke-20, angklung mengalami transformasi dengan penambahan sistem tangga nada diatonis oleh Daeng Soetigna, sehingga dapat dimainkan dalam musik modern dan menjadi lebih populer secara global.',
      category: 'Alat Musik Getar',
      imageAsset: 'assets/images/angklung.png',
      sound: 'assets/sound/angklung.ogg',
      thumbnail: 'assets/thumbnail/angklung.jpg',
      imageDetail: [
        'assets/image_detail/angklung1.jpg',
        'assets/image_detail/angklung2.jpeg',
        'assets/image_detail/angklung3.jpeg'
      ],
    ),
    TraditionalInstrument(
      name: 'Gamelan',
      origin: 'Jawa',
      description: 'Gamelan adalah ansambel musik tradisional yang berasal dari Jawa, Bali, dan Lombok. Ansambel ini terdiri dari berbagai instrumen seperti gong, kenong, kempul, saron, bonang, dan lainnya, yang semuanya terbuat dari logam. Setiap instrumen dalam gamelan memiliki fungsi tertentu dalam menciptakan komposisi musik yang harmonis dan berirama. Gamelan sering dimainkan dalam acara-acara besar seperti upacara adat, pertunjukan wayang, dan tarian tradisional.',
      history: 'Gamelan memiliki sejarah yang sangat tua dan dipercaya sudah ada sejak masa Kerajaan Hindu-Buddha di Indonesia. Pada awalnya, gamelan digunakan dalam upacara keagamaan di kerajaan-kerajaan tersebut. Seiring waktu, gamelan berkembang menjadi bagian penting dari kebudayaan Jawa dan Bali, dan setiap daerah memiliki variasi gamelan yang unik. Gamelan juga menjadi inspirasi bagi banyak musisi kontemporer di seluruh dunia.',
      category: 'Alat Musik Perkusi',
      imageAsset: 'assets/images/gamelan.png',
      sound: 'assets/sound/gamelan.ogg',
      thumbnail: 'assets/thumbnail/gamelan.jpg',
      imageDetail: [
        'assets/image_detail/gamelan1.png',
        'assets/image_detail/gamelan2.png',
        'assets/image_detail/gamelan3.jpg'
      ],
    ),
    TraditionalInstrument(
      name: 'Sasando',
      origin: 'Nusa Tenggara Timur',
      description: 'Sasando adalah alat musik dawai tradisional yang berbentuk tabung dan terbuat dari daun lontar. Alat musik ini dimainkan dengan cara dipetik seperti harpa, menghasilkan suara yang lembut dan melodius. Sasando memiliki beberapa senar yang diikatkan pada tabung utama, dan bagian resonatornya terbuat dari daun lontar yang berbentuk seperti kipas. Alat musik ini biasanya dimainkan dalam acara-acara adat dan upacara penting di masyarakat Rote, Nusa Tenggara Timur.',
      history: 'Sasando dipercaya sudah ada sejak abad ke-7 di Pulau Rote, Nusa Tenggara Timur. Menurut legenda, alat musik ini pertama kali dibuat oleh seorang pemuda bernama Sangguana yang terinspirasi dari suara angin yang berhembus melalui daun lontar. Sejak itu, sasando menjadi bagian tak terpisahkan dari kebudayaan masyarakat Rote dan terus diwariskan dari generasi ke generasi.',
      category: 'Alat Musik Dawai',
      imageAsset: 'assets/images/sasando.png',
      sound: 'assets/sound/',
      thumbnail: 'assets/thumbnail/sasando.png',
      imageDetail: [
        'assets/image_detail/sasando1.jpg',
        'assets/image_detail/sasando2.png',
        'assets/image_detail/sasando3.png'
      ],
    ),
    TraditionalInstrument(
      name: 'Kolintang',
      origin: 'Sulawesi Utara',
      description: 'Kolintang adalah alat musik perkusi yang terbuat dari kayu ringan, seperti kayu telur, dan disusun secara horizontal. Alat musik ini dimainkan dengan cara memukul bilah-bilah kayu yang disusun di atas resonator untuk menghasilkan nada-nada yang harmonis. Kolintang biasanya dimainkan dalam ansambel musik tradisional di Sulawesi Utara, baik dalam upacara adat maupun pertunjukan seni.',
      history: 'Kolintang berasal dari Minahasa, Sulawesi Utara, dan sudah ada sejak zaman nenek moyang suku Minahasa. Nama "kolintang" berasal dari suara yang dihasilkan alat musik ini, yaitu "tong" (nada rendah), "ting" (nada tinggi), dan "tang" (nada sedang). Awalnya, kolintang digunakan dalam upacara adat dan keagamaan, namun seiring waktu, kolintang juga digunakan dalam pertunjukan musik modern dan menjadi simbol kebanggaan masyarakat Sulawesi Utara.',
      category: 'Alat Musik Perkusi',
      imageAsset: 'assets/images/kolintang.png',
      sound: 'assets/sound/kolintang.ogg',
      thumbnail: 'assets/thumbnail/kolintang.jpeg',
      imageDetail: [
        'assets/image_detail/kolintang1.jpeg',
        'assets/image_detail/kolintang2.jpg',
        'assets/image_detail/kolintang3.jpeg'
      ],
    ),
    TraditionalInstrument(
      name: 'Rebab',
      origin: 'Jawa',
      description: 'Rebab adalah alat musik gesek tradisional yang biasa digunakan dalam pertunjukan gamelan di Jawa. Rebab terbuat dari kayu dengan bagian depan yang dilapisi kulit, dan memiliki dua atau tiga senar yang digesek dengan busur. Suara rebab sangat lembut dan melankolis, sering digunakan untuk mengiringi lagu-lagu atau tarian dalam pertunjukan tradisional.',
      history: 'Rebab merupakan alat musik yang diperkenalkan ke Indonesia oleh pedagang dari Timur Tengah pada abad ke-9. Alat musik ini kemudian diadopsi ke dalam budaya Jawa dan menjadi bagian penting dari ensambel gamelan. Rebab sering digunakan untuk memainkan melodi utama dalam komposisi gamelan dan menjadi instrumen yang sangat dihormati dalam budaya musik tradisional Jawa.',
      category: 'Alat Musik Gesek',
      imageAsset: 'assets/images/rebab.png',
      sound: 'assets/sound/',
      thumbnail: 'assets/thumbnail/rebab.jpg',
      imageDetail: [
        'assets/image_detail/rebab1.jpeg',
        'assets/image_detail/rebab2.jpeg',
        'assets/image_detail/rebab3.png'
      ],
    ),
    TraditionalInstrument(
      name: 'Kecapi',
      origin: 'Sunda',
      description: 'Kecapi adalah alat musik petik tradisional yang digunakan dalam musik Sunda, khususnya dalam jenis musik yang disebut "kacapi suling." Kecapi terbuat dari kayu dengan senar logam yang dipetik menggunakan jari. Alat musik ini sering digunakan sebagai instrumen utama dalam musik instrumental Sunda yang lembut dan mendayu-dayu.',
      history: 'Kecapi sudah dikenal di masyarakat Sunda sejak zaman kerajaan Sunda di Jawa Barat. Alat musik ini sering digunakan dalam upacara adat dan pertunjukan seni tradisional. Seiring dengan perkembangan musik Sunda, kecapi tetap bertahan sebagai instrumen yang penting dan sering dimainkan dalam berbagai konteks, dari musik tradisional hingga modern.',
      category: 'Alat Musik Dawai',
      imageAsset: 'assets/images/kecapi.png',
      sound: 'assets/sound/',
      thumbnail: 'assets/thumbnail/kecapi.jpg',
      imageDetail: [
        'assets/image_detail/kecapi1.jpg',
        'assets/image_detail/kecapi2.jpeg',
      ],
    ),
    TraditionalInstrument(
      name: 'Tifa',
      origin: 'Maluku dan Papua',
      description: 'Tifa adalah alat musik perkusi yang dimainkan dengan cara dipukul. Alat musik ini terbuat dari kayu dengan bagian tengah yang dilubangi dan bagian atasnya dilapisi kulit hewan. Tifa menghasilkan suara yang kuat dan sering dimainkan dalam acara adat serta upacara di Maluku dan Papua. Ada berbagai jenis tifa dengan ukuran dan bentuk yang berbeda, yang masing-masing digunakan untuk fungsi yang berbeda dalam masyarakat.',
      history: 'Tifa memiliki sejarah panjang dalam budaya Maluku dan Papua. Alat musik ini digunakan dalam berbagai upacara adat, seperti upacara penyambutan tamu penting, upacara keagamaan, dan upacara perang. Tifa juga sering digunakan untuk mengiringi tarian tradisional seperti tari Cakalele di Maluku dan tari perang di Papua. Alat musik ini menjadi simbol keberanian dan kekuatan dalam budaya masyarakat setempat.',
      category: 'Alat Musik Perkusi',
      imageAsset: 'assets/images/tifa.png',
      sound: 'assets/sound/',
      thumbnail: 'assets/thumbnail/tifa.png',
      imageDetail: [
        'assets/image_detail/tifa1.png',
        'assets/image_detail/tifa2.jpeg',
        'assets/image_detail/tifa3.jpg'
      ],
    ),
    TraditionalInstrument(
  name: 'Saluang',
  origin: 'Minangkabau',
  description: 'Saluang adalah alat musik tiup tradisional yang terbuat dari bambu tipis. Alat musik ini memiliki bentuk sederhana dengan lubang tiup di salah satu ujungnya dan lubang-lubang kecil untuk mengatur nada. Saluang menghasilkan suara yang melankolis dan sering dimainkan untuk mengiringi syair-syair atau dendang tradisional Minangkabau. Alat musik ini memiliki resonansi khas yang menciptakan suasana sendu dan penuh perasaan.',
  history: 'Saluang berasal dari Sumatera Barat dan merupakan bagian integral dari budaya musik Minangkabau. Sejak zaman dahulu, saluang digunakan dalam upacara adat, terutama dalam acara-acara yang bersifat sakral atau melankolis. Dahulu, saluang dimainkan untuk mengiringi dendang yang menyampaikan cerita-cerita tentang kehidupan, cinta, dan nasihat. Hingga kini, saluang tetap menjadi alat musik yang penting dalam kesenian Minangkabau, meskipun jumlah pemainnya semakin sedikit.',
  category: 'Alat Musik Tiup',
  imageAsset: 'assets/images/saluang.png',
  sound: 'assets/sound/',
  thumbnail: 'assets/thumbnail/saluang.jpg',
  imageDetail: [
    'assets/image_detail/saluang1.jpg',
    'assets/image_detail/saluang2.jpg',
    'assets/image_detail/saluang3.jpg'
  ],
),
// TraditionalInstrument(
//   name: 'Gong',
//   origin: 'Jawa, Bali, dan Nusantara',
//   description: 'Gong adalah alat musik perkusi besar yang terbuat dari logam dan dimainkan dengan cara dipukul menggunakan pemukul yang dilapisi kain atau kulit. Gong menghasilkan suara yang dalam dan menggema, sering digunakan dalam ensambel gamelan di Jawa dan Bali. Dalam kebudayaan tradisional, gong memiliki makna simbolis yang kuat, sering digunakan dalam upacara-upacara adat dan keagamaan.',
//   history: 'Gong memiliki sejarah yang panjang dan ditemukan di berbagai kebudayaan di Asia Tenggara, termasuk Indonesia. Di Jawa dan Bali, gong menjadi bagian integral dari gamelan, ansambel musik yang kaya akan tradisi dan makna filosofis. Gong tidak hanya berfungsi sebagai alat musik, tetapi juga sebagai simbol kekuatan spiritual dalam berbagai upacara. Hingga saat ini, gong masih digunakan secara luas dalam musik tradisional dan upacara adat di Indonesia.',
//   category: 'Alat Musik Perkusi',
//   imageAsset: 'assets/images/gong.png',
//thumbnail: 'assets/thumbnail/',   
//imageDetail: [
//     'assets/image_detail/gong1.png',
//     'assets/image_detail/gong2.png',
//     'assets/image_detail/gong3.png'
//   ],
// ),
TraditionalInstrument(
  name: 'Bonang',
  origin: 'Jawa',
  description: 'Bonang adalah salah satu instrumen utama dalam gamelan Jawa yang terdiri dari deretan gong kecil yang ditempatkan secara horizontal di atas tali di dalam sebuah rangka. Alat musik ini dimainkan dengan cara dipukul menggunakan pemukul kayu yang dibalut kain. Bonang memiliki peran penting dalam gamelan, sering memainkan melodi pembuka dan penutup dalam sebuah komposisi.',
  history: 'Bonang telah ada sejak masa Kerajaan Majapahit dan terus berkembang menjadi salah satu instrumen kunci dalam gamelan Jawa. Alat musik ini dianggap sebagai instrumen yang sakral dan sering digunakan dalam upacara keagamaan serta acara kebudayaan penting. Bonang juga memiliki variasi dalam ukuran dan nada, yang masing-masing digunakan untuk fungsi yang berbeda dalam ensambel gamelan.',
  category: 'Alat Musik Perkusi',
  imageAsset: 'assets/images/bonang.png',
  sound: 'assets/sound/',
  thumbnail: 'assets/thumbnail/bonang.png',
  imageDetail: [
    'assets/image_detail/bonang1.jpeg',
    'assets/image_detail/bonang2.jpg',
    'assets/image_detail/bonang3.jpeg'
  ],
),
TraditionalInstrument(
  name: 'Kendang',
  origin: 'Jawa dan Bali',
  description: 'Kendang adalah alat musik perkusi yang berbentuk drum dan terbuat dari kayu serta kulit hewan. Alat musik ini dimainkan dengan tangan atau pemukul, menghasilkan suara yang ritmis dan berirama. Kendang sering digunakan dalam ensambel gamelan untuk mengatur tempo dan memberi penekanan pada bagian-bagian tertentu dari komposisi musik.',
  history: 'Kendang memiliki sejarah panjang dan merupakan bagian integral dari gamelan Jawa dan Bali. Sejak zaman dahulu, kendang digunakan dalam upacara keagamaan, tari-tarian, dan pertunjukan wayang. Kendang juga memiliki berbagai ukuran dan jenis, masing-masing dengan fungsi yang berbeda dalam ensambel gamelan. Hingga kini, kendang tetap menjadi alat musik yang sangat penting dalam budaya musik tradisional Indonesia.',
  category: 'Alat Musik Perkusi',
  imageAsset: 'assets/images/kendang.png',
  sound: 'assets/sound/',
  thumbnail: 'assets/thumbnail/kendang.jpg',
  imageDetail: [
    'assets/image_detail/kendang1.png',
    'assets/image_detail/kendang2.png',
    'assets/image_detail/kendang3.png'
  ],
),
TraditionalInstrument(
  name: 'Talempong',
  origin: 'Minangkabau',
  description: 'Talempong adalah alat musik perkusi yang terbuat dari logam, berbentuk seperti gong kecil, dan disusun secara horizontal. Alat musik ini dimainkan dengan cara dipukul menggunakan palu kayu, menghasilkan suara yang berirama dan harmonis. Talempong sering dimainkan dalam ansambel musik tradisional Minangkabau untuk mengiringi tarian, nyanyian, atau upacara adat.',
  history: 'Talempong sudah ada sejak zaman kerajaan di Minangkabau dan merupakan salah satu alat musik yang penting dalam budaya masyarakat Minangkabau. Alat musik ini sering dimainkan dalam acara-acara adat seperti pesta pernikahan, upacara keagamaan, dan acara resmi lainnya. Talempong juga memiliki peran penting dalam mengiringi tari-tarian tradisional Minangkabau seperti Tari Piring dan Tari Payung.',
  category: 'Alat Musik Perkusi',
  imageAsset: 'assets/images/talempong.png',
  sound: 'assets/sound/',
  thumbnail: 'assets/thumbnail/talempong.jpg',
  imageDetail: [
    'assets/image_detail/talempong1.png',
    'assets/image_detail/talempong2.png',
    'assets/image_detail/talempong3.png'
  ],
),
TraditionalInstrument(
  name: 'Calung',
  origin: 'Jawa Barat',
  description: 'Calung adalah alat musik tradisional yang terbuat dari bambu dan dimainkan dengan cara dipukul. Alat musik ini terdiri dari beberapa tabung bambu yang disusun secara horizontal dan dirangkai dengan tali. Calung menghasilkan nada-nada yang ceria dan sering digunakan dalam pertunjukan musik tradisional Sunda.',
  history: 'Calung berasal dari Jawa Barat dan telah menjadi bagian dari budaya musik Sunda sejak zaman dahulu. Alat musik ini sering digunakan dalam berbagai acara kebudayaan, seperti pesta rakyat dan upacara adat. Selain itu, calung juga digunakan dalam pertunjukan seni tradisional Sunda seperti kliningan dan angklung. Meskipun sederhana, calung memiliki peran penting dalam menjaga dan melestarikan budaya musik tradisional Sunda.',
  category: 'Alat Musik Perkusi',
  imageAsset: 'assets/images/calung.png',
  sound: 'assets/sound/',
  thumbnail: 'assets/thumbnail/calung.jpg',
  imageDetail: [
    'assets/image_detail/calung1.png',
    'assets/image_detail/calung2.png',
    'assets/image_detail/calung3.png'
  ],
),
TraditionalInstrument(
  name: 'Sape',
  origin: 'Kalimantan',
  description: 'Sape adalah alat musik dawai tradisional yang berasal dari suku Dayak di Kalimantan. Alat musik ini terbuat dari kayu dengan senar yang terbuat dari serat alami atau nilon. Sape dimainkan dengan cara dipetik, menghasilkan melodi yang lembut dan menghanyutkan. Alat musik ini sering dimainkan dalam upacara adat dan tarian tradisional Dayak.',
  history: 'Sape telah menjadi bagian dari kehidupan masyarakat Dayak sejak zaman dahulu. Alat musik ini tidak hanya digunakan sebagai alat musik, tetapi juga sebagai simbol spiritual dalam upacara adat dan ritual keagamaan. Sape dipercaya dapat menghubungkan manusia dengan dunia roh, sehingga sering dimainkan dalam upacara-upacara penting. Hingga kini, sape tetap menjadi alat musik yang dihormati dan dilestarikan oleh masyarakat Dayak.',
  category: 'Alat Musik Dawai',
  imageAsset: 'assets/images/sape.png',
  sound: 'assets/sound/',
  thumbnail: 'assets/thumbnail/sape.jpg',
  imageDetail: [
    'assets/image_detail/sape1.png',
    'assets/image_detail/sape2.png',
    'assets/image_detail/sape3.png'
  ],
),
TraditionalInstrument(
  name: 'Aramba',
  origin: 'Nias',
  description: 'Aramba adalah alat musik perkusi yang berbentuk seperti gong dan terbuat dari logam. Alat musik ini dimainkan dengan cara dipukul menggunakan pemukul kayu. Aramba menghasilkan suara yang dalam dan menggema, sering digunakan dalam upacara adat dan pertunjukan musik tradisional di Nias.',
  history: 'Aramba telah menjadi bagian dari budaya masyarakat Nias sejak zaman dahulu. Alat musik ini sering digunakan dalam upacara adat seperti pesta pernikahan, upacara kematian, dan upacara keagamaan. Aramba juga dianggap sebagai simbol kekuatan dan kehormatan dalam masyarakat Nias, sehingga sering dimainkan dalam acara-acara penting. Hingga kini, aramba tetap menjadi alat musik yang dihormati dan dilestarikan oleh masyarakat Nias.',
  category: 'Alat Musik Perkusi',
  imageAsset: 'assets/images/aramba.png',
  sound: 'assets/sound/',
  thumbnail: 'assets/thumbnail/aramba.jpg',
  imageDetail: [
    'assets/image_detail/aramba1.png',
    'assets/image_detail/aramba2.png',
    'assets/image_detail/aramba3.png'
  ],
),

];