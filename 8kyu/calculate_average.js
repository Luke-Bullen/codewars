// Instructions

// Write a function which calculates the average of the numbers in a given list.

// Note: Empty arrays should return 0.


// My Solution:

function findAverage(array) {
  if (array && array.length > 0) {
  return array.reduce((a,b) => a + b, 0) / array.length
  } else {
  return 0;
  }
}
