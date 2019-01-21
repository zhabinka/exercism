const typesList = [
  {
    type: 'illegal',
    check: (a, b, c) => (a <= 0 || a + b < c),
  },
  {
    type: 'equilateral',
    check: (a, b, c) => (a === b && b === c),
  },
  {
    type: 'isosceles',
    check: (a, b, c) => (a === b || b === c),
  },
  {
    type: 'scalene',
    check: (a, b, c) => (a !== b && b !== c),
  },
];


const checker = (a, b, c) => {
  const { type } = typesList.find(el => el.check(a, b, c));
  if (type === 'illegal') {
    throw new Error();
  }

  return type;
};

class Triangle {
  constructor(a, b, c) {
    this.sides = [a, b, c].sort((x, y) => x - y);
  }

  kind() {
    const [a, b, c] = this.sides;

    return checker(a, b, c);
  }
}

export default Triangle;
