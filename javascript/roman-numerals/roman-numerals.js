const romanCodes = {
  M: 1000,
  CM: 900,
  D: 500,
  CD: 400,
  C: 100,
  XC: 90,
  L: 50,
  XL: 40,
  X: 10,
  IX: 9,
  V: 5,
  IV: 4,
  I: 1,
};

const getKeyByValue = (obj, value) => Object.keys(obj).find(key => obj[key] === value);

const toRoman = (num) => {
  const iter = (n, roman, i) => {
    if (n === 0) {
      return roman;
    }

    const currentArabic = Object.values(romanCodes)[i];
    const currentRoman = getKeyByValue(romanCodes, currentArabic);

    const resault = roman.concat(currentRoman.repeat(Math.floor(n / currentArabic)));

    return iter(n % currentArabic, resault, i + 1);
  };

  return iter(num, '', 0);
};

export { toRoman };
