import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticketapp/base/res/styles/app_style.dart';
import 'package:ticketapp/providers/profile_screen_provide.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: ChangeNotifierProvider<ProfileScreenProvide>(
            create: (context) => ProfileScreenProvide(),
            child: Consumer<ProfileScreenProvide>(
              builder: (context, provider, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(provider.eligibilityMesg.toString(),
                        style: (provider.isEligible == true)
                            ? AppStyles.sucessText
                            : AppStyles.errorText),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(hintText: "Enter your age"),
                      onChanged: (val) => {
                        provider.checkEligbility(
                          int.parse(val),
                        ),
                      },
                    )
                  ],
                );
              },
            )),
      )),
    );
  }
}
