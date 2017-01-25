console.log('test');

function h(n) {
  if (n === 0) return 0;

  return Math.pow(2, h(n - 1));
}

console.log('0', h(0));
console.log('1', h(1));
console.log('2', h(2));
console.log('3', h(3));
console.log('4', h(4));
console.log('5', h(5));
