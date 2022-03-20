# Project 2 - Show tell DevOps [CI/CD] 
## Purpose of this repository
Demonstrate CI/CD with Github Action after executing a commit action in the repository


## TL:DR - Automated linter workflow using Github Actions [Super-Linter Workflow]
* Apply best practices across multiple coding languages
* Ensure proper guidelines for code layout and format
* Prevent messy or broken codes from being uploaded to the Github repository
* Increase efficiency in reviewing codes by automating the processs

## How the Super-Linter process work

The super-linter identifies issues and reports them to the console output. If there are any errors, they will be displayed in the console output but will not be automatically amended by the system. A status output will display a failed pull request.

After the errors in the files/scripts are fixed, the Super-Linter will automatically run again and display a green tick symbol to indicate that the files are structured correctly and aligned with best practices.

![Screenshot 2022-03-21 at 12 19 20 AM](https://user-images.githubusercontent.com/98994092/159173378-47eb8d16-41d5-41e7-a089-0b56a5fcaf2f.png)


The design of the Super-Linter is currently to allow linting to occur in GitHub Actions as a part of continuous integration occurring on pull requests as the commits get pushed. 

## How you can add the Super-Linter workflow to your repository
Step 1: Add a ".github/workflows" folder to your repository

Step 2: Add a yml file to the folder (e.g. superlinter.yml)

Step 3: Key in the following code in the folder created in workflows folder:

```
name: Super-Linter

on: push

jobs:
  super-lint:
    name: Lint code base
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Run Super-Linter
        uses: github/super-linter@v4
        env:
          VALIDATE_ALL_CODEBASE: false
          DEFAULT_BRANCH: main
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
