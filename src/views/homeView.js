import { elements } from './base';

export const promotionRotation = () => {
   // Used to cycle promo box content
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

   let current = 0;

   setInterval(() => {
      let next = current + 1;
      current === 3 ? next = 0 : next = next;

      let promoBox = document.querySelector('.promotion');
      let clone = promoBox.cloneNode(true);

      // Fade OUT background and promo box
      elements.landingBackground.style.opacity = '0';
      promoBox.style.opacity = '0';
      

      // Swap backgrounds and promotion box
      setTimeout(() => {
         // Replace background image
         elements.landingBackground.style.backgroundImage = `url(../../img/landing-img-${next}.jpg)`;

         // Replace promo box to restart animation
         promoBox.parentNode.replaceChild(clone, promoBox);

         // Replace the content of the promo box
         document.querySelector('.promotion__main-header').innerHTML = '';
         document.querySelector('.promotion__main-header').innerHTML = promoContent.header[next];

         document.querySelector('.promotion__sub-header').innerHTML = '';
         document.querySelector('.promotion__sub-header').innerHTML = promoContent.subHeader[next];

         document.querySelector('.promotion__btn').innerHTML = '';
         document.querySelector('.promotion__btn').innerHTML = promoContent.button[next];
         document.querySelector('.promotion__btn').setAttribute('href', promoContent.href[next]);

         // Fade IN background
         elements.landingBackground.style.opacity = '1';
         
         current < 3 ? current ++ : current = 0;
      }, 550);
   }, 8000);
}

