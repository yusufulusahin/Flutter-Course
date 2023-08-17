import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({
    super.key,
    this.height = 100,
  });

  final imageUrl =
      'https://w7.pngwing.com/pngs/135/872/png-transparent-jeep-logo-jeep-wrangler-car-jeep-cj-logo-jeep-logo-cdr-free-logo-design-template-text-thumbnail.png';
  final imageUrl2 =
      'https://w7.pngwing.com/pngs/386/950/png-transparent-2017-jeep-wrangler-jeep-wrangler-jk-jeep-comanche-jeep-cj-jeep-car-off-road-vehicle-vehicle-thumbnail.png';
  final imageUrl3 =
      'https://w7.pngwing.com/pngs/125/678/png-transparent-red-jeep-wrangler-illustration-jeep-cj-willys-jeep-truck-car-pickup-truck-jeep-vintage-car-truck-headlamp-thumbnail.png';
  final imageUrl4 =
      'https://w7.pngwing.com/pngs/796/307/png-transparent-2006-jeep-wrangler-2001-jeep-wrangler-2018-jeep-wrangler-jeep-cj-jeep-car-mode-of-transport-off-road-vehicle-thumbnail.png';

  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: 100,
      fit: BoxFit.cover,
    );
  }
}
