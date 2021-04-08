// Develope a function that can count how many one specific letter repeats in a text

function letterCount(letter, text) { 
    let count = 0
    console.log(text)

    for (let i in text) {
        if (letter == text[i]) 
        count++
    }

    console.log(`The letter "${letter}" repeats ${count} time(s) in this text`)
}

letterCount("a", "a avaliacao foi boa")