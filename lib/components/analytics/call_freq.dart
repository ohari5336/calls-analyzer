import 'package:flutter/material.dart';
import 'package:logger/components/common/sized_text.dart';
import 'package:logger/components/logs/contact_log_freq.dart';
import 'package:logger/screens/analytics/screen.dart';
import 'package:logger/utils/analytics_fns.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CallFreqTile extends StatelessWidget {
  final double spacing;
  final CallLogEntryWithFreq? mostFrequent;
  final CallFreqType freqType;

  const CallFreqTile({
    super.key,
    required this.mostFrequent,
    required this.freqType,
    this.spacing = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    if (mostFrequent == null) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedText(
          freqType == CallFreqType.called
              ? AppLocalizations.of(context).mostCalledNumberText
              : AppLocalizations.of(context).mostReceivedNumberText,
          size: 20.0,
        ),
        SizedBox(
          height: spacing - 5,
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ContactLogFreq(
            logDetails: mostFrequent!.entry,
            count: mostFrequent!.count,
          ),
        ),
        SizedBox(
          height: spacing,
        ),
      ],
    );
  }
}
