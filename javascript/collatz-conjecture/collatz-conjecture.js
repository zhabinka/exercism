// If n is even, divide n by 2 to get n / 2.
// If n is odd, multiply n by 3 and add 1 to get 3n + 1.

const operation = n => (n % 2 === 0 ? n / 2 : 3 * n + 1);

const steps = (number) => {
  if (number <= 0) {
    throw new Error('Only positive numbers are allowed');
  }

  const iter = (num, count) => {
    if (num === 1) {
      return count;
    }

    return iter(operation(num), count + 1);
  };

  return iter(number, 0);
};

export { steps };
