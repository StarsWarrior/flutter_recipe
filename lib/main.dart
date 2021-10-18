import 'package:flutter/material.dart';
import 'package:recipes/models/recipe.dart';

void main(){
  runApp(RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipes Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.yellow[700],
          secondary: Colors.red[400],
        ),
      ),
      home: HomePage(title: 'Recipe Calculator',),
    );
  }
}
class HomePage extends StatefulWidget {
  
  final String title;
  HomePage({required this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
  body: SafeArea(
    child: ListView.builder(
      itemCount: Recipe.samples.length,
      itemBuilder: (ctx, i) {
        return Card(
          child: Column(
            children: [
              Image.asset(Recipe.samples[i].imageurl),
              Text(Recipe.samples[i].label),
            ],
          )
        );
      },
    )
    ),
    );
  }
}