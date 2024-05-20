
//smooth scroll
function scrollToNextSection() {
    var nextSection = document.getElementById("about");
    nextSection.scrollIntoView({ behavior: 'smooth', block: 'start' });
}

document.querySelectorAll('input').forEach(function(input) {
    input.addEventListener('change', function() {
        document.body.classList.toggle('blue');
    });
});

//footer wrapper
document.addEventListener('DOMContentLoaded', function() {
    const divs = document.querySelectorAll('.wrapper div');
    
    divs.forEach(div => {
        div.addEventListener('click', function() {
            window.scrollTo({
                top: 0,
                behavior: 'smooth' 
            });
        });
    });
});


//carousel for Section - 2
document.addEventListener("DOMContentLoaded", function() {
    const galleryContainer = document.querySelector('.gallery-container');
    const galleryControlsContainer = document.querySelector('.gallery-controls');
    const galleryItems = document.querySelectorAll('.gallery-item');
    const imageNameElement = document.getElementById('image-name');

    class Carousel {
        constructor(container, items, controls) {
            this.carouselContainer = container;
            this.carouselControls = controls;
            this.carouselArray = [...items];
            this.autoSlideInterval = null;
            this.galleryControlsContainer = galleryControlsContainer;
            this.postTitles = [];
        }

        updateGallery() {
            this.carouselArray.forEach(el => {
                el.classList.remove('gallery-item-1', 'gallery-item-2', 'gallery-item-3', 'gallery-item-4', 'gallery-item-5');
            });

            this.carouselArray.slice(0, 5).forEach((el, i) => {
                el.classList.add(`gallery-item-${i+1}`);
                
            });

            this.updateImageName();
        }

        updateImageName() {
            const dots = document.querySelectorAll('.gallery-dot');
            const currentItem = this.carouselArray.find(item => item.classList.contains('gallery-item-5'));
            const currentImageIndex = currentItem ? currentItem.getAttribute('data-index') : null;
            const currentImage = this.carouselArray[2];
            const imageName = currentImage.getAttribute('data-name');
            imageNameElement.textContent = imageName;
            dots.forEach(dot => dot.classList.remove('active'));
        
            const activeDot = dots[currentImageIndex];
            activeDot.classList.add('active');
        }

        setCurrentState(control) {
            if (typeof control === 'number') {
                const shift = (control - this.carouselArray.indexOf(this.carouselArray[0])) % this.carouselArray.length;
                for (let i = 0; i < Math.abs(shift); i++) {
                    if (shift > 0) {
                        this.carouselArray.push(this.carouselArray.shift());
                    } else {
                        this.carouselArray.unshift(this.carouselArray.pop());
                    }
                }
            } else if (control.classList) {
                if (control.classList.contains('gallery-controls-previous')) {
                    this.carouselArray.unshift(this.carouselArray.pop());
                } else if (control.classList.contains('gallery-controls-next')) {
                    this.carouselArray.push(this.carouselArray.shift());
                }
            }
            this.updateGallery();
             
        }

        setControls() {
            const prevButton = document.createElement('button');
            prevButton.className = 'gallery-controls-previous';
            galleryControlsContainer.appendChild(prevButton);

            this.carouselArray.forEach((_, index) => {
                const dot = document.createElement('span');
                dot.className = 'gallery-dot';
                dot.dataset.index = index;
                galleryControlsContainer.appendChild(dot);
            });

            const nextButton = document.createElement('button');
            nextButton.className = 'gallery-controls-next';
            galleryControlsContainer.appendChild(nextButton);
        }

        useControls() {
            const triggers = [...galleryControlsContainer.childNodes];
            triggers.forEach(control => {
                control.addEventListener('click', e => {
                    e.preventDefault();
                    if (control.classList.contains('gallery-controls-previous')) {
                        this.setCurrentState(control);
                    } else if (control.classList.contains('gallery-controls-next')) {
                        this.setCurrentState(control);
                    } else if (control.classList.contains('gallery-dot')) {
                        const index = parseInt(control.dataset.index, 10);
                        this.setCurrentState(index);
                    }
                    this.resetAutoSlide();
                });
            });
        }

        startAutoSlide() {
            this.autoSlideInterval = setInterval(() => {
                this.setCurrentState({ classList: { contains: (className) => className === 'gallery-controls-next' } });
            }, 4000);
        }

        resetAutoSlide() {
            if (this.autoSlideInterval) {
                clearInterval(this.autoSlideInterval);
                this.startAutoSlide();
            }
        }
    }

    const exampleCarousel = new Carousel(galleryContainer, galleryItems, galleryControlsContainer);
    exampleCarousel.setControls();
    exampleCarousel.useControls();
    exampleCarousel.updateGallery(); 
    //exampleCarousel.startAutoSlide();    
    
});


//dropdown and checkboss
document.addEventListener("DOMContentLoaded", () => {
const selectBtn = document.querySelector(".select-btn"),
      items = document.querySelectorAll(".item");

      //console.log(selectBtn, items)

      selectBtn.addEventListener("click", () => {
        selectBtn.classList.toggle("open");
      });

      items.forEach(item => {
        item.addEventListener("click", () => {
                item.classList.toggle("checked");
            let checked = document.querySelectorAll(".checked"),
                btnText = document.querySelector(".btn-text");
                //console.log("Checked",checked.length);
                const selectedItems = Array.from(items).filter(item => item.classList.contains('checked'));

                if(selectedItems.length > 0){
                    const names = selectedItems.map(item => item.getAttribute('data-name'));
                    btnText.innerText = `${names.join(', ')}`;
                }else{
                         btnText.innerText= "Select What to Filter"
                }
        })
      })
});



