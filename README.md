# KTreeSitter Language Grammar - GraphQL

![KTreeSitter GraphQL Language](https://img.shields.io/maven-central/v/io.github.sunny-chung/ktreesitter-graphql)

This is the Kotlin binding of the GraphQL Tree-sitter grammar written by [dralletje](https://github.com/dralletje/tree-sitter-graphql). The grammar is not modified. Its license follows the original dralletje's repository -- ISC.

## Use

In build.gradle.kts, put:
```kotlin
implementation("io.github.tree-sitter:ktreesitter:0.23.0")
implementation("io.github.sunny-chung:ktreesitter-graphql:1.0.0.0")
```

For how to load and use the libraries, please refer to [this README](https://github.com/sunny-chung/ktreesitter-json?tab=readme-ov-file#use).

## Manual Build (not required)

### The `tree-sitter-graphql` directory

The `tree-sitter-graphql` directory is made by the following commands:
```bash
mkdir tree-sitter-graphql
cd tree-sitter-graphql
tree-sitter init
cp ../tree-sitter-graphql-original/grammar.js ./
tree-sitter generate
```

### To build a Kotlin or JVM library

For macOS / Linux,

```sh
gradle generateGrammarFilesEnhanced

pushd build/generated/
cmake CMakeLists.txt
make

mkdir src/resources
cp lib* src/resources/

popd
gradle assemble
```

For Windows,

```sh
gradle generateGrammarFilesEnhanced

cd build/generated/
cmake CMakeLists.txt
cmake --build . --target INSTALL --config Release

mkdir src/resources
cp Release/*.dll src/resources/

cd ../..
gradle assemble
```
