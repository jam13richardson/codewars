// accum("abcd") -> "A-Bb-Ccc-Dddd"
// accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
// accum("cwAt") -> "C-Ww-Aaa-Tttt"

function accum(s) {
    let counter = 0;
    const letters = s.split('');
  
    const result = letters.map((letter) => {
      counter++;
      const repeatedLetter = letter.toUpperCase() + letter.toLowerCase().repeat(counter - 1);
      return repeatedLetter;
    });
  
    return result.join('-');
  }