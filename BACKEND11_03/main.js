var newItemCounter=1;
var ourList=document.getElementById("list");
var ourbutton=document.getElementById("gomb");
var ourheader=document.getElementById("header");
var listItem=document.getElementById("list").getElementsByTagName("li");
ourList.addEventListener("click", activateItem);

function activateItem(e)
{
    if(e.target.nodeName=="LI")
    {
        ourheader.innerHTML=e.target.innerHTML;
    for (i=0;i<e.target.parentNode.children.length;i++)
    {
        e.target.parentNode.children[i].classList.remove("active");
    
    }

    e.target.classList.add("active");
    }
}

ourbutton.addEventListener("click", createNewItem);


function createNewItem()
{
ourList.innerHTML += "<li>Something new " + newItemCounter+ " </li>";
newItemCounter++;
}
