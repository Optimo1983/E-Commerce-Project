export const elements = {
   headerNotice: document.querySelector('.header-notice'),
   headerNoticeBtn: document.querySelector('.header-notice__close-icon'),

   searchForm: document.querySelector('.search-form'),
   searchInput: document.querySelector('.search-form__input'),

   mainMenuBtn: document.querySelector('.main-menu__btn'),
   mainMenuDropdown: document.querySelector('.main-menu__dropdown'),
   shadowOverlay: document.querySelector('.shadow-overlay'),

   mainMenuItems: document.querySelectorAll('.main-menu__item'),
   submenuItems: document.querySelectorAll('.submenu'),
};

// ============== SIMPLE HIDE ELEMENT FUNCTION ==============
export const hideElement = (element) => {
   element.style.display = 'none';
};
