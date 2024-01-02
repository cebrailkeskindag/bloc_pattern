import 'package:bloc_pattern/ui/cubit/homepage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // TextEditingController, metin alanlarından girişleri kontrol etmek için kullanılır.
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Scaffold, temel materyal tasarım yapı taşlarından biridir ve uygulamanın temel yapısını sağlar.
    return Scaffold(
      // AppBar, sayfanın üst kısmında bir uygulama çubuğu oluşturur.
      appBar: AppBar(
        title: const Text("Bloc Pattern"),
      ),
      // Body, sayfanın ana içeriğini oluşturan widget'ı belirtir.
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          // Column, dikey bir sıra içinde birden çok widget'ı düzenler.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // BlocBuilder, bir Cubit'ten gelen duruma göre bir widget'ı yeniden oluşturur.
              BlocBuilder<HomepageCubit, int>(
                builder: (context, sonuc) {
                  return Text(
                    sonuc.toString(),
                    style: const TextStyle(fontSize: 50),
                  );
                },
              ),
              // TextField, metin girişi için bir widget sağlar.
              TextField(
                controller: tfSayi1,
                decoration: const InputDecoration(hintText: "Sayı 1"),
              ),
              TextField(
                controller: tfSayi2,
                decoration: const InputDecoration(hintText: "Sayı 2"),
              ),
              // Row, yatay bir sıra içinde birden çok widget'ı düzenler.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ElevatedButton, yükseltilmiş bir düğme oluşturur.
                  ElevatedButton(
                    onPressed: () {
                      // context.read, Cubit'e erişim sağlar ve işlemleri tetikler.
                      context.read<HomepageCubit>().toplamaYap(tfSayi1.text, tfSayi2.text);
                    },
                    child: const Text("Toplama"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomepageCubit>().carpmaYap(tfSayi1.text, tfSayi2.text);
                    },
                    child: const Text("Çarpma"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
