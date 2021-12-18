import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cuisine App",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          coverpage(),
          title(),
          profile(),
          name(),
          description(),
          line(),
          paragraph(),
          button1(),
          button2(),
        ],
      ),
    );
  }

  Container button1() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('วัตถุดิบที่ใช้'),
      ),
    );
  }

  Container button2() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('ขั้นตอนการทำ'),
      ),
    );
  }

  // Widget button() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         child: ElevatedButton(
  //           onPressed: () {},
  //           style: ElevatedButton.styleFrom(
  //             padding: const EdgeInsets.all(10),
  //             textStyle: GoogleFonts.mitr(
  //               fontSize: 16,
  //             ),
  //           ),
  //           child: const Text('วัตถุดิบ'),
  //         ),
  //       ),
  //       Container(
  //         padding: EdgeInsets.all(10),
  //         child: ElevatedButton(
  //           onPressed: () {},
  //           style: ElevatedButton.styleFrom(
  //             padding: const EdgeInsets.all(10),
  //             textStyle: GoogleFonts.mitr(
  //               fontSize: 16,
  //             ),
  //           ),
  //           child: const Text('วิธีการทำ'),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Container paragraph() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Column(
        children: [
          Text(
            'เมื่อเพื่อน ๆ อยากจะทำอะไรกินที่พิเศษ แต่อยู่หอ จะอุปกรณ์ก็ไม่อำนวยเท่าไรใช่ไหมคะ วันนี้จะมาแนะนำเมนูที่ทำได้ง่าย เพียงแค่มีหม้อหุงข้าว ก็ทำได้นั่นก็คือ “ซี่โครงหมูบาร์บีคิวอบชีส” ที่ทำได้อยู่ที่ไหนก็ทำได้ ถ้าพร้อมแล้วล้างหม้อหุงข้าวแล้วเข้าครัวพร้อมกันเลยค่ะ',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[800],
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget line() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: const Divider(
              thickness: 4,
            ),
          ),
        ),
        Text(
          'เกริ่นสักหน่อย',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[800],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: const Divider(
              thickness: 4,
            ),
          ),
        ),
      ],
    );
  }

  SizedBox coverpage() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: new AssetImage('images/porklibs_cover.jpg'),
          ),
        ),
      ),
    );
  }

  Widget description() {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 105,
      child: Card(
        color: Colors.purple[100],
        child: Row(
          children: [
            object1(),
            object2(),
            object3(),
            object4(),
          ],
        ),
      ),
    );
  }

  Widget object4() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.user,
              color: Colors.green[700],
            ),
            const Text(
              'สำหรับ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              '2 เสิร์ฟ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget object3() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.gripfire,
              color: Colors.red[600],
            ),
            const Text(
              'แคลอรี่',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              '300 Kcal/เสิร์ฟ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget object2() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.utensils,
              color: Colors.yellow[900],
            ),
            const Text(
              'เวลาปรุง',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              '10 นาที',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget object1() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.stopwatch,
              color: Colors.blue,
            ),
            Text(
              'เวลาเตรียม',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '10 นาที',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget description() {
  //   return Container(
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Container(
  //           child: Column(
  //             children: [
  //               FaIcon(FontAwesomeIcons.stopwatch),
  //               Text(
  //                 'เวลาเตรียม',
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.w700,
  //                 ),
  //               ),
  //               Text(
  //                 '10 นาที',
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.normal,
  //                   color: Colors.grey[800],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget name() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'วันที่ 17 ธ.ค. 2564 โดย เชฟอิงสุดหล่อ',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }

  Row profile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              'https://scontent.fhdy2-1.fna.fbcdn.net/v/t39.30808-6/268272528_3108760392679579_8894109880550143041_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeEGOkdFQI4cWO_u1DtcR3GKMQ58VQpCGIAxDnxVCkIYgO-s_bu4dYq62hRfPnT26ff56rwYQZ0dH1oLYk9WS0Md&_nc_ohc=4NbXTXGEQekAX-_Did4&_nc_zt=23&_nc_ht=scontent.fhdy2-1.fna&oh=00_AT--AlIq43TlE9iakgrYzHdzz_DcUX1IY02xqesHjTRF9w&oe=61C28BBE',
            ),
          ),
        ),
      ],
    );
  }

  Container title() {
    return Container(
        padding: const EdgeInsets.fromLTRB(35, 15, 35, 10),
        child: Column(
          children: [
            Text(
              'วิธีทำ “ซี่โครงหมูบาร์บีคิวอบชีส” เมนูเด็กหอ ที่ทำได้ในหม้อหุงข้าว',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple[800],
              ),
            ),
            Text(
              'ซี่โครงหมูบาร์บีคิวอบชีส” เมนูเริ่ด ๆ ที่ทำได้ง่าย ๆ เพียงมีหม้อหุงข้าว',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ));
  }
}
