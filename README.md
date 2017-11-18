# Cookie Cutter
My own cookie cutter project template generator.   

Author: Maud Boucherit
Released on 2017-11-17

### What is it about?
The script [cookiecutter.sh](cookiecutter.sh) initializes a github repository for your project. It creates:   
  - a `README.md` file with:   
      - the project name,   
      - a short description,   
      - the author name,   
      - the released date;   
  - a `LICENSE.md` file;   
  - a `data` folder for the raw data;   
  - a `src` folder for scripts;   
  - a `results` folder for files generated during cleanup and analysis.   
The three folders are initialized with a dummy file named `foo.md`.

### How to use it?
You first need to create an empty github repository. No need to generate a README or a .gitignore file.   
Then open your local directory to the place where you want to store the local version of your project and download the [cookiecutter.sh](cookiecutter.sh) file.   

On a bash shell:   
  - Change the current working directory to the place where you want to store the local version of your project,   
  - Run the command: `bash cookiecutter.sh`   

The console will ask you several information about you and your project:   
  - your full name,   
  - your github repository name, [1]   
  - a prettier name for your  project,   
  - a short description for your project,   
  - the date,
  - the url of your github repo.

[1] **Warning:** you must enter the exact name of your github repository, else the initialization might fail.

### An exemple
[This repo](https://github.com/MaudBoucherit/first_cookied_repo) was created using the [cookiecutter.sh](cookiecutter.sh) file.
