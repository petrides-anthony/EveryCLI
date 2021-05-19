# `EveryCLI`
The EveryCLI - created to make the everyday terminal tasks easy to run and less difficult to remember.

![image](https://user-images.githubusercontent.com/25196139/118805171-896e1000-b89d-11eb-9b96-3c004f718dad.png)

## Requirements
* OSX operating system

## How to install & run
1. Clone this repo
2. cd into the root direction
3. run `./main.sh`

## How to run by simply typing 'everycli'
1. open your ~/.zshrc
2. add the following function and update it to point to wherever you pulled this repo:
```
function everycli () {
  cd ~/Git/EveryCLI/
  ./main.sh
}
```
3. restart your terminal
4. now you can access the cli anytime from your terminal by simply typing `everycli`
