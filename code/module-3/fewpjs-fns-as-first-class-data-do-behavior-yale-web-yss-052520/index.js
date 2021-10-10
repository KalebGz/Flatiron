/* Given Code, don't edit */

document.querySelector("button").addEventListener("click", handleClick);

function handleClick(e) {
  const timeString = document.getElementById('time').value
  displayMessage(greet(timeString))
}

/* End Given Code, don't edit above here...*/

function greet(str){
  const time = parseInt(str, 10)
  if (time <= 12){
    return "Good Morning"
  }else if (time <= 17){
    return "Good Afternoon"
  }else{
    return "Good Evening"
  }
}

/* Write your implementation of displayMessage() */

function displayMessage(str){
  const greeting = document.querySelector('#greeting')
  greeting.innerText = str
}
