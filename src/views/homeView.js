import { elements } from './base';


// const toggleBackgroundImg = (i) => {
   
//    setTimeout(function() {
//       elements.landingBackground.classList.replace(`landing__background--${i}`, `landing__background--${i+1}`);
//    }, 2000);
// };




export const promotionRotation = () => {
   let current = 0;

   const promoContent = {
      header: [
         'Music Where You Want It',
         'Looking to upgrade your camera?',
         'Versatile Laptops',
         'Movie nights just got better.'
      ],
      subHeader: [
         'Beats by Dr. Dre, Sony, Apple and Bose.',
         'Great deals happening right now.',
         'Huge selection from top brands.',
         'Flat screen TVs for every budget.'
      ],
      button: [
         'Shop Headphones',
         'Shop Cameras',
         'Shop Laptops',
         'Shop Televisions'
      ],
      href: [
         '/results?categoryPath.id=abcat0204000',
         '/results?categoryPath.id=abcat0401000',
         '/results?categoryPath.id=abcat0502000',
         '/results?categoryPath.id=abcat0101000'
      ]
   }

   setInterval(() => {
      let next = current + 1;
      
      current === 3 ? next = 0 : next = next;

      elements.landingBackground.classList.add('shrink-and-slide');
      elements.landingPromoBox.classList.add('slide-and-fade');
     
      setTimeout(() => {
         elements.landingBackground.style.backgroundImage = `url(../../img/landing-img-${next}.jpg)`

         elements.landingPromoHeader.innerHTML = '';
         elements.landingPromoSubHeader.innerHTML = '';
         elements.landingPromoBtn.innerHTML = '';

         elements.landingPromoHeader.innerHTML = `${promoContent.header[next]}`;
         elements.landingPromoSubHeader.innerHTML = `${promoContent.subHeader[next]}`;
         elements.landingPromoBtn.innerHTML = `${promoContent.button[next]}`;
         elements.landingPromoBtn.setAttribute('href',`${promoContent.href[next]}`)

         current < 3 ? current ++ : current = 0;

      }, 1500);

      setTimeout(() => {
         elements.landingBackground.classList.remove('shrink-and-slide');
         elements.landingPromoBox.classList.remove('slide-and-fade');
      }, 7000)
   }, 8000);
};

