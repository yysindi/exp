const applyBtn = () => {
  const appBtn = document.querySelector(".apply-btn")
  if (appBtn) {
    appBtn.addEventListener("click", (e) => {
      e.preventDefault();
      e.target.innerHTML = 'Applied! <i class="far fa-thumbs-up"></i>'
      e.target.classList.add('disabled')
    })
  }
}

export { applyBtn };