//generics - deixa claro o tipo do parametro de retorno(no caso do exemplo o array)
//OBS: para rodar o typeScript será necessario executar os comandos: npx tsc local do arquivo.ts

// Neste exemplo simulamos uma funcao que concatena qualquer tipo de dados vindos de um array  usando Generics 
// Foi usado o operador spread(...) , o tipo do array é substituido por T 

function concatArray<T>(...itens:T[]): T[]{
    return new Array().concat(...itens);
}

const numArray = concatArray<number[]>([1,5], [3]);
const stgArray = concatArray<string[]>(["Alex", "Goku"], ["Vegeta"]);

// Devido aocontrole do Generics, a inclusao manual de dados será inválida
// numArray.push("Saitama");

console.log(numArray);
console.log(stgArray);