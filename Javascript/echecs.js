var plateau = [
    ['T','C','F','R','K','F','C','T'],
    ['P','P','P','P','P','P','P','P'],
    [' ',' ',' ',' ',' ',' ',' ',' '],
    [' ',' ',' ',' ',' ',' ',' ',' '],
    [' ',' ',' ',' ',' ',' ',' ',' '],
    [' ',' ',' ',' ',' ',' ',' ',' '],
    ['p','p','p','p','p','p','p','p'],
    ['t','c','f','k','r','f','c','t'] ];
  
  document.write(plateau.join('\n') + '\n\n');
  console.log(plateau.join('\n') + '\n\n');
  
  // On déplace le pion de deux cases en avant 2
  plateau[4][4] = plateau[6][4];
  plateau[6][4] = ' ';
  document.write(plateau.join('\n'));
  console.log(plateau.join('\n'));

  plateau[3][4] = plateau[1][4];
  plateau[1][4] = ' ';
  document.write(plateau.join('\n'));
  console.log(plateau.join('\n'));

