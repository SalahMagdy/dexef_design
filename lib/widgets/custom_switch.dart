import 'package:flutter/material.dart';
import 'package:second_design/views/addons_view.dart';
import 'package:second_design/views/main_view.dart';

class CustomSwitch extends StatefulWidget {
  final bool status;

   const CustomSwitch({
    super.key,
    required this.status,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {


  @override
  Widget build(BuildContext context) {
    return Switch(

      onChanged: (value) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => value ? const AddonsView() : const MainView(),
          ),
        );
        setState(() {

        });
      },
      value: widget.status,
      inactiveTrackColor: const Color(0xff2E8B57),
      inactiveThumbColor: Colors.white,
      activeTrackColor: const Color(0xff929FB2),
      thumbIcon: WidgetStateProperty.resolveWith<Icon>(
        (Set<WidgetState> states) {
          return const Icon(
            Icons.circle,
            color: Colors.white,
          );
        },
      ),
      trackOutlineColor: WidgetStateProperty.resolveWith(
        (final Set<WidgetState> states) {
          return const Color(0xffF5F7FA);
        },
      ),
    );
  }
}
