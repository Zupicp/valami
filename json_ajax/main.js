var counter =1;
var container=document.getElementById("info");
var btn=document.getElementById("btn");
btn.addEventListener("click", function(){
    var req=new XMLHttpRequest();
    req.open('GET', 'https://learnwebcode.github.io/json-example/animals-'+ counter +'.json');
    req.onload=function()
    {
        if(req.status>=200&&req.status<400){
            var data=JSON.parse(req.responseText);
        renderHTML(data);
        }
        else{
            console.log("connection completed but something was an error");
        }       
    };
    req.onerror=function(){
        console.log("connection error");
    };
    req.send();
    counter++;
    if(counter>3){
        btn.classList.add("hide");
    }
});
function renderHTML(data)
{
    var sometext="";

    for(i=0;i< data.length;i++)
    {
        sometext +="<p>" + data[i].name + " is a " + data[i].species + " likes to eat " + "</p>";
        for(j=0;j<data[i].foods.likes.length;j++){
            if(j==0){
                sometext += data[i].foods.likes[j];
            }
            else{
                sometext += " and " + data[i].foods.likes[j];
            }
        }
        sometext+=" and dislikes ";
        for(i=0;i< data.length;i++)
        {
            sometext +="<p>" + data[i].name + " is a " + data[i].species + " likes to eat " + data[i].favfood + "</p>";
            for(j=0;j<data[i].foods.dislikes.length;j++){
                if(j==0){
                    sometext += data[i].foods.dislikes[j];
                }
                else{
                    sometext += " and " + data[i].foods.dislikes[j];
                }
            }
        }
    }
   
container.insertAdjacentHTML('beforeend', sometext);

}