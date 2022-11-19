import 'package:d/host/widgets/details_card.dart';
import 'package:d/host/widgets/history_card.dart';
import 'package:d/host/widgets/host_bar.dart';
import 'package:d/host/widgets/host_switch.dart';
import 'package:d/host/widgets/qr_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'host_controller.dart';

class HostPage extends StatefulWidget {
  const HostPage({Key? key}) : super(key: key);

  @override
  State<HostPage> createState() => _HostPageState();
}

class _HostPageState extends State<HostPage> {
  late HostController _controller;

  @override
  void initState() {
    _controller = HostController();
    _controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NeumorphicBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                const HostAppBar(),
                const Spacer(),
                HostSwitch(() async => await _controller.updateHostState()),
                const Spacer(),
                Row(
                  children: const [
                    Expanded(flex: 2, child: QRWidget()),
                    Expanded(flex: 3, child: ConnectionDetailsCard()),
                  ],
                ),
                HistoryCard(_controller.serverLogs),
                const Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}
