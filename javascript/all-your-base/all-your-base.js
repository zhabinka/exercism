const f = v => v <= 1 || v % 1 > 0 || v === undefined;
const ff = (arr, base) => {
  switch (true) {
    case arr.length === 0:
      return true;
    case (arr.length > 1 && arr[0] === 0):
      return true;
    case arr.find(el => el < 0) < 0:
      return true;
    case arr.find(el => el >= base) > 0:
      return true;
    default:
      return false;
  }
};

const errors = [
  {
    check: (numbers, inputBase) => f(inputBase),
    message: () => { throw new Error('Wrong input base'); },
  },
  {
    check: (numbers, inputBase, outputBase) => f(outputBase),
    message: () => { throw new Error('Wrong output base'); },
  },
  {
    check: (numbers, inputBase) => ff(numbers, inputBase),
    message: () => { throw new Error('Input has wrong format'); },
  },
  {
    check: () => true,
  },
];

const toDecimal = (numbers, base) => numbers
  .reverse()
  .reduce((acc, el, i) => acc + (el * (base ** i)));

function convert(arr, inputBase, outputBase) {
  const { message } = errors.find(el => el.check(arr, inputBase, outputBase));

  if (message) {
    return message();
  }

  const iter = (num) => {
    if (num < outputBase) {
      return [num];
    }

    return iter(Math.floor(num / outputBase)).concat(num % outputBase);
  };

  return iter(toDecimal(arr, inputBase));
}

export { convert };
