var jsonData = pm.response.json();

for (item of jsonData) {
    if (!(paises.includes(item.description))) {
        paises.push(item.description);
    }
}

console.log(paises);