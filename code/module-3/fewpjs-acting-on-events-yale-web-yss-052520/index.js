let dodger = document.getElementById('dodger')

dodger.style.backgroundColor = "#FF69B4"
// dodger.style.bottom = "100px"

document.addEventListener("keydown", function(e) {
    
    if (e.key === "ArrowLeft") {
        console.log("Left Key pressed")
        moveDodgerLeft()
    }
    if (e.key === "ArrowRight") {
        console.log("Right Key pressed")
        moveDodgerRight()
      }
  });

  function moveDodgerLeft() {
    let leftNumbers = dodger.style.left.replace("px", "");
    let left = parseInt(leftNumbers, 10);
   
    if (left > 0) {
      dodger.style.left = `${left - 1}px`;
    }
  }

  function moveDodgerRight() {
    let leftNumbers = dodger.style.left.replace("px", "");
    let left = parseInt(leftNumbers, 10);
    console.log(left)
    if (left < 400) {
      dodger.style.left = `${left + 1}px`;
    }
  }