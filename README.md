# Project 2 - Show tell DevOps [CI/CD] 
## Purpose of this repository
Demonstrate CI/CD with Github Action using Prof Uli nodejs api files found here: https://github.com/u1i/nodejs-api.git


## TL:DR - Automated linter workflow using Github Actions [Super-Linter Workflow]
* Apply best practices across multiple coding languages
* Ensure proper guidelines for code layout and format
* Prevent messy or broken codes from being uploaded to the Github repository
* Increase efficiency in reviewing codes by automating the processs

## How the Super-Linter process work

(1) The super-linter identifies issues and reports them to the console output:

![Screenshot 2022-03-21 at 1 18 28 AM](https://user-images.githubusercontent.com/98994092/159174483-3a3a198d-b571-4ccd-aace-327002415ef4.png)

(2) If there are any errors, they will be displayed in the console output but will not be automatically amended by the system. A status output will display a failed pull request:

![Screenshot 2022-03-21 at 1 18 52 AM](https://user-images.githubusercontent.com/98994092/159174491-75690f4a-a880-48dc-95eb-523858f7dc2e.png)


(3) After the errors in the files/scripts are fixed, the Super-Linter will automatically run again and display a green tick symbol to indicate that the files are structured correctly and aligned with best practices.

![Screenshot 2022-03-21 at 2 05 53 AM](https://user-images.githubusercontent.com/98994092/159176226-a8ff67f0-26e9-4db0-95a1-e2954fcbb180.png)

The design of the Super-Linter is currently to allow linting to occur in GitHub Actions as a part of continuous integration occurring on pull requests as the commits get pushed. 

## How you can add the Super-Linter workflow to your repository
Step 1: Add a ".github/workflows" folder to your repository

Step 2: Add a yml file to the folder (e.g. superlinter.yml)

Step 3: Key in the following code in the folder created in workflows folder:

```
name: superlinter

on:
  push:

  pull_request:
    branches: [master, main]

jobs:
  build:
    name: superlinter
    runs-on: ubuntu-latest
    
    steps:
      - name: Checkout Code
        uses: actions/checkout@v3
        with:
          fetch-depth: 0
      - name: superlinter
        uses: github/super-linter@v4
        env:
          VALIDATE_ALL_CODEBASE: false
          DEFAULT_BRANCH: main
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          
```
# Credits
* Github repository: https://github.com/github/super-linter
