const checker = (a, b, c) => {
  if (a === b && a === c) {
    return 'equilateral';
  }
  if (a === b || b === c) {
    return 'isosceles';
  }

  return 'scalene';
};

class Triangle {
  constructor(a, b, c) {
    this.sides = [a, b, c].sort((x, y) => x - y);
  }

  kind() {
    const [a, b, c] = this.sides;
    if (a <= 0 || a + b < c) {
      throw new Error();
    }

    return checker(a, b, c);
  }
}

export default Triangle;
