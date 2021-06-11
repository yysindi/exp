

const searchquery = () => {
  const  searchbtn = document.getElementById('search-form');
  const query = document.getElementById('query');
  if (query) { 
    query.addEventListener('keyup', (e)=> {
      searchbtn.submit()
    });
  } 
}

export {searchquery}