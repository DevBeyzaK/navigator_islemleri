/*
-MaterialApp projenin bel kemiği olduğunu daha önce söylemiştik. Bunu ispatlamanın en güzel örneği rotalardır. MaterialPageRoute sınıfı MaterialApp olmadan çalışmaz.

-Ben rotalara neden ihtiyaç duyarım? Ben her sayfa geçişinde MaterialPageRoute sınıfını çağırıyor muyum? Bu performans açısından iyi değil. Bu yüzden rotaları kullanmak daha performanslıdır.

-Rota kullanmamnın iki yolu vardır. Bir tanesi standart olan diğeri gelişmiş olandır.

-Aralarındaki fark biri sadece sayfa geçişini sağlar.

-Diğeri ise hem sayfa geçişini hem de veri aktarımını sağlar ama daha karmaşıktır.

-Rotaları tanımlamak için MaterialApp içerisindeki routes parametresi kullanılır ve bizden bir map ister içine rota ister.

-Eğer ana rotayı tanımlamak istersek / işareti ile tanımlarız.
"/": (context) => RedPage(),

Eğer bunu yapıyorsanız artık diğer rotaların başına bu slash hep konmalıdır.
"/yellowPage": (context) => Yellowpage(),
        "/bluePage": (context) => BluePage(),

        ayrıca bu kök dizinini kullanacaksanız artık materialApp de home parametresini kullanamzsınız ya da yorum satırı yapın:
        //home:RedPage(),

        Eğer bu rotada herhangi bir yanlış yol olursa çalışan özel bir parametre vardır bu da materialApp içersindedir routesın bittiği yere şunu tanımlıyoruz tabi daha öncesinde bir hata sayfası oluşturduk:

        onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => Hatasayfasi()); //bu rotasını yanlış yazdığımızda sayfaya değil de hata sayfasına gider.
      },

   OnGenerate Route  :
   Yine materialApp içerisinde bulunur. onGenerateRoute: adında bir parametresi vardır.

   Bunun önceki konudan farkı sadece sayfa açma işlemini değil aynı zamanda veri aktarımı yapmak için de kullanılabildiği için daha fazla işimize yarar.
   
   -Ben MaterialApp ini içini doldurmak istemiyorum. O yüzden farklı bir dosya oluşturup orda bu işlemi tanımlayıp materialApp de çağıracağım.

   -Öncelikle route generator.dart adında bir dosya oluşturalım:
   class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Redpage());
      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => Yellowpage());
      case "/bluePage":
        return MaterialPageRoute(builder: (context) => BluePage());
      default:
        return MaterialPageRoute(builder: (context) => Hatasayfasi());
    }
  }
}

materialappde onGenerated olan yere şu şekilde çağırıyoruz:
 onGenerateRoute: RouteGenerator.routeGenerator,

 -OnGenerateRoute ile kurucu yardımıyla veri Gönderme-
 1) Sayfaya gidecek olan butonun olduğu sayfada veri oluşturulur.

 2)Verinin gideceği sayfada kurucusunda alınacak veri için hazırlık yapılır 
 final String ad;
 required this.ad;

 3)Rota yönetiminin olduğu sayfada (route_generator ) verinin gideceği sayfaya gönderilir.
   
    String name = settings.arguments as String; //objeyi stringe döndürdük as yazarak
        return MaterialPageRoute(builder: (context) => BluePage(ad: name,));
 4) Anasayfadaki veriyi gönderen butona şu yazılır:
                onPressed: () {
                Navigator.of(context).pushNamed("/bluePage",arguments: name);
   Sonuç olarak veri gönderimi tamamlanır.             
*/
