import 'dart:io';

enum Sexo{feminino, masculino}

void main(List<String> args) {

    // Atv 1 - Escreva um algoritmo para ler um número (do teclado) e escrever (na tela) o seu antecessor.
    void anterior(int n){
        print(n-1);
    }

    // Atv 2 - Escreva um algoritmo para ler o número total de eleitores de um município, o número de
    // votos brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa em
    // relação ao total de eleitores.
    void eleitores(double total, double brancos, double nulos, double validos){
        double porcentagem = total / 100;
        double pBrancos = brancos / porcentagem;
        double pNulos = nulos / porcentagem;
        double pValidos = validos / porcentagem;

        print("% de votos em branco: $pBrancos \n % de votos nulos: $pNulos \n % de votos válidos: $pValidos \n ");
    }

    //Atv 3 - Escreva um algoritmo para ler o salário mensal atual de um funcionário e o percentual de
    // reajuste. Calcular e escrever o valor do novo salário.
    double salario(double salario, double porcentagem){
        return (salario+(salario/100)*porcentagem);
    }

    //Atv 4 - Faça um algoritmo que leia três notas de um aluno, calcule e escreva a média final deste
    // aluno. Considerar que a média é ponderada e que o peso das notas é 2, 3 e 5.
    double media(double n1,double n2, double n3){
        double nf1 = n1*2; 
        double nf2 = n2*3;
        double nf3 = n3*5;
        return((nf1+nf2+nf3)/10);
    }

    //Atv 5 - Faça um algoritmo que leia o nome do aluno, quatro notas deste aluno, e também leia os
    // quatro pesos para realizar o cálculo da média ponderada. Apresente a média final do aluno.
    String media2 (String nome, double n1,double n2,double n3,double p1,double p2,double p3){
        double nf1 = n1*p1; 
        double nf2 = n2*p2;
        double nf3 = n3*p3;
        double media = (nf1+nf2+nf3)/(p1+p2+p3);
        return('valores: \n nota 1: $n1 \n nota 2: $n2 \n nota 3: $n3 \n peso 1: $p1 \n peso 2: $p2 \n peso 3: $p3 \n O aluno: $nome possui uma media de: $media ');
    }

    //Atv 6 - Faça um Programa que peça a temperatura em graus Farenheit, transforme e mostre a
    // temperatura em graus Celsius.  C = (5 * (F-32) / 9).
    double temperatura(double temperatura){
            // String? texto = stdin.readLineSync() ?? "teste";
            // print(texto ?? "valor vazio");
            // int num = int.parse(texto.toString());
            // print(num+5 ?? "valor vazio");
            return (5*(temperatura-32)/9);
    }

    //Atv 7 - Faça um Programa que peça 2 números inteiros e um número real. Calcule e mostre:
    // a) produto do dobro do primeiro com metade do segundo.
    // b) soma do triplo do primeiro com o terceiro.
    void valores(int n1, int n2, double r1){
        print("a) Dobro do primeiro com metade do segundo: ${n1*2+n2/2} \nb) Soma do triplo do primeiro com o terceiro ${n1*3+r1}");
    } 
    //Atv 8 - Tendo como dados de entrada a altura e o sexo de uma pessoa, construa um algoritmo que
    //calcule seu peso ideal, utilizando as seguintes fórmulas:
    //Para homens: (72.7*h) - 58
    //Para mulheres: (62.1*h) - 44.7 (h = altura)

    

    void pIdeal (int n){
        print('Digite seu peso: ');
        double peso = double.parse(stdin.readLineSync().toString());
        print('\nDigite sua altura: ');
        double altura = double.parse(stdin.readLineSync().toString());

        if (n == Sexo.feminino.index) {
            print("Seu peso ideal é: ${peso*altura - 44.7 }");
        }else if (n == Sexo.masculino.index) {
            print("Seu peso ideal é: ${peso*altura - 58 }");
        }else print("Vanlor não aceito, só é aceito 0 para feminino e 1 para masculino");
    }

    // Atv 9 - Faça um Programa que pergunte quanto você ganha por hora e o número de horas
    // trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês, sabendo-se que são
    // descontados 11% para o Imposto de Renda, 8% para o INSS e 5% para o sindicato, faça um
    // programa que nos dê:
    //  salário bruto.
    //  quanto pagou ao INSS.
    //  quanto pagou ao sindicato.
    //  salário líquido.
    //  calcule os descontos e o salário líquido, conforme a tabela abaixo:
    // + Salário Bruto : R$
    // - IR (11%) : R$
    // - INSS (8%) : R$
    // - Sindicato ( 5%) : R$
    // = Salário Liquido : R$
    // Obs.: Salário Bruto - Descontos = Salário Líquido.
    void Imposto([double valor = 10, double horasT = 200, ]){

        // double valor = double.parse(stdin.readLineSync().toString());
        // double horasT = double.parse(stdin.readLineSync().toString());
        double salario = valor*horasT;
        print("Seu salario bruto é: $salario");
        print("Foram descontados os valores do seu salario: \nImposto de renda: ${salario*0.11}\nINSS: ${salario*0.08}\nSindicato: ${salario*0.05} \ntotal de descontos: ${(salario*0.08+salario*0.11+salario*0.05)}");
        print("Seu salário liquido é de: ${salario-(salario*0.08+salario*0.11+salario*0.05)}");
    }

// anterior(2);
// eleitores(200, 50, 50, 100);
// print(salario(2000, 50));    
// print(media(5, 10, 5));
// print(media2('joao', 8, 7, 8, 1, 4, 2));
// print(temperatura(56.9));
// valores(2, 6, 8.7);
// pIdeal(0);
// Imposto(20,200);

}
