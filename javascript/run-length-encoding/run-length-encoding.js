const encode = (str) => {
  if (str === '') {
    return str;
  }
  const groups = str.match(/(.)\1*/g);

  return groups
    .map(el => (el.length === 1 ? el : `${el.length}${el[0]}`))
    .join('');
};


const decode = (str) => {
  if (str === '') {
    return str;
  }

  return str
    .match(/\d*.{1}/g)
    .map(el => (el.length > 1 ? el : `1${el}`))
    .map(el => el.slice(-1).repeat(el.match(/\d*/)))
    .join('');
};

export { encode, decode };
