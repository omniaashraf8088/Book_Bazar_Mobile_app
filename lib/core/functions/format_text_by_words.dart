// دالة لتقسيم النص إلى 3 كلمات في كل سطر
String formatTextByWords(String text, int wordsPerLine) {
  List<String> words = text.split(' ');
  List<String> lines = [];

  for (int i = 0; i < words.length; i += wordsPerLine) {
    int end = (i + wordsPerLine < words.length)
        ? i + wordsPerLine
        : words.length;
    lines.add(words.sublist(i, end).join(' '));
  }

  return lines.join('\n');
}
