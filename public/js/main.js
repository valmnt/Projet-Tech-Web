window.onload = function() {
    const parentSlide = document.querySelector('.parentslide');
    const parentImage = document.querySelectorAll('.parentslide img');

    const buttonprev = document.querySelector('.buttonp');
    const buttonsuiv = document.querySelector('.buttons');

    let counter = 1;
    const size = parentImage[0].clientWidth;

    parentSlide.style.transform = 'translateX('+(-size*counter) + 'px)';


    buttonsuiv.addEventListener('click',function () {
        if (counter >= parentImage.length -1) return;
        parentSlide.style.transition = "transform 0.4s ease-in-out";
        counter++;
        parentSlide.style.transform = 'translateX('+(-size*counter) + 'px)';
    });

    buttonprev.addEventListener('click',function () {
            if (counter <= 0) return;
            parentSlide.style.transition = "transform 0.4s ease-in-out";
            counter--;
            parentSlide.style.transform = 'translateX('+(-size*counter) + 'px)';
    });

        parentSlide.addEventListener('transitionend', function () {
        if (parentImage[counter].id === 'lastClone'){
            parentSlide.style.transition = "none";
            counter = parentImage.length -2;
            parentSlide.style.transform = 'translateX('+(-size*counter) + 'px)';
        }
        if (parentImage[counter].id === 'firstClone') {
            parentSlide.style.transition = "none";
            counter = parentImage.length - counter;
            parentSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
        }
    })
}