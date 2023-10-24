import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String imagePath;
  final String productName;
  final double price;

  ProductWidget({
    required this.imagePath,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding
    (
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.28,
        width: MediaQuery.of(context).size.width * 0.41,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Color(0xFF673EE5), width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 148,
                height: 148,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                productName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins2',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\u{20B9} $price',
                    style: TextStyle(
                      color: Color(0xFF5125D2),
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  CircleAvatar(
                    radius: 19,
                    backgroundColor: const Color.fromRGBO(81, 37, 210, 1),
                    child: IconButton(
                      icon:
                          const Icon(Icons.favorite_border_outlined, size: 23),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
