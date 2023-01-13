import 'package:clean_architecture_riverpod/core/app/app_extension.dart';
import 'package:clean_architecture_riverpod/features/post/presentation/provider/post_provider.dart';
import 'package:clean_architecture_riverpod/features/post/presentation/screens/post_detail_screen.dart';

//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//import '../../../../common/cubit/generic_cubit.dart';
//import '../../../../common/cubit/generic_cubit_state.dart';
import '../../../../common/dialog/retry_dialog.dart';
import '../../../../common/riverpod/generic_state.dart';
import '../../../../common/widget/empty_widget.dart';
import '../../../../common/widget/spinkit_indicator.dart';
import '../../../../core/app/app_style.dart';
import '../../../user/data/models/user.dart';
import '../../data/models/post.dart';

//import '../cubit/post_cubit.dart';
import 'create_post_screen.dart';

class PostListScreen extends ConsumerStatefulWidget {
  const PostListScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  ConsumerState createState() => _PostListScreenState();
}

class _PostListScreenState extends ConsumerState<PostListScreen> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() {
    // if (!mounted) return;
    // context.read<PostCubit>().getPosts(widget.user);
    ref.read<PostNotifier>(postProvider.notifier).getPosts(widget.user);
  }

  PreferredSizeWidget get appBar {
    return AppBar(
      title: const Text("Posts"),
      centerTitle: false,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_outlined),
      ),
      actions: [
        IconButton(
          onPressed: () async => getData(),
          icon: const Icon(Icons.refresh),
        )
      ],
    );
  }

  Widget floatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
      icon: const Icon(Icons.note_add),
      label: const Text("Create a new post"),
      onPressed: () async {
        var resultFromCreatePostScreen = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CreatePostScreen(user: widget.user),
          ),
        );
        if (resultFromCreatePostScreen != null && resultFromCreatePostScreen) {
          getData();
        }
      },
    );
  }

  Widget get header {
    return Card(
      child: Row(
        children: [
          Image.asset(widget.user.gender.name.getGenderWidget, height: 75),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.user.name, maxLines: 2, style: headLine4),
                const SizedBox(height: 5),
                Text(
                  //  todoCubit.getTodoCount,
                  ref.watch(postProvider
                      .select((post) => "${post.data?.length ?? "0"}")),
                  style: const TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                )

                // Builder(
                //   builder: (context) {
                //     final postCubit = context.watch<PostCubit>();
                //     return Text(
                //       postCubit.getPostCount,
                //       style: const TextStyle(
                //           color: Colors.black54, fontWeight: FontWeight.w500),
                //     );
                //   },
                // )
              ],
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }

  Widget userPostItem(List<Post> posts) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        itemBuilder: (_, index) {
          Post post = posts[index];
          return Center(
            child: GestureDetector(
              onTap: () async {
                var resultFromPostDetailScreen = await Navigator.push(
                  _,
                  MaterialPageRoute(
                    builder: (_) {
                      return PostDetailScreen(post: post, user: widget.user);
                    },
                  ),
                );

                if (resultFromPostDetailScreen != null &&
                    resultFromPostDetailScreen) {
                  getData();
                }
              },
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(post.title, maxLines: 2, style: headLine2),
                            const SizedBox(height: 10),
                            Text(
                              post.body,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios_sharp)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton(context),
      appBar: appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header,
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text("Posts", style: headLine1),
          ),

          Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final state = ref.watch(postProvider);
            switch (state.status) {
              case Status.empty:
                return const EmptyWidget(message: "No post");
              case Status.loading:
                return const Center(child: SpinKitIndicator());
              case Status.failure:
                return RetryDialog(
                  title: state.error ?? "Error",
                  onRetryPressed: () => getData(),
                );
              case Status.success:
                return userPostItem(state.data ?? []);
            }
          })

          // BlocBuilder<PostCubit, GenericCubitState<List<Post>>>(
          //   builder:
          //       (BuildContext context, GenericCubitState<List<Post>> state) {
          //     switch (state.status) {
          //       case Status.empty:
          //         return const EmptyWidget(message: "No post");
          //       case Status.loading:
          //         return const Center(child: SpinKitIndicator());
          //       case Status.failure:
          //         return RetryDialog(
          //           title: state.error ?? "Error",
          //           onRetryPressed: () => getData(),
          //         );
          //       case Status.success:
          //         return userPostItem(state.data ?? []);
          //     }
          //   },
          // ),
        ],
      ),
    );
  }
}

// class PostListScreen extends StatefulWidget {
//   const PostListScreen({Key? key, required this.user}) : super(key: key);
//
//   final User user;
//
//   @override
//   State<PostListScreen> createState() => _PostListScreenState();
// }
//
// class _PostListScreenState extends State<PostListScreen> {
//   @override
//   void initState() {
//     getData();
//     super.initState();
//   }
//
//   getData() async {
//     if (!mounted) return;
//     context.read<PostCubit>().getPosts(widget.user);
//   }
//
//   PreferredSizeWidget get appBar {
//     return AppBar(
//       title: const Text("Posts"),
//       centerTitle: false,
//       leading: IconButton(
//         onPressed: () => Navigator.pop(context),
//         icon: const Icon(Icons.arrow_back_outlined),
//       ),
//       actions: [
//         IconButton(
//           onPressed: () async => getData(),
//           icon: const Icon(Icons.refresh),
//         )
//       ],
//     );
//   }
//
//   Widget floatingActionButton(BuildContext context) {
//     return FloatingActionButton.extended(
//       icon: const Icon(Icons.note_add),
//       label: const Text("Create a new post"),
//       onPressed: () async {
//         var resultFromCreatePostScreen = await Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => CreatePostScreen(user: widget.user),
//           ),
//         );
//         if (resultFromCreatePostScreen != null && resultFromCreatePostScreen) {
//           getData();
//         }
//       },
//     );
//   }
//
//   Widget get header {
//     return Card(
//       child: Row(
//         children: [
//           Image.asset(widget.user.gender.name.getGenderWidget, height: 75),
//           const SizedBox(width: 10),
//           Flexible(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(widget.user.name, maxLines: 2, style: headLine4),
//                 const SizedBox(height: 5),
//                 Builder(
//                   builder: (context) {
//                     final postCubit = context.watch<PostCubit>();
//                     return Text(
//                       postCubit.getPostCount,
//                       style: const TextStyle(
//                           color: Colors.black54, fontWeight: FontWeight.w500),
//                     );
//                   },
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(width: 15),
//         ],
//       ),
//     );
//   }
//
//   Widget userPostItem(List<Post> posts) {
//     return Expanded(
//       child: ListView.builder(
//         shrinkWrap: true,
//         itemCount: posts.length,
//         itemBuilder: (_, index) {
//           Post post = posts[index];
//           return Center(
//             child: GestureDetector(
//               onTap: () async {
//                 var resultFromPostDetailScreen = await Navigator.push(
//                   _,
//                   MaterialPageRoute(
//                     builder: (_) {
//                       return PostDetailScreen(post: post, user: widget.user);
//                     },
//                   ),
//                 );
//
//                 if (resultFromPostDetailScreen != null &&
//                     resultFromPostDetailScreen) {
//                   getData();
//                 }
//               },
//               child: Card(
//                 margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Flexible(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(post.title, maxLines: 2, style: headLine2),
//                             const SizedBox(height: 10),
//                             Text(
//                               post.body,
//                               maxLines: 3,
//                               overflow: TextOverflow.ellipsis,
//                             )
//                           ],
//                         ),
//                       ),
//                       const Icon(Icons.arrow_forward_ios_sharp)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: floatingActionButton(context),
//       appBar: appBar,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           header,
//           const Padding(
//             padding: EdgeInsets.only(left: 20, top: 15),
//             child: Text("Posts", style: headLine1),
//           ),
//           BlocBuilder<PostCubit, GenericCubitState<List<Post>>>(
//             builder:
//                 (BuildContext context, GenericCubitState<List<Post>> state) {
//               switch (state.status) {
//                 case Status.empty:
//                   return const EmptyWidget(message: "No post");
//                 case Status.loading:
//                   return const Center(child: SpinKitIndicator());
//                 case Status.failure:
//                   return RetryDialog(
//                     title: state.error ?? "Error",
//                     onRetryPressed: () => getData(),
//                   );
//                 case Status.success:
//                   return userPostItem(state.data ?? []);
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
