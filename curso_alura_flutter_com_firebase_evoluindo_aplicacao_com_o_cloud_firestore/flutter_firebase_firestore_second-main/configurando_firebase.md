1. Criar uma conta https://firebase.google.com/
2. https://firebase.google.com/docs/flutter/setup?hl=pt-br&platform=ios
3. Acesse https://firebase.google.com/
    - Clique em "Ir para console"
    - Clique em criar um novo projeto
    - Digite o nome e aceite os termos
    - Selecione um conta e crie o projeto
4. Siga os passos em https://firebase.google.com/docs/cli?hl=pt-br#install-cli-mac-linux
5. Instale a CLI do FlutterFire executando o seguinte comando em qualquer diretório:
    ```bash
    dart pub global activate flutterfire_cli
    ```

## Até aqui foi um setup inicial, para os próximos projetos, não será necessários repetir todas essas etapas

1. Etapa 2: configurar os apps para usar o Firebase
    No diretório do projeto do Flutter, execute o seguinte comando para iniciar o fluxo de trabalho de configuração do app:
    ```bash
    flutterfire configure
    ```

2. [inicializar o Firebase no app](https://firebase.google.com/docs/flutter/setup?hl=pt-br&platform=ios#initialize-firebase)
    
3. instale
    ```bash
    flutter pub add cloud_firestore
    ```
    rode
      ```bash
    flutterfire configure
    ```

4. altere o arquivo `build.gradle` que está dentro de `android/app/`
    - Dentro de `defaultConfig` mude a linha `minSdkVersion flutter.minSdkVersion` para `minSdkVersion 19` que é a versão mínima suportada pelo firebase
    - dentro de `defaultConfig` adicione a linha `multiDexEnabled true`

5. Agora rode o aplicativo
