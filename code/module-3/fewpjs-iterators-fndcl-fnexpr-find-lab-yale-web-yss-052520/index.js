const testVar = {}

function testFunc() {
  return "hi"
}

function superbowlWin(arr){
  const test = arr.find( function(ele)  {
    return ele.result == 'W'
  })
  if(test){
    return test.year
  }else{
    return test
  }
} 
