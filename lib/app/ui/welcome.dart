import 'package:flutter/material.dart';
import 'package:mobile_exam/app/ui/widgets/nft.app.bar.dart';
import 'package:mobile_exam/utils/constants.dart';

import 'home.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          const NFTAppBar(
            leading: 'A.',
            trailing: CircleAvatar(
              backgroundColor: kPrimaryColor,
              child: Icon(
                Icons.wallet,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              const Icon(
                Icons.bolt,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
              ),
              const Text(
                'Started',
                style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              const Text(
                'Discover',
                style: TextStyle(
                  fontSize: 50,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              const Text(
                'Rare',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              const Text(
                'Collections',
                style: TextStyle(
                  fontSize: 50,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              const Text(
                'Of',
                style: TextStyle(
                  fontSize: 50,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              Stack(
                children: [
                  Positioned(
                    left: 240,
                    top: 20,
                    child: Container(
                      height: 50,
                      width: 90,
                      decoration: const BoxDecoration(
                        color: kNFTTextRandom,
                      ),
                    ),
                  ),
                  const Text(
                    'Arts and NFTs',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              const Text(
                'Digital marketplace for crypto collectiobles',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: kPrimaryTextColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              const Text(
                'and non-fungible tokens',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: kPrimaryTextColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              const Text(
                'NFTs',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              Column(
                children: [
                  const Text(
                    '12.1K+',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  const Text(
                    'Art Work',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                      color: kPrimaryTextColor,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  const Text(
                    '1.7M+',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  const Text(
                    'Artist',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                      color: kPrimaryTextColor,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  const Text(
                    '45K+',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  const Text(
                    'Auction',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                      color: kPrimaryTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.073,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width * 0.74,
                decoration: const BoxDecoration(
                  color: Color(0xFFE7DAFD),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 40,
                      left: 30,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: const Color(0xFFCAB3FF),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_forward_outlined,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 115,
                      left: 30,
                      child: Text(
                        'Discover\nArtwork',
                        style: TextStyle(
                          fontSize: 30,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 195,
                        left: 30,
                        child: Container(
                          height: 2,
                          width: 70,
                          color: kPrimaryColor,
                        )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'Supported by',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: kPrimaryTextColor,
                ),
              ),
              Icon(Icons.diamond_outlined),
              Icon(Icons.diamond_outlined),
              Icon(Icons.diamond_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
