let driver = {}

function updateDriverWithKeyAndValue(driver, key, value) {
    const newObj = {...driver}
    return Object.assign(newObj,driver,{[key]: value})
}

function destructivelyUpdateDriverWithKeyAndValue(driver, key, value) {
     driver[key] = value
     return driver
}

function deleteFromDriverByKey(driver, key) {
    const newObj = {...driver}
    delete newObj[key]
    return newObj
}

function destructivelyDeleteFromDriverByKey(driver, key) {
    delete driver[key]
    return driver
}