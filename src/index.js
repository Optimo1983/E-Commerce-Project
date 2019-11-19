import { elements, hideElement } from './views/base';

import Search from './models/Search';
import CatSearch from './models/CatSearch';

import * as searchView from './views/searchView';
import * as mainMenuView from './views/mainMenuView';
import * as submenuView from './views/submenuView';

// ============= GLOBAL STATE OF APP =============
const state = {};

// ============= SEARCH CONTROLLER =============
const controlSearch = async () => {

   if (window.location.search) {
      // Get query from url parameter
      const urlQueryString = window.location.search;

      // New search object and add to state
      state.search = new Search(urlQueryString);

      // Prepare UI for results
      
      try {
         // Search for products
         await state.search.getResults();

         // Render results on UI
         searchView.renderResults(state.search.results);
      } catch (error) {
         alert('Somthing went wrong with the search');
         console.log(error);
      }

      console.log(state.search);
   };
};

// ============= CAT SEARCH CONTROLLER =============
const controlCatSearch = async () => {
   // New category search object and add to state
   state.catSearch = new CatSearch();

   try {
      await state.catSearch.getResults();      
   } catch (error) {
      alert('Somthing went wrong with the categories search');
      console.log(error);
   }

   console.log(state.catSearch.results);
};

// ============= MAIN MENU CONTROLLER =============
   
// ============= HEADER CONTROLLER =============
const controlHeader = () => {
   // Add modifier classes to each main menu item and corresponding submenu: main-menu__item--1 / submenu--1
   submenuView.addModClass(elements.mainMenuItems,'main-menu__item'); // addModClass found in submenuView
   submenuView.addModClass(elements.submenuItems, 'submenu'); // addModClass found in submenuView

   controlCatSearch();



   // Create event listeners for...
      // Header notice close button
      elements.headerNoticeBtn.addEventListener('click', function() {
         hideElement(elements.headerNotice);
      });
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

   
}


// ============= HOME PAGE CONTROLLER =============
const controlHomePage = () => {
   console.log('controller for home page');
}


// ============= RESULTS PAGE CONTROLLER =============
const controlResultsPage = () => {
   controlSearch();

   // When page buttons on Results page are clicked
   elements.resultsPages.addEventListener('click', event => {
      const btn = event.target.closest('.btn');

      if (btn) {
         const goToPage = parseInt(btn.dataset.goto, 10);
         searchView.clearResults();
         searchView.renderResults(state.search.results, goToPage);
      };
   });
};


const init = () => {
   controlHeader();

   if (window.location.pathname === '/') {
      controlHomePage();
   }

   if (window.location.pathname === '/results') {
      controlResultsPage();
   }
};

init();
