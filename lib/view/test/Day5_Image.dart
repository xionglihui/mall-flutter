import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageTest"),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/ic_launcher.png"),
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
            Image(
              image: NetworkImage(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1601374651598&di=f7ad5de3e5b1ceba86147d6a3da9684b&imgtype=0&src=http%3A%2F%2Ft8.baidu.com%2Fit%2Fu%3D3571592872%2C3353494284%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D1200%26h%3D1290"),
              width: 100,
              height: 100,
            ),
            Image.network(
              "https://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1601969491&t=1dfefb3daf3810e76c7e55211b21740b",
              fit: BoxFit.fill,
              width: 100,
              height: 100,
            ),
            Image(
              image: AssetImage("assets/images/ic_launcher.png"),
              width: 100,
              height: 100,
              fit: BoxFit.fill,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            ),
            Image(
              image: AssetImage("assets/images/ic_launcher.png"),
              width: 200,
              height: 200,
              repeat: ImageRepeat.repeatY,
            ),
            Icon(Icons.error,color:Colors.red)
          ],
        ),
      ),
    );
  }
}
