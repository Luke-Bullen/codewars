// Instructions

// This time no story, no theory. The examples below show you how to write function accum:

// Examples:
// accum("abcd") -> "A-Bb-Ccc-Dddd"
// accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
// accum("cwAt") -> "C-Ww-Aaa-Tttt"
// The parameter of accum is a string which includes only letters from a..z and A..Z.


// My Solution

function accum(s) {
  let times = s.length;
  let string = "";
  for(let i = 0; i < times; i++){
    let char = s.charAt(i);
    console.log(char);
    string += char.toUpperCase();
    for(let j = 0; j < i; j++){
      string += char.toLowerCase();
    }
    if(i != (times - 1)){
      string += "-";
    }
  };
  return string;
}
