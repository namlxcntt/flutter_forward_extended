import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_forward_extend/domain/model/note_model.dart';
import 'package:flutter_forward_extend/presentation/home/bloc/home_bloc.dart';
import 'package:flutter_forward_extend/presentation/home/item_note_home.dart';
import 'package:flutter_forward_extend/presentation/utils/extensions/export_extensions.dart';
import 'package:flutter_forward_extend/presentation/utils/routes/app_routes.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    getListNotes();
    super.initState();
  }

  void getListNotes(){
    context.read<HomeBloc>().add(GetListNoteEvent());
  }

  void navigateAddNote(){
    context.navigateRoute(AppRoute.createNote).then((value){
      getListNotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateAddNote();
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          context.getString().notes,
          style: context.themeText().titleLarge,
        ),
      ),
      body: Column(
        children: [
          const Divider(
            height: 2.0,
          ),
          Expanded(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is GetListNoteState) {
                  var list = state.listData;
                  if (list.isEmpty) return Container();
                  return MasonryGridView.builder(
                    padding: const EdgeInsets.only(top: 24),
                    itemCount: list.length,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) =>
                        ItemNoteHome(note: list[index]),
                  );
                }
                return Container();
              },
            ),
          ),
        ],
      ),
    );

  }
}
