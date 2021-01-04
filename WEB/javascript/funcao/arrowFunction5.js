// Arrow Function with scoping 

let obj = 
{
    showContext: function showContext() 
    {
        this.log('teste')
    },
    log: function log(value) 
    {
        console.log(value)
    }
}

obj.showContext();

console.log() // \n

// using arrow function to trap the this to the scope of the lexing object

let obj2 = 
{
    showContext2: function showContext2()
    {
        // this = obj

        setTimeout(() => 
        {
            this.log2('after 3 seconds')
        }, 3000)
    },

    log2: function log2(val) 
    {
        console.log(val)
    }
}

obj2.showContext2()