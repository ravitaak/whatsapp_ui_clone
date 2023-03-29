import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:velocity_x/velocity_x.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  ChatsPageState createState() => ChatsPageState();
}

class ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/200"),
            ),
            title: Text("Contact $index"),
            subtitle: const Text("Last message"),
            trailing: const Text("12:30 PM"),
          );
        },
      ),
    );
  }
}

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  CallsPageState createState() => CallsPageState();
}

class CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_call),
        ),
        body: SingleChildScrollView(
            child: SizedBox(
                height: context.screenHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundColor: const Color(0xFF269E7E),
                        child: Transform.rotate(
                          angle: 45 * math.pi / 180,
                          child: const Icon(
                            size: 30,
                            Icons.link,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: "Create call link".text.make(),
                      subtitle:
                          "Share a link for your WhatsApp call".text.make(),
                    ),
                    "Recent".text.semiBold.color(Colors.black54).make().px16(),
                    Expanded(
                        child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const CircleAvatar(
                            backgroundImage:
                                NetworkImage("https://picsum.photos/200"),
                          ),
                          title: Text("Contact $index"),
                          subtitle: Row(
                            children: [
                              Transform.rotate(
                                  angle: index.isEven
                                      ? 0 * math.pi / 180
                                      : 180 * math.pi / 180,
                                  child: Icon(
                                      index.isEven
                                          ? Icons.arrow_outward
                                          : Icons.arrow_outward,
                                      color: index.isEven
                                          ? Colors.red
                                          : Colors.green)),
                              "January 25, 11:15".text.make(),
                            ],
                          ),
                          trailing: const Icon(Icons.call),
                        );
                      },
                    )),
                  ],
                ))));
  }
}

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  StatusPageState createState() => StatusPageState();
}

class StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
              radius: 24,
              backgroundColor: const Color.fromARGB(179, 220, 219, 219),
              child: IconButton(
                splashRadius: 24.0,
                icon: const Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
                onPressed: () {},
              )),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.photo_camera),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.screenHeight,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ListTile(
              onTap: () {},
              leading: const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.black38,
                child: Icon(
                  size: 30,
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              title: "My status".text.make(),
              subtitle: "Tap to add status update".text.make(),
            ),
            "Recent updates".text.semiBold.color(Colors.black54).make().px16(),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: const CircleAvatar(
                      radius: 24,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/200"),
                    ),
                    title: Text("Contact $index"),
                    subtitle: const Text("My status"),
                    trailing: const Text("Just now"),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
