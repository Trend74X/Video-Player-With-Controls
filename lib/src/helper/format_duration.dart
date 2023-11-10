String formatDuration(Duration duration) {
  String hours = duration.inHours.remainder(24).toString().padLeft(2, '0');
  String minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
  String seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');

  if (hours == "00") {
    return '$minutes:$seconds';
  } else {
    return '$hours:$minutes:$seconds';
  }
}
