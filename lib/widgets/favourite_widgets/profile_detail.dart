import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'alisesmith',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/stories1.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Column(
                  children: const [
                    Text(
                      '245',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('posts')
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: const [
                    Text(
                      '7 850',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('followers')
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: const [
                    Text(
                      '715',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('following')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: const Text('Send Message'),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.person,
                          size: 20,
                        ),
                        Icon(
                          Icons.check,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 30,
                  child: ElevatedButton(
                    child: Icon(Icons.arrow_drop_down),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Text('Alise Smith'),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.verified,
                color: Colors.blue,
              )
            ],
          ),
          const Text('Fashion-designer, London UK')
        ],
      ),
    );
  }
}
