/**
 |--------------------|
 |                xx  |
 |      xxxx xxx      |
 |      x  x   x      |
 |      xxxxxxxx      |
 |                    |
 |       xxxxx        |
 |       x   x        |
 |       x x x        |
 | xx    x   x    x   | 
 | xx    xxxxx        |
 |--------------------|
 */

const matrix = [
  [0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
  [1, 0, 0, 0, 0, 1, 0, 0, 0, 0],
  [0, 1, 1, 1, 1, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 1, 1, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
]

const xMax = matrix.length;
const yMax = matrix[0].length;

let color = 2;

for (let i = 0; i < matrix.length; i++) {
  let row = matrix[i];

  if (row.every(value => value === 0)) {
    continue;
  }

  if (row.every(value => value === 1)) {
    row.forEach(value => value = color);
  }

  for (let j = 0; j < row.length; j++) {
    if (matrix[i][j] !== 1) {
      continue;
    }

    if (matrix[i][j] === 1) {
      matrix[i][j] = color;
      determine(matrix, i, j);
      color++;
    }
  }
}

function determine(matrix: number[][], x: number, y: number) {
  const xplus = x + 1;
  const yplus = y + 1;

  const xminus = x - 1;
  const yminus = y - 1;
  
  if (
    xplus < xMax
    && matrix[xplus][y] === 1
  ) {
    matrix[xplus][y] = color;
    determine(matrix, xplus, y)
  }

  if (
    yplus < yMax
    && matrix[x][yplus] === 1
  ) {
    matrix[x][yplus] = color;
    determine(matrix, x, yplus)
  }

  if (
    yminus >= 0
    && matrix[x][yminus] === 1
  ) {
    matrix[x][yminus] = color;
    determine(matrix, x, yminus);
  }

  if (
    xminus >= 0
    && yplus < yMax
    && matrix[xminus][yplus] === 1
  ) {
    matrix[xminus][yplus] = color;
    determine(matrix, xminus, yplus)
  }

  if (
    xplus < xMax
    && yplus < yMax
    && matrix[xplus][yplus] === 1
  ) {
    matrix[xplus][yplus] = color;
    determine(matrix, xplus, yplus)
  }

  if (
    xplus < xMax
    && yminus >= 0
    && matrix[xplus][yminus] === 1
  ) {
    matrix[xplus][yminus] = color;
    determine(matrix, xplus, yminus)
  }
}

for (let i = 0; i < xMax; i++) {
  console.log(matrix[i])
}
