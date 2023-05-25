import 'package:flutter/material.dart';

class Remedies extends StatelessWidget {
  const Remedies({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 400,
          child: RichText(
            softWrap: true,
            textAlign: TextAlign.center,
            text: const TextSpan(
              // Styles for TextSpans must be explicitly defined.
              // Child text spans will inherit styles from parent
              style: TextStyle(
                color: Colors.white,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Remedies\n\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                TextSpan(
                  text: 'Remedies to do when plants moisture is low\n\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text:
                      "You can try a number of treatments to aid plants in recovering when their moisture level is low:\n\n Watering: Give the plants regular, deep watering. Verify that the roots, not just the surface, are receiving water. To reduce evaporation, water should be applied in the early morning or late afternoon when the sun is not as hot.  \n\nMulching: To assist the soil retain moisture and prevent it from drying out rapidly, mulch the plants with organic matter, such as straw or finely chopped leaves. \n\n If the air surrounding the plants is dry, increase the humidity by spraying them frequently or placing a humidifier close by. \n\n Provide Shade: If the plants are exposed to intense heat and sunlight, give them some shade to shield them from the sun's rays and stop moisture loss. \n\n Compost or other organic matter can be added to the soil to assist it retain moisture if it is too sandy and dry . ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
