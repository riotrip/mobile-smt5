void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);

  names1.add('Rio Tri Prayogo'); 
  names1.add('2341720236');

  names2.addAll([
    'Rio Tri Prayogo',
    '2341720236',
  ]);

  names3['nama'] = 'Rio Tri Prayogo';
  names3['nim'] = '2341720236';

  print(names1);
  print(names2);
  print(names3);
}