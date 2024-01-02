import 'package:bloc_pattern/ui/cubit/homepage_cubit.dart';
import 'package:bloc_pattern/ui/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  // Uygulamayı başlatmak için runApp fonksiyonunu kullanır.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Uygulamanın ana sınıfıdır ve StatelessWidget sınıfından türetilir.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Bloc mimarisini kullanmak için MultiBlocProvider'ı kullanır.
    return MultiBlocProvider(
      // BlocProvider, bir Cubit'i sağlamak için kullanılır.
      // Burada HomepageCubit sınıfından bir örneği sağlanmaktadır.
      providers: [BlocProvider(create: (context) => HomepageCubit())],
      
      // MaterialApp, temel malzeme tasarımı ile bir Flutter uygulamasını tanımlayan bir widget'tır.
      child: MaterialApp(
        // Hata ayıklama banner'ını gizlemek için kullanılır.
        debugShowCheckedModeBanner: false,
        
        // Uygulamanın başlık metnini belirler.
        title: 'Flutter Demo',
        
        // Uygulama temasını belirler.
        theme: ThemeData(
          // Renk şemalarını belirlemek için kullanılır.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          
          // Material 3 tasarımını kullanıp kullanmamayı belirler.
          useMaterial3: true,
        ),
        
        // Uygulamanın ana ekranını belirler.
        home: const Homepage(),
      ),
    );
  }
}
