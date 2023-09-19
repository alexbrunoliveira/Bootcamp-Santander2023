// npm init para iniciar o typeScript
// npm init -y
// npm install typescript -D -- intalar apenas no projeto
// configurar o arquivo package.json para :

/*      "scripts": {
            "start": "npx  tsc && node build/index.js",
            "start:dev": "ts-node-dev --respan --trasnpile-only",
            "test": "echo \"Error: no test specified\" && exit 1"
         },
*/
// note + caminha e nome do arquivo 
// npx tsc + caminho e nome do arquivo para converter o ts para js
// npx tsc --init -->cria o arquivo conf. de comportamento do ts. Em seguida o arquivo descomentado e alterado  "rootDir": "./src",    "outDir": "./build", 

type heroi = {
    name: string;
    vulgo: string;
}
function printaObjetos(pessoa: heroi) {
console.log(pessoa);
}

printaObjetos({
    name:"Bruce Wayne",
    vulgo: "Batman"
});