document.addEventListener("DOMContentLoaded", function(){
    let canvas = document.getElementById('mycanvas');
    canvas.height = 500; 
    canvas.width = 500;  

    const ctx = canvas.getContext("2d");
    ctx.fillStyle = "#ff69b4";
    ctx.fillRect(100, 100, 300, 400);
    //-------------------------------------------------
    // ctx.beginPath();    
    // ctx.arc(100, 100, 20, 0, 2 * Math.PI, true );
    // ctx.strokeStyle("yellow"); 
    // ctx.lineWidth = 10;
    // ctx.stroke(); 
    // ctx.fillStyle = '#800020';
    // ctx.fill(); 
   //---------------------------------------------------
    ctx.beginPath();
    ctx.arc(100, 100, 20, 0, 2 * Math.PI, true);
    ctx.strokeStyle = "black";
    ctx.lineWidth = 50;
    ctx.stroke();
    ctx.fillStyle = "#800020";
    ctx.fill();

    //----------------------------------------------------

    ctx.beginPath();
    ctx.arc(250, 300, 120, 0, 3 * Math.PI, true);
    ctx.strokeStyle = "black";
    ctx.lineWidth = 50;
    ctx.stroke();
    ctx.fillStyle = "#800020";
    ctx.fill();
});


