import 'package:flutter/material.dart';
import 'package:sample/importer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// 入力する名前
  String _name = '';

  /// 入力する年齢
  String _age = '';

  /// 名前のバリデーション結果
  bool _isValidName = false;

  /// 年齢のバリデーション結果
  bool _isValidAge = false;

  /// 入力した名前をステートに保持する
  void _setName(String name) {
    setState(() {
      _name = name;
    });
  }

  /// 入力した年齢をステートに保持する
  void _setAge(String age) {
    setState(() {
      _age = age;
    });
  }

  ///  名前のバリデーションの結果をステートに保持する
  void _setIsValidName(bool isValid) {
    setState(() {
      _isValidName = isValid;
    });
  }

  ///  年齢のバリデーションの結果をステートに保持する
  void _setIsValidAge(bool isValid) {
    setState(() {
      _isValidAge = isValid;
    });
  }

  /// 全てのバリデーション結果を返す
  bool _isAllValid() {
    return _isValidName && _isValidAge;
  }

  void toNextPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const NextPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ホーム画面')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('以下の項目を入力してください'),
              CustomTextField(
                label: '名前',
                onChange: _setName,
                validators: [
                  RequiredValidator(),
                  MaxLengthValidator(10),
                ],
                setIsValid: _setIsValidName,
              ),
              CustomTextField(
                label: '年齢',
                onChange: _setAge,
                validators: [
                  RequiredValidator(),
                  AgeValidator(),
                ],
                setIsValid: _setIsValidAge,
              ),
              ElevatedButton(
                onPressed: _isAllValid()
                    ? () {
                        toNextPage();
                      }
                    : null,
                child: const Text('次へ'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
