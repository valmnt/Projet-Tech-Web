document.addEventListener('DOMContentLoaded', function() {

    var ancien_onglet = document.querySelector('.contenu_onglet1')

    function new_onglet() {
        var n = parseInt(this.id.substr(6, 1))
        ancien_onglet.style.display = "none"
        var nouv_onglet = document.querySelector('.contenu_onglet' + n)
        nouv_onglet.style.display = "block"
        ancien_onglet = nouv_onglet
    }
    document.querySelector('#onglet1').addEventListener("click", new_onglet)
    document.querySelector('#onglet2').addEventListener("click", new_onglet)
    document.querySelector('#onglet3').addEventListener("click", new_onglet)

    document.querySelector('#onglet1').addEventListener("click", changeBackOne)
    document.querySelector('#onglet2').addEventListener("click", changeBackTwo)
    document.querySelector('#onglet3').addEventListener("click", changeBackThree)

    function changeBackOne(){
        document.querySelector('.block_5').style.backgroundColor = "#3E4E50"
    }
   
    function changeBackTwo(){
        document.querySelector('.block_5').style.backgroundColor = "#52555D"
    }
    
    function changeBackThree(){
        document.querySelector('.block_5').style.backgroundColor = "#708090"
    }

})