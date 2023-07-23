class DbServices {
  Future<Map<String, Map>> hakkimdaGetir() async {
    await Future.delayed(const Duration(seconds: 2));
    Map<String, Map> hakkimda = {
      "Ben Kimim": {
        "Atahan Halıcı Hakkında": {
          "aciklama":
              "Merhabalar. Ben Atahan Halıcı. 20 yaşındayım ve Samsunluyum. Şu anda Erzincan Binali Yıldırım Üniversitesi Bilgisayar Mühendisliği bölümü 3. sınıf öğrencisiyim ve 23/24 dönemi GDSC Erzincan (Google Developer Students Club Erzincan) liderliğini yürütmekteyim. Yazılıma olan temel ilgim lise yıllarında başladı. Lise yıllarımda algoritmik zekamı geliştirmek adına python geliştirmeye başladım fakat dersler ve sınavlarımdan dolayı pek ilerleyemedim. İlerleyen süreçte bilgisayar mühendisliği bölümünü tercih ederek hayallerime kavuşabilmek için önümü açtım. Üniversitede temel C dersleriyle algoritma bilgimi tazeledim ve kendi alanımı seçmem gerektiğini farkettim. Kendime en uygun alanın mobil olduğunu farkettiğimden beridir Flutter ile mobil uygulama geliştiriyorum. Flutter'ın bir çok platforma destek vermesi beni kendine bağladı diyebilirim. Bu süreçte bir çok proje geliştirdim ve geliştirmeye devam ediyorum. Diğer yandan C# ve Java dillerini de kendime kattım. Kendimi geliştirmek adına sürekli çalışıyorum. ",
          "tarih": "null",
          "link": "null"
        }
      },
      "Sosyal": {
        "GDSC Erzincan Liderliği": {
          "link": "assets/gdsclogo.png",
          "aciklama":
              "Developer Student Clubs(Geliştirici Öğrenci Kulüpleri), Google teknolojilerini baz alarak, bulundukları bölgede geliştirici etkinlikleri düzenleyen topluluklardır.Özellikle üniversite öğrencilerinin mobil, web, makine öğrenimi, bulut bilişim gibi becerilerini geliştirmelerine yardımcı olmalarını amaçlayan bir Google Developers girişimidir. Her sene yeni liderlerini mülakatla belirlenen GDSC yönetimi 23/24 dönemi Erzincan Liderliğine beni seçti. Bu görevi severek sürdürüyorum.",
          "tarih": "18 Eylül 2023 - Devam Ediyorum"
        },
        "Genç ve Yenilikçi Beyinler Kulübü Başkanlığı": {
          "link": "assets/gybklogo.png",
          "aciklama":
              "Önceki dönem güzel işler başardığımız Genç ve Yenilikçi Beyinler Kulübü başkanlığına üyelerimiz tarafından yüksek bir oyla 22/23 dönemi için ben seçildim. Bu süreçte bir çok etkinlik gerçekleştirdik.liderlik becerilerimi geliştirdim. Kararlar almak, ekip üyeleriyle uyum içinde çalışmak ve kulüp etkinliklerini organize etmek gibi sorumluluklarım sayesinde, liderlik rolümde daha güçlü hissettim. Zamanı etkili bir şekilde kullanmak ve projeleri başarıyla yönetmek için çaba sarf ettim. Aynı zamanda iletişim becerilerimi de ilerlettim. Artık E-posta yazma, topluluk önünde konuşma ve insanlarla etkileşimde bulunma konusunda daha rahat hissediyorum. ",
          "tarih": "7 Ekim 2022 - 20 Haziran 2023"
        },
        "GYBK Bilişim Zirvesi Kurumsal İletişim Koordinatörlüğü Ekip Üyesi": {
          "link": "assets/gbzlogo.png",
          "aciklama":
              "Genç ve Yenilikçi Beyinler Kulübü üyeleri olarak bilişim alanından önemli konukları Erzincana davet ederek onların bilgi, deneyim ve tecrübelerinden faydalanabileceğimiz büyük bir etkinlik gerçekleştirdik. Ben bu zirvede Kurumsal İletişim Koordinatörlüğünde görev alarak iletişim becerilerim başta olmak üzere bir çok yönden kendimi geliştirdim. 3 gün süren bilişim zirvemizde Havelsan, Tusaş, Isısan, Trendyol, Getir, Teknasyon ve Altogic firmalarından konuşmacıları misafir ettik.",
          "tarih": "13-14-15 Mayıs 2023"
        },
      },
      "Eğitim": {
        "Erzincan Binali Yıldırım Üniversitesi": {
          "link": "assets/ebyulogo.png",
          "aciklama":
              "Erzincan Binali Yıldırım Üniversitesi Bilgisayar Mühendisliği Bölümü",
          "tarih": "2021-2025"
        },
        "Samsun Anadolu Lisesi": {
          "link": "assets/sallogo.png",
          "aciklama": "Samsun Anadolu Lisesi - Sayısal",
          "tarih": "2017-2021"
        },
        "Gülsüm Sami Kefeli Ortaokulu": {
          "link": "assets/gsklogo.jpg",
          "aciklama": "Gülsüm Sami Kefeli Ortaokulu mezunuyum.",
          "tarih": "2017-2021"
        },
        "Mustafa Kemal İlkokulu": {
          "link": "assets/meblogo.png",
          "aciklama": "Mustafa Kemal İlkokulu mezunuyum.",
          "tarih": "2013-2017"
        },
      }
    };
    return hakkimda;
  }

  deneyimGetir() async {
    await Future.delayed(const Duration(seconds: 2));
    Map<String, Map> deneyimlerim = {
      "Projelerim": {
        "": {"link": "null", "aciklama": "", "tarih": "null"},
      },
      "Deneyimlerim": {
        "Co-Founder of Faba Software": {
          "link": "assets/fabalogo2.png",
          "aciklama":
              "Kasım 2022'den beri FABA Software firmasının kurucu ortağıyım ve aynı zamanda mobil tarafını geliştiriyorum. Firmamız kullanıcıların ihtiyaçlarını fazlasıyla karşılayacak yazılımlar yapmak amacıyla kurulmuştur. Şu anda çeşitli alanlarda öncü olacak projeler geliştirmek için var gücümüzle çalışıyoruz.",
          "tarih": "Kasım 2022 - Devam Ediyorum"
        },
        "Freelancer": {
          "link": "null",
          "aciklama":
              "Kendimi yazılım alanında geliştirirken çeşitli projelerde de yer aldım. Serbest çalışan olarak şirketler veya topluluklar için projeler geliştirdim. Şu anda freelancer olarak projeler geliştirerek kendimi geliştirmeyi hedefliyorum.",
          "tarih": "Eylül 2022 - Devam Ediyorum"
        },
      },
      "Referanslarım": {
        "Süleyman Şanlıtürk": {
          "link": "null",
          "aciklama": "Atlas Yazılım - Yazılım Geliştirici",
          "tarih": "Haziran 2022"
        },
      }
    };
    return deneyimlerim;
  }

  nitelikGetir() async {
    await Future.delayed(const Duration(seconds: 2));
    Map<String, Map> niteliklerim = {
      "Niteliklerim": {
        "Mobile Developer": {
          "aciklama":
              "C - C# - Python gibi bir çok dil öğrensem de asıl mobil uygulama geliştirmek istediğime karar verdim ve bu alanda her geçen gün kendimi geliştiriyorum. Flutter ile ilgili bir çok eğitim aldım. Erzincan'da Gürkan Fikret Günak ve Erol Kaftanoğlu hocalarımla bir araya gelme fırsatı bulurken Emre Altunbilek Hocamın udemy kursunu baştan sona bitirdim. Ek olarak bir çok uygulama geliştirdim ve her geçen gün geliştirmeye devam ediyorum.",
          "tarih": "null",
          "link": "null"
        },
        "Co-Founder": {
          "link": "assets/fabalogo2.png",
          "aciklama":
              "Kasım 2022'den beri FABA Software firmasının kurucu ortağıyım ve aynı zamanda mobil tarafını geliştiriyorum. Firmamız kullanıcıların ihtiyaçlarını fazlasıyla karşılayacak yazılımlar yapmak amacıyla kurulmuştur. Şu anda çeşitli alanlarda öncü olacak projeler geliştirmek için var gücümüzle çalışıyoruz.",
          "tarih": "Kasım 2022 - Devam Ediyorum"
        },
        "Freelancer": {
          "link": "null",
          "aciklama":
              "Kendimi yazılım alanında geliştirirken çeşitli projelerde de yer aldım. Serbest çalışan olarak şirketler veya topluluklar için projeler geliştirdim. Şu anda freelancer olarak projeler geliştirerek kendimi geliştirmeyi hedefliyorum.",
          "tarih": "Eylül 2022 - Devam Ediyorum"
        },
        "Öğrenci": {
          "link": "assets/ebyulogo.png",
          "aciklama":
              "Aktif olarak Erzincan Binali Yıldırım Üniversitesi Bilgisayar Mühendisliği Bölümü öğrencisiyim.",
          "tarih": "2021-2025"
        },
      },
      "Yeteneklerim": {
        "Dart - Flutter": {
          "link": "assets/dartlogo.png",
          "aciklama":
              "Mobil geliştirmeliyim dediğim andan itibaren Flutter öğreniyorum. Öğreniyorum diyorum çünkü yazılım alanında öğrenmek bitmeyen bir süreç. Her geçen gün kendime bir şeyler katıyorum. En iyi bildiğim yazılım dili Dart diyebilirim.",
          "tarih": "null"
        },
        "Java": {
          "link": "assets/javalogo.png",
          "aciklama":
              "Android geliştirme dediğimiz zaman yıllardır kullanılan Java'yı kendime katmamak olmazdı. Aslında Java dilini ilk olarak Nesneye Yönelik Programlama dersimiz için öğrenmiştim fakat daha sonradan kendimi geliştirerek Java ile mobil programlamanın temellerini de öğrendim.",
          "tarih": "null"
        },
        "C#": {
          "link": "assets/c#logo.png",
          "aciklama":
              "Masaüstü otomasyonlar geliştirmek adına C# dilinde de kendimi geliştirdim. Ufak çaplı bir çok proje çıkardım.",
          "tarih": "null"
        },
        "C": {
          "link": "assets/clogo.png",
          "aciklama":
              "Üniversitemizin algoritmaya giriş dersini bu dille vermesi, diğer yandan kendimi C gibi bir dilde yetkin hale getirmek istemem nedeniyle C dilinde irili ufaklı bir çok proje geliştirdim. Aynı zamanda algoritmasal olarak kendimi geliştirmem konusunda C dilinin yardımı çoktur.",
          "tarih": "null"
        },
        "Python": {
          "link": "assets/pythonlogo.png",
          "aciklama":
              "Lise yıllarımda yazılımda emekleme dönemlerimin dostudur. Algoritma yapısını ve yazılımın temellerini ilk öğrendiğim dildir.",
          "tarih": "null"
        },
      },
      "Hobilerim": {
        "Yazılım": {
          "link": "null",
          "aciklama":
              "Hiçbir zaman yazılımı sadece para kazanabileceğim bir kaynak olarak olarak görmedim. Yazılım geliştiriyorum çünkü bu bana keyif veriyor.",
          "tarih": "null"
        },
        "Müzik Dinlemek": {
          "link": "null",
          "aciklama":
              "Müzik dinlemek ruhumu dinlendiriyor gibi hissediyorum. Hayatımın her alanında boşluk buldukça müzik dinliyorum.",
          "tarih": "null"
        },
        "Film - Dizi İzlemek": {
          "link": "null",
          "aciklama":
              "Belgeseller çeşitli konularda beni bilgilendiyor.Diğer yandan film dizi izlerken genelde farklı kültürleri, yaşam tarzlarını ve dünya görüşlerini tanıma fırsatı buluyorum.",
          "tarih": "null"
        },
        "Seyahat Etmek": {
          "link": "null",
          "aciklama":
              "Seyahat etmek hem yeni yerler keşfetmem, farklı kültürler ve yaşam tarzlarıyla tanışmam, kültürel zenginlikleri anlamam ve farklı bakış açıları kazanmam konusunda yardımcı oluyor. Hem de yeni ortamlara girdiğimde daha kolay adapte olmamı sağlaıyor.",
          "tarih": "null"
        },
        "Kitap Okumak": {
          "link": "null",
          "aciklama":
              "Kelime dağarcığımı geliştirmek, okuduğumu anlamak, yeni bilgiler öğrenmek, hayal gücümü geliştirmek ve sayamacağım bir çok konuda kitaplardan destek alıyorum. Kitap okumak kaliteli vakit geçirmemi sağlıyor.",
          "tarih": "null"
        },
      }
    };
    return niteliklerim;
  }
}
