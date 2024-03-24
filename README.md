![Run linters and tests workflow](https://github.com/islomar/java-kata-template/actions/workflows/run-linters-and-tests.yml/badge.svg)

# Java template for a kata

- Template repository for Java katas (Dockerized)
- The repository is created as a **GitHub repository template**, so that you can easily create your own GitHub repository from this one.
  - [Here](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template) you can find the instructions: easy peasy!
  - There is a **GH project** associated with this repo, with some pending improvements.
- Everything is **Dockerized**. If you run `make` from the root folder of the project, you can see all the actions that you can execute (e.g. running the tests, static analysis, code coverage, etc.)


## HOW to use it
1. Generate a repo using this one as a template, following [these instructions](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template)
2. Replace the `java-kata-name` placeholder that appears in several files with your own name (e.g. `java-fizzbuzz`). 
   - For example, you can easily do it running `make rename-project new-name=java-fizzbuzz`


## Prerequisites
- You need [Docker](https://docs.docker.com/get-docker/) installed.
- **IMPORTANT**: just the first time, run `make local-setup`.
    - This will set up things like configuring Git hooks. The `pre-commit` hook will automatically run the linters and tests, rejecting the commit in case any of them fail.


## More info
- https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-java-with-gradle
- https://www.baeldung.com/junit-5-gradle
- https://www.vogella.com/tutorials/Hamcrest/article.html
- https://www.petrikainulainen.net/programming/testing/junit-5-tutorial-writing-assertions-with-hamcrest/