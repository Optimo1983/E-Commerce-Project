import axios from 'axios';

export default class Search {
   constructor(query) {
      this.query = query;
      this.results = [];
      this.keywordSearchKey = 'search=';
      this.catSearchKey = 'categoryPath.id='
   }

   formatQuery() {
      let formattedQuery;
      
      // i.e. query is "?keyword-search=red+dead+redemption"
      if (this.query.includes(this.keywordSearchKey)) {
         const queryArray = this.query.trim().slice(8).split('+');
         const addToString = "search=\'";
   
         let newQueryArray = [];
   
         queryArray.forEach(element => {
            newQueryArray.push(addToString.concat(element) + "\'");
         });
         
         formattedQuery = newQueryArray.join('&'); // i.e. 'search="red"&search="dead"&search="redemption"
      } 
      
      if (this.query.includes(this.catSearchKey)) {
         // console.log(`Search query: ${this.query}`);
         formattedQuery = this.query.slice(1);
      }
      
      return formattedQuery;
   }

   async search(totalPages, keywords, catID, key) {
      // console.log(key);
      const baseURL = 'https://api.bestbuy.com/v1/',
            apiType = 'products',
            attribute = 'customerReviewAverage>1',
            apiKey = key,
            sortOptions = 'sort=bestSellingRank.asc',
            showOptions = 'show=name,sku,description,details.name,details.value,features.feature,includedItemList.includedItem,longDescription,manufacturer,modelNumber,regularPrice,shortDescription,customerReviewAverage,customerReviewCount,image,accessoriesImage,alternateViewsImage,angleImage,backViewImage,largeFrontImage,leftViewImage,rightViewImage,topViewImage',
            pageSize = 'pageSize=60',
            active = 'active=true',
            responseFormat = 'format=json';

      // console.log('API Product Request:', `${baseURL}${apiType}(${keywords}${catID}&${attribute})?apiKey=${apiKey}&${sortOptions}&${showOptions}&${pageSize}&page=1&${active}&${responseFormat}`);

      for (let i = 0; i < totalPages; i++) {
         try {
            const response = await axios.get(`${baseURL}${apiType}(${keywords}${catID}&${attribute})?apiKey=${apiKey}&${sortOptions}&${showOptions}&${pageSize}&page=${i + 1}&${active}&${responseFormat}`);

            this.results = this.results.concat(response.data.products);
            // totalPages = response.data.totalPages; // ACTIVATE THIS LINE OF CODE TO CREATE UNLIMITED NUMBER OF SEARCH RESULTS (PAGES)
            totalPages = 1;

         } catch (error) {
            console.log(error);
         }
      }
   }

   async getResults(key) {
      const searchQuery = this.formatQuery();
      let   keywords,
            catID,
            totalPages = 1;

      // UNIMPLEMENTED FEATURE - This would allow a search within a category
      if (searchQuery.includes(this.keywordSearchKey) && searchQuery.includes(this.catSearchKey)) {
         console.log('Feature has not been implemeneted...');
         keywords = `(${searchQuery})`;
         catID = `&(${searchQuery})`; // Category ID would go here
         
      // Search by keyword
      } else if (searchQuery.includes(this.keywordSearchKey)) {
         keywords = `(${searchQuery})`;
         catID = '';

      // Search by category
      } else if (searchQuery.includes(this.catSearchKey)) {
         keywords = '';
         catID = `(${searchQuery})`;

      } else {
         console.log('Something went wrong with the search...');
      }

      try {
         await this.search(totalPages, keywords, catID, key);
      } catch (error) {
         console.log(error);
      }
   }
}
