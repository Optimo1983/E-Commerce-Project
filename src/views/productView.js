import { elements, numberFormat, dollarFormat } from './base';

export const renderLikeBtn = (isLiked, sku) => {
   const htmlString = !isLiked ? `
      <button class="product-info__like-btn btn btn--black" id="0-${sku}">
      <i class="product-info__like-icon far fa-heart"></i>
      <span class="product-info__like-text">Save</span>
      </button>
   ` : `
      <button class="product-info__like-btn btn btn--black" id="0-${sku}">
      <i class="product-info__like-icon product-info__like-icon--full fas fa-heart"></i>
      <span class="product-info__like-text">Saved</span>
      </button>
   `;

   elements.productActionBox.insertAdjacentHTML('beforeend', htmlString);
}

export const toggleLikeBtn = (liked) => {
   if (!liked) {
      document.querySelector('.product-info__like-icon').setAttribute('class', 'product-info__like-icon product-info__like-icon--full fas fa-heart');
      document.querySelector('.product-info__like-text').innerHTML = 'Saved';
   } else {
      document.querySelector('.product-info__like-icon').setAttribute('class', 'product-info__like-icon far fa-heart');
      document.querySelector('.product-info__like-text').innerHTML = 'Save';
   }
}

const renderCartBtnId = (sku) => {
   elements.productCartBtn.id = `0-${sku}`;
}

const renderImgs = (product) => {
   const imgProperties = [
      product.largeFrontImage,
      product.alternateViewsImage,
      product.angleImage,
      product.backViewImage,
      product.leftViewImage,
      product.rightViewImage,
      product.topViewImage,
      product.accessoriesImage
   ];

   let imgsArr = [];

   for (const element of imgProperties) {
      if (element) {
         imgsArr.push(element);
      }
   }

   const newProductName = product.name.replace(/"/g, '&quot;');
   
   // Set img src of main img
   elements.productImg.setAttribute('src', imgsArr[0]);
   elements.productImg.setAttribute('alt', newProductName);
   elements.productImgLink.setAttribute('href', imgsArr[0]);
   
   // Create thumbs
   let html = '';

   for (const element of imgsArr) {
      html += `
         <div class="product-gallery__thumb-wrap">
            <div class="product-gallery__inner-thumb-wrap">
               <img src="${element}" alt="${newProductName}" class="product-gallery__thumb-img">
            </div>
         </div>
      `;
   }

   elements.productThumbsBox.insertAdjacentHTML('afterbegin', html);
}

const renderDescContent = (longDescription) => {
   const html = `
      <div class="product-info__description">
         <p class="product-info__description-p">
            ${longDescription}
         </p>
      </div>
   `;

   elements.productNavContents[0].insertAdjacentHTML('afterbegin', html);
}

const renderFeatItems = (featItemsArr) => {
   let html = '';

   for (const element of featItemsArr) {
      const strArr = element.feature.split('\n');

      if (strArr[0] && strArr[1]) {
         html += `
            <li class="product-info__features-item">
               <h4 class="product-info__features-title">${strArr[0]}</h4>
               <p class="product-info__features-text">${strArr[1]}</p>
            </li>
         `;

      } else {
         html += `
         <li class="product-info__features-item">
            <h4 class="product-info__features-title">${strArr[0]}</h4>
         </li>
         `;
      }
   }

   return html;
}

const renderFeatContent = (featItemsArr) => {
   const html = `
      <ul class="product-info__features">
         ${renderFeatItems(featItemsArr)}
      </ul>
   `;

   elements.productNavContents[1].insertAdjacentHTML('afterbegin', html);
}


const renderIncludedItems = (includedItemsArr) => {
   let html = '';

   for (const element of includedItemsArr) {
      html += `
         <li class="product-info__included-item">
            <h4 class="product-info__included-title">${element.includedItem}</h4>
         </li>
      `;
   }

   return html;
}


const renderIncludedContent = (includedItemsArr) => {
   const html = `
      <ul class="product-info__included">
         ${renderIncludedItems(includedItemsArr)}
      </ul>
   `;

   elements.productNavContents[2].insertAdjacentHTML('afterbegin', html);
}


const renderSpecsItems = (specsArr) => {
   let ulList1 = `<ul class="product-info__specifications-titles">`;
   let ulList2 = `<ul class="product-info__specifications-values">`;

   for (const element of specsArr) {
      ulList1 += `
         <li class="product-info__specifications-item">
            <h4 class="product-info__specifications-title">${element.name}:</h4>
         </li>
      `;
   }

   ulList1 += `</ul>`;


   for (const element of specsArr) {
      ulList2 += `
         <li class="product-info__specifications-item">
            <p class="product-info__specifications-text">${element.value}</p>
         </li>
      `;
   }

   ulList2 += `</ul>`;

   const htmlArr = [ulList1, ulList2];
   return htmlArr;
}


const renderSpecsContent = (specsArr) => {
   const htmlListsArr = renderSpecsItems(specsArr);
   
   const html = `
      <div class="product-info__specifications">
         ${htmlListsArr[0]}
         ${htmlListsArr[1]}
      </div>
   `;

   elements.productNavContents[3].insertAdjacentHTML('afterbegin', html);
}

const renderTopInfo = (title, manufacturer, model, sku) => {
   elements.productTitle.innerHTML = title;
   elements.productManufacturer.innerHTML = manufacturer;
   elements.productModel.innerHTML = model;
   elements.productSku.innerHTML = sku;
}

const renderPrice = (price) => {
   elements.productPrice.innerHTML = dollarFormat(price);
}

const renderReview = (rating, revCount) => {
   const int = Math.floor(rating);
   const dec = (rating * 10 - Math.floor(rating) * 10) / 10;
   const perc = dec * 100;

   let htmlString = '';
   
   for (let i = 0; i < int; i++) {
      htmlString += '<i class="product-info__review-icon fas fa-star"></i>';
   }

   if (dec) {
      htmlString += `<i class="product-info__review-icon fas fa-star product-info__review-icon--partial" style="background-image: linear-gradient(to right, #f3d31f 0%, #f3d31f ${perc}%, #ececec ${perc}%, #ececec 100%);"></i>`
   }
      
   elements.productReview.insertAdjacentHTML('afterbegin', htmlString);
   elements.productReviewCount.innerHTML = numberFormat(revCount);
}

export const renderProduct = (product) => {
   // Neccessary due to HTML rendering issues with some product titles containing double quotes (i.e. 55" Flat screen TV)
   product.name = product.name.replace(/"/g, '&quot;');
   
   renderTopInfo(product.name, product.manufacturer, product.modelNumber, product.sku);
   renderReview(product.customerReviewAverage, product.customerReviewCount);
   renderPrice(product.regularPrice);
   renderCartBtnId(product.sku);
   renderDescContent(product.longDescription);
   renderFeatContent(product.features);
   renderIncludedContent(product.includedItemList);
   renderSpecsContent(product.details);
   renderImgs(product);
}

export const navItemsEvents = (event) => {
   const navItemElement = event.currentTarget;
   
   for (const element of elements.productNavItems) {
      element.classList.remove('product-info__nav-item--active');
   }

   navItemElement.classList.add('product-info__nav-item--active');
   
   for (const element of elements.productNavContents) {
      element.style.display = 'none';
   }

   const index = Array.prototype.indexOf.call(elements.productNavItems, navItemElement);
   elements.productNavContents[index].style.display = 'block';
}

export const thumbImgsEvents = (event) => {   
   const imgSrc = event.currentTarget.querySelector('.product-gallery__thumb-img').getAttribute('src');

   elements.productImg.setAttribute('src', imgSrc);
   elements.productImgLink.setAttribute('href', imgSrc);
}