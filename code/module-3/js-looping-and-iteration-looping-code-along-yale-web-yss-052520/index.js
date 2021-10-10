function writeCards(names, event){
    let res = []
    for(let i = 0; i < names.length; i++){
        res.push(`Thank you, ${names[i]}, for the wonderful ${event} gift!`)
    }
    return res
}

function countDown(num){
    while(num >= 0){
        console.log(num--)
    }
}