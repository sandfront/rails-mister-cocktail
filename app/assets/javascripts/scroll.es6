document.addEventListener('DOMContentLoaded', (event) => {

  const button = document.getElementById('main-btn')

  const scroll = () => {
    document.getElementById('home_1').scrollIntoView();
  }


  button.addEventListener('click', scroll)


})
