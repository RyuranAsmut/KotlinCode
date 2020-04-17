//A Funcao pega uma lista mutavel de inteiros(vetor)
fun ordena(vetor:MutableList<Int>):List<Int>{
    //Verifica se o vetor tem pelo menos 2 elementos pra ordenar, condicional opcional,
    //nao tinha no codigo original, serve somente para otimizar o codigo
    if (vetor.isEmpty() || vetor.size<2){
        return vetor
    }
    //Loop que realiza a ordenacao comecando pelo primeiro elemento ate o ultimo
    //O valor incial do contador = 1, a cada iteracao adiciona mais 1 até chegar
    //a o valor igual ao tamanho do vetor determinado pela funcao .count()
    for (contador in 1 until vetor.count()){
        //A chave pega o valor do vetor[contador], que seria o valor do proximo vetor da lista
        val chave = vetor[contador]
        //funcao autixliar pega valor do contador
        var i = contador
        // Enquanto o valor do proximo vetor for maior que o atual
        while (i>0 && chave < vetor[i - 1]){
            //o proximo vetor pega o valor do vetor atual
            vetor[i] = vetor[i - 1]
            i -= 1
        }
        //por fim o vetor atual pega o valor da chave
        vetor[i] = chave
    }
    return vetor
}
fun main(args: Array<String>) {
    val numeros = mutableListOf(9, 4, 8, 5, 6, 2)
    println(numeros)
    val ordenados = ordena(numeros)
    println(ordenados)
}
