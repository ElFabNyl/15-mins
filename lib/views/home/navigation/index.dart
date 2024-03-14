import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 247, 247),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 30,
                          width: 30,
                          child:
                              Lottie.asset("assets/animations/ideaLamp.json")),
                    ],
                  ),
                 const  Text(
                    "Si tu dors 8 heures par jours, et meurt a l'age de 75 ans. Alors tu auras passee 1/3 de ta vie a dormir soit 25 ans.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                 const SizedBox(height: 8),
                 const  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        // backgroundImage: NetworkImage(authorImageUrl),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Zacharias Tannee Fomum', // Remplacez par le nom de l'auteur
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
