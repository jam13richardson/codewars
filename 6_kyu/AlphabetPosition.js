function alphabetPosition(text) {
  const alphabet = 'abcdefghijklmnopqrstuvwxyz';
  const code = text.toLowerCase().split('');
  const positions = code
    .map(x => {
      if (alphabet.includes(x)) {
        const position = alphabet.indexOf(x) + 1;
        return position.toString();
      }
    })
    .filter(position => position !== undefined);

  return positions.join(' ');
}
