fun ordena(vetor:MutableList<Int>):List<Int>{
    //Verifica se o vetor tem pelo menos 2 elementos pra ordenar
    if (vetor.isEmpty() || vetor.size<2){
        return vetor
    }
    //Loop que realiza a ordenacao de acordo com o tamanho do vetor
    for (count in 1 until vetor.count()){
        val chave = vetor[count]
        var i = count
        while (i>0 && chave < vetor[i - 1]){
            vetor[i] = vetor[i - 1]
            i -= 1
        }
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



