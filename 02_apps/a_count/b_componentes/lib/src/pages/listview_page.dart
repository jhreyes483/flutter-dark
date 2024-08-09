import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  final ScrollController _scrollController = ScrollController();
  
  final List<int> _listaNumeros = [];
  
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
        controller  : _scrollController,
        itemCount   : _listaNumeros.length,
        itemBuilder : (BuildContext context, int index) {
          final imagen = _listaNumeros[index];

          return FadeInImage.assetNetwork(
            placeholder : 'assets/jar-loading.gif',
            image       : 'https://picsum.photos/250?image=$imagen',
            fit         : BoxFit.cover,
          );

/*
          return Center(
          child: Image.network(
            'https://picsum.photos/250?image=$imagen',
            fit: BoxFit.cover,
          ));       
*/
/*          
          return Container(
            child: Text('item $index'),
          );
*/
        },
      ),
    );
  }



  Future<void> obtenerPagina1() async {
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregar10();
    });
  }

  void _agregar10() {
    
    for (var i = 0; i < 5; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {});
  }

  Future<void> fetchData() async {
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250),
    );

    _agregar10();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Positioned(
        bottom: 15.0,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
