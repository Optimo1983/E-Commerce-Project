import { elements, hideElement } from './views/base';

import ProductSearch from './models/ProductSearch';
import CategorySearch from './models/CategorySearch';

import * as resultsView from './views/resultsView';
import * as productView from './views/productView';
import * as mainMenuView from './views/mainMenuView';
import * as submenuView from './views/submenuView';


// GLOBAL STATE
// ===========================================================
const state = {};

// ===========================================================
// PRODUCTS SEARCH CONTROLLER
// ===========================================================

const controlProductSearch = async (query) => {
      // Create new search object and add to state
      state.productSearch = new ProductSearch(query);

      try {
         // Search for products
         await state.productSearch.getResults();

      } catch (error) {
         alert('Somthing went wrong with the product search');
         console.log(error);
      }

   console.log(state.productSearch);
};


// ===========================================================
// RESULTS PAGE CONTROLLER
// ===========================================================
const controlResults = async () => {
   // Get search query from url parameter
   const urlQuery = window.location.search;
   
   if (urlQuery) {

      try {
         // Prepare UI for results

         // Perform Search and prepare results
         await controlProductSearch(urlQuery);

         // Render results on UI
         resultsView.renderResults(state.productSearch.results);

      }  catch (error) {
         alert('Somthing went wrong when attempting to render product search results');
         console.log(error);
      }
   }

   // EVENT LISTENERS
   // ===========================================================
      // When page buttons on Results page are clicked
      elements.resultsPages.addEventListener('click', event => {
         const btn = event.target.closest('.btn');

         if (btn) {
            const goToPage = parseInt(btn.dataset.goto, 10);
            resultsView.clearResults();
            resultsView.renderResults(state.productSearch.results, goToPage);
         };
      });
};
   

// ===========================================================
// PRODUCT PAGE CONTROLLER
// ===========================================================
const controlProduct = async () => {

   // Get search query from url parameter
   const urlQuery = window.location.search;

   if (urlQuery) {
      try {
         // Prepare UI for results

         // Perform Search and prepare results
         await controlProductSearch(urlQuery);

         // Render results on UI
         productView.renderProduct(state.productSearch.results[0]);
         

      }  catch (error) {
         alert('Somthing went wrong when attempting to render product.');
         console.log(error);
      }
   }

   // EVENT LISTENERS
   // ===========================================================
     for (const element of elements.productNavItems) {
         element.addEventListener('click', function() {
            for (const element of elements.productNavItems) {
               element.classList.remove('product-info__nav-item--active');
            }
            element.classList.add('product-info__nav-item--active');
            
            for (const element of elements.productNavContents) {
               element.style.display = 'none';
            }
            const index = Array.prototype.indexOf.call(elements.productNavItems, element);
            elements.productNavContents[index].style.display = 'block';
         });
     };
     

};


// ===========================================================
// CATEGORIES SEARCH CONTROLLER
// ===========================================================
   const controlCategorySearch = async () => {
      // New category search object and add to state
      state.categorySearch = new CategorySearch();

      try {
         // Search categories
         await state.categorySearch.getResults();

      } catch (error) {
         alert('Somthing went wrong with the categories search');
         console.log(error);
      }
      
   };


// ===========================================================
// HEADER CONTROLLER
// ===========================================================
const controlHeader = async () => {
   try {
      // Perform categories search
      await controlCategorySearch();

      // Organize the results to be used for rendering
      state.categorySearch.organizeResults();

      // Add modifier classes to each main menu item: main-menu__item--1
      submenuView.addModClass(elements.mainMenuItems,'main-menu__item');
   
      // Render the submenus with subcategories for each main menu category
      submenuView.renderSubMenus(state.categorySearch.allSubCatArrays);

   } catch (error) {
      alert('Somthing went wrong when attempting to render subcategories.');
      console.log(error);
   }

   // EVENT LISTENERS
   // ===========================================================
      // Open/close main menu
      elements.mainMenuBtn.addEventListener('click', function() {
         mainMenuView.toggleDropdown(elements.mainMenuDropdown);
      });

      // Close main menu when click anywhere outside of mainmenu
      document.addEventListener('click', function(event) {
         mainMenuView.hideOnClickOutside(event, elements.mainMenuDropdown);
      });

      // Open/close main menu
      submenuView.setUpSubmenuEvent('mouseover', submenuView.showSubMenu);
      submenuView.setUpSubmenuEvent('mouseleave', submenuView.hideSubMenu); 
      
      // Header notice close button
      elements.headerNoticeBtn.addEventListener('click', function() {
         hideElement(elements.headerNotice);
      });
};


// ===========================================================
// HOME PAGE CONTROLLER
// ===========================================================
const controlHome = () => {

};


// ===========================================================
// INITIALIZE APPLICATION
// ===========================================================
const init = () => {
   controlHeader();

   if (window.location.pathname === '/product') {
      controlProduct();
   } else if (window.location.pathname === '/results') {
      controlResults();
   } else {
      controlHome();
   }
};

init();



