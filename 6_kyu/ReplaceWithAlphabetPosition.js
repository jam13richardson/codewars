// Welcome.

// In this kata you are required to, given a string, 
// replace every letter with its position in the alphabet.

// If anything in the text isn't a letter, ignore it and don't return it.

// "a" = 1, "b" = 2, etc.

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