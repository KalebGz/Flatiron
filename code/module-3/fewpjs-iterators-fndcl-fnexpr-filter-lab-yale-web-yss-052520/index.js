function findMatching(arr, str){
    return arr.filter( divider => {
        return divider.toUpperCase() == str.toUpperCase()
    })
}


function fuzzyMatch(arr, pref){
    return arr.filter( divider => {
        return divider.startsWith(pref)
    })
}

function matchName(arr, nameStr){
    return arr.filter( divider => {
        return divider.name == nameStr
    })
}