Question 1

Given the following code list the order of console.logs:

console.log("Hello")

fetch('https://randomuser.me/api/')
  .then( res => res.json() )
  .then( data => {
    console.log("Hi") 
  })

console.log("Sup?")
First: Hello Second: Sup? Third: Hi

Question 2

When fetchData is executed what will be console logged?

function fetchData(){
        let data = fetch('https://randomuser.me/api/')
          .then( res => res.json()) 
          .then( res => res )
        console.log(data)	
}

fetchData()
It will console-log a promise with the json data embedded / serialized in Promise[PromiseValue][results]. (For a random user generated by the API.)

What will be console logged when the following code is run? Why?

function fetchData(){
        let data = fetch('https://randomuser.me/api/')
          .then( res => res.json() )
          .then( json => console.log(json) )
}

fetchData()
This console logs an array containing the json data within the API. (it's not a promise anymore, and the data is directly accessible as opposed to being embedded in promiseValue[results].)

What will be console logged when the following code is run? Why?

function fetchData(){
        let data = fetch('https://randomuser.me/api/')
          .then( res => res.json() )
          .then( console.log )
}

fetchData()
This logs the PromiseValue object in the fetched Promise. This object contains the json data under the [results] key.

Question 3

In your own words: what does asynchronous mean?

Not happening at the same time. Other code can continue executing while the browser waits for a response from the asynchronous function. This prevents the user from being forced to wait looking at a blank page.

Question 4

Write out the request and response cycle. What is its purpose? How does it work?

Fetching data from server, getting data back and displaying it. First, the client computer sends a get request to a server. The request in placed in a network queue and is, in time, fulfilled by the server. The server then sends data back to the client computer.

This cycle is typically executed in a synchronous cycle. However, one can use Javascript to perform it asynchronously so the client does not have to wait for all server requests to load before seeing the displayed page. Eg. HTML can load first before API data.

Question 5

Check out the JSON you get from making a GET request to this url (https://randomuser.me/api/).

Open up the Github repository for this reading and view the provided src/index.html file in the browser. In src/index.js, make an AJAX request to that url when the button is clicked and append the retrieved information to the DOM. Use the labels to append the right data in the appropriate h4's, h3's and img tags.