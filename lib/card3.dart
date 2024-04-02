import 'dart:developer';
import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';

class Card3 extends StatelessWidget {
    const Card3({super.key});
    @override
    Widget build(BuildContext content) {
        return Center(
            child: Container(
                constraints: const BoxConstraints.expand(
                    width: 350,
                    height: 450,
                ),
                decoration: const BoxConstraints(
                    image: DecorationImage(
                        image: 
                        NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/3a/Parque_Lage_RJ.jpg'),
                        fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Stack(
                    children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            ),
                        ),
                        //TODO: Adicionar um BoxDecoration com sobreposição escura
                        Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children : [
                                    const Icon(
                                        Icons.book,
                                        color: Colors.white,
                                        size: 40,
                                    ),
                                    const SizedBox(height:30),
                                ],
                            )
                        )
                        //TODO: Adicionar um Container, Column, Icon e Texto
                        Center(
                            child: Wrap(
                                alignment: WrapAlignment.start,
                                spacing: 12,
                                runSpacing: 12,
                                children: [
                                    Chip(
                                        label: Text('Natureza',
                                        style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                                        backgroundColor: Colors.black.withOpacity(0.7),
                                        onDeleted: (){
                                            log('delete');
                                        },
                                    ),
                                ]
                            )
                        )
                        //TODO: Adicionar um widget Center com filhos do widget Chip
                    ],
                )
            )
        )
    }
}