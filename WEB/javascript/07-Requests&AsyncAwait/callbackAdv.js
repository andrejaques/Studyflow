// lições avançadas sobre callback em sistema assyncrono, tratando dados.

function doSomething(callback)
{
    setTimeout(function()
    {
        // did something
        callback('First data');
    }, 1000);
}

function doOtherthing(callback)
{
    setTimeout(function()
    {
        // did other something
        callback('Second data');
    }, 1000);
}

function doAll()
{
    try
    {
        doSomething(function(data)
        {
            try
            {
                var processedData = data.split('');
        
                doOtherthing(function(data2)
                {
                    try
                    {
                        var processedData2 = data2.split('');
            
                        setTimeout(function()
                        {
                            console.log(processedData, processedData2);
                        }, 1000);
                    }
                    catch(err)
                    {
                        //handle error (doOtherThing)
                    }
                });
            }
            catch(err)
            {
                // handle error (doSomething)
            }
        });
    }
    catch(err)
    {
        //handle error (doAll)
    }
}

doAll();