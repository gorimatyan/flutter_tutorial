import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'common/widgets/custom_button.dart';

void main() {
  // アプリ全体でriverpodの状態を共有するためのProviderを使う
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// 状態が変化する必要があるならStateProvider,変化しないならProviderを使う。
final StateProvider<int> appCount =
    StateProvider<int>((StateProviderRef<int> ref) {
  return 3;
});

// Providerで作った変数はConsumerWidgetにすることで受け取れる。
class MyHomePage extends ConsumerWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch(変数名)でStateProviderの値を受け取れる。
    final int count = ref.watch(appCount);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Riverpod App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'フラッターアプリです！！',
              ),
              Text(
                count.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const CustomButton(),
            FloatingActionButton(
              heroTag: 'next page',
              onPressed: () {
                // ignore: always_specify_types
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const SecondPage()));
              },
              tooltip: 'Increment',
              child: const Icon(Icons.arrow_right_alt_rounded),
            ),
            FloatingActionButton(
              heroTag: 'plus',
              onPressed: () {
                // ref.readでStateProviderの値を呼び出す
                ref.read(appCount.notifier).state++;
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ],
        ));
  }
}

// Providerで作った変数はConsumerWidgetにすることで受け取れる。
class SecondPage extends ConsumerWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch(変数名)でStateProviderの値を受け取れる。
    final int count = ref.watch(appCount);

    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            '$count',
            style: const TextStyle(fontSize: 30),
          ),
        ));
  }
}
