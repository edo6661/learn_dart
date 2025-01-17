typedef EnableFlags = void Function({bool? bold, bool? hidden});

EnableFlags enableFlags = ({bold, hidden}) {
  print('bold: $bold, hidden: $hidden');
};

void main() {
  enableFlags(bold: true, hidden: false);
}
