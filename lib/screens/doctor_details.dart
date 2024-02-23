// import 'package:doctor_appointment_app/components/button.dart';
// import 'package:doctor_appointment_app/utils/config.dart';
import 'package:doctor_appointment_app/components/button.dart';
import 'package:doctor_appointment_app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/custom_appbar.dart';

class DoctorDetails extends StatefulWidget {
  // const DoctorDetails({super.key});
  // const DoctorDetails({super.key});
  const DoctorDetails({Key? key}) : super(key: key);
  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appTitle: 'Doctor Details',
        icon: const FaIcon(Icons.arrow_back_ios),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFav = !isFav;
              });
            },
            icon: FaIcon(
              isFav ? Icons.favorite_rounded : Icons.favorite_outline,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AboutDoctor(),
              DetailBody(),
              // Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Button(
                  width: double.infinity,
                  title: 'Book Appointment',
                  onPressed: () {
                    Navigator.of(context).pushNamed('booking_page');
                  },
                  disable: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('assets/doctor_2.jpg'),
            backgroundColor: Colors.white,
          ),
          Config.spaceSmall,
          const Text(
            'Dr. Iqmal',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Informatics Engineering\n(Universitas Teknologi Yogyakarta, Indonesia)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Computer Engineering\n(Universitas Teknologi Yogyakarta, Indonesia)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          Config.spaceSmall,
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Sleman Goverment Hospital',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Config.spaceSmall,
          DoctorInfo(),
          Config.spaceSmall,
          const Text(
            'About Doctor',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Config.spaceSmall,
          Text(
            "Dr. Iqmal is a highly skilled professional with dual degrees in Informatics Engineering and Computer Engineering from Universitas Teknologi Yogyakarta, Indonesia. Currently, he dedicates his expertise to Sleman Government Hospital, where he has amassed 15 years of experience in the field. Managing a patient load of 100 individuals, Dr. Iqmal's patient-centric approach, coupled with his technical proficiency, has earned him a commendable rating of 4.0. His unique blend of medical and informatics knowledge positions him as a valuable asset, contributing significantly to the hospital's commitment to quality healthcare services.",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
            softWrap: true,
            textAlign: TextAlign.justify,
          ),
          // Text('Dr. Iqmal is a highly skilled professional with dual degrees in Informatics Engineering and Computer Engineering from Universitas Teknologi Yogyakarta, Indonesia. Currently, he dedicates his expertise to Sleman Government Hospital, where he has amassed 15 years of experience in the field. Managing a patient load of 100 individuals, Dr. Iqmal's patient-centric approach, coupled with his technical proficiency, has earned him a commendable rating of 4.0. His unique blend of medical and informatics knowledge positions him as a valuable asset, contributing significantly to the hospital's commitment to quality healthcare services.', style: TextStyle( fontWeight: FontWeight.w500, height: 1.5,),),
        ],
      ),
    );
  }
}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Row(
      children: const <Widget>[
        InfoCard(
          label: 'Patients',
          value: '100',
        ),
        SizedBox(width: 15),
        InfoCard(
          label: 'Experiences',
          value: '15 Years',
        ),
        SizedBox(width: 15),
        InfoCard(
          label: 'Rating',
          value: '4.0',
        ),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.label, required this.value})
      : super(key: key);

  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Config.primaryColor,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: Column(
          children: <Widget>[
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
