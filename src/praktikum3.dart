void main() {
  var gifts = {
    // Key:    Value
    'nama': 'Rio Tri Prayogo',
    'nim': '2341720236',
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {
    0: 'Rio Tri Prayogo',
    1: '2341720236',
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['nama'] = 'Rio Tri Prayogo';
  gifts['nim'] = '2341720236';
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[0] = 'Rio Tri Prayogo';
  nobleGases[1] = '2341720236';
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  mhs1['nama'] = 'Rio Tri Prayogo';
  mhs1['nim'] = '2341720236';

  mhs2[1] = 'Rio Tri Prayogo';
  mhs2[2] = '2341720236';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
