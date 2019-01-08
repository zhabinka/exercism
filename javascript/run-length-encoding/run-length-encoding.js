const encode = (str) => {
  const iter = (s, arr) => {
    if (s.length === 0) {
      return arr;
    }
    const regex = new RegExp(`${s[0]}+`);
    const charsGroup = s.match(regex)[0];

    return iter(s.substr(charsGroup.length), arr.concat(charsGroup));
  };

  const groups = iter(str, []);

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
