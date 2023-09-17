
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _nama = TextEditingController();
  final _nim  = TextEditingController();
  final _TahunLahir = TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Data"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxnama(),
            _textboxnim(),
            _textboxTahunLahir(),
            _TombolSimpanData(),
          ],
           )),
    );
  }

  _textboxnama(){
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _nama,
    );
  }

  _textboxnim(){
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nim
    );
  }

    _textboxTahunLahir(){
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _TahunLahir,
    );
  }

      _TombolSimpanData(){
    return ElevatedButton(
      onPressed: (){
        String nama = _nama.text;
        String nim = _nim.text;
        String TahunLahir = _TahunLahir.text;
        Navigator.of(context as BuildContext).push(MaterialPageRoute(
          builder: (context) => FormData(
            nama : nama,
            nim : nim,
            TahunLahir : TahunLahir
            )
            ));
         
      },
    child: const Text('Simpan Data'),);
  }
}