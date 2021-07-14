//============ GLOBAL VARIABLES ============
const eyeOffIcon = document.querySelector('.eye-off-icon')
const eyeOnIcon = document.querySelector('.eye-on-icon')
const modal = document.querySelectorAll('.modal')
let passInput = document.querySelector('.password-content input')
const formSteps = document.querySelectorAll('.form-step')
const btnPrev = document.querySelectorAll('.btn-prev')
const btnNext = document.querySelectorAll('.btn-next')
const checkboxContents = document.querySelectorAll('.checkbox-content')
let stepIndex = 0


//============ ADD EVENT LISTERNERS ============
if (eyeOnIcon) {
    eyeOnIcon.addEventListener('click', hidePassword)
}
if (eyeOffIcon) {
    eyeOffIcon.addEventListener('click', showPassword)
}

document.addEventListener('click', function (e) {

    let btnopenModal
    let btncloseModal
    // open modal
    if (btnopenModal = e.target.closest('.btn-open-modal')) {
        e.preventDefault()
        openModal(btnopenModal.dataset.modal)

    }
    // close modal
    if (btncloseModal = e.target.closest('.btn-close-modal')) {
        e.preventDefault()
        closeModal(btncloseModal.dataset.modal)
        if (formSteps.length) {
            resetFormSteps()
        }
    }

})

btnPrev.forEach(element => {
    element.addEventListener('click', function (e) {
        e.preventDefault()
        hideFormSteps()
        stepIndex -= 1;
        formSteps[stepIndex].classList.add('active')
    })
})
btnNext.forEach(element => {
    element.addEventListener('click', function (e) {
        e.preventDefault()
        hideFormSteps()
        stepIndex += 1;
        formSteps[stepIndex].classList.add('active')
    })

})
//toggle checkbox
checkboxContents.forEach(checkboxContent => {
    checkboxContent.addEventListener('click', function () {
        checkboxContent.classList.toggle('active')
        if (checkboxContent.querySelector('input').checked == false) {
            checkboxContent.querySelector('input').checked = true
        } else {
            checkboxContent.querySelector('input').checked = false
        }
    })
})
document.querySelectorAll('.checkbox-content input').forEach(element => {
    element.addEventListener('change', function (e) {
        e.currentTarget.parentNode.classList.toggle('active')
    })
})

//============ FUNCTIONS ============

function hidePassword() {
    this.style.display = 'none'
    eyeOffIcon.style.display = 'block'
    passInput.type = 'password'
}
function showPassword() {
    passInput.type = 'text'
    this.style.display = 'none'
    eyeOnIcon.style.display = 'block'
}
function openModal(id) {
    document.querySelector(`#${id}`).classList.add('active')
}
function closeModal(id) {
    document.querySelector(`#${id}`).classList.remove('active')
}
function hideFormSteps() {
    formSteps.forEach(element => {
        element.classList.remove('active')
    })
}
function resetFormSteps() {
    hideFormSteps()
    stepIndex = 0
    formSteps[stepIndex].classList.add('active')
}