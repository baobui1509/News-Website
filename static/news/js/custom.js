// bat su kien click cua button gui ngay
// lay thong tin tu cac input
// su dung axios de goi len /post_contact va goi cac thong tin len
// axios.defaults.xsrfCookieName = 'csrftoken'
// axios.defaults.xsrfHeaderName = "X-CSRFTOKEN"

const ELEMENT_SUBMIT_FORM = document.querySelector(".button.button-contactForm.boxed-btn");
const ELEMEMT_INPUT_MESSAGE = document.getElementById("message")
const ELEMEMT_INPUT_NAME = document.getElementById("name")
const ELEMEMT_INPUT_EMAIL = document.getElementById("email")
const ELEMENT_TOKEN = document.querySelector('[name="csrfmiddlewaretoken"]');
const ELEMENT_SUCCESS_MESSAGE = document.querySelector(".alert-success");
const ELEMENT_ERROR_MESSAGE = document.querySelector(".alert-danger");
const elContactForm = document.querySelector('.contact_form');
const ELEMENT_LOAD_MORE = document.querySelectorAll('.btn-load-more');

if (ELEMENT_SUBMIT_FORM) {
    ELEMENT_SUBMIT_FORM.addEventListener('click', () => {
        var message = ELEMEMT_INPUT_MESSAGE.value
        var name = ELEMEMT_INPUT_NAME.value
        var email = ELEMEMT_INPUT_EMAIL.value
        const token = ELEMENT_TOKEN.value
    
        axios.post('/post_contact', {
            message,
            name,
            email,
        }, {
            headers: {
                'X-CSRFToken': token,
                "Content-Type": "application/x-www-form-urlencoded"
            }
        })
            .then(function (response) {
                console.log('response', response);
                if (response.data.status == 'success') {
                    ELEMENT_SUCCESS_MESSAGE.textContent = 'Gửi lời nhắn thành công!';
                    ELEMENT_SUCCESS_MESSAGE.style.display = 'block';
                    ELEMENT_ERROR_MESSAGE.style.display = 'none'
    
                    // ELEMEMT_INPUT_MESSAGE.value = ''
                    // ELEMEMT_INPUT_EMAIL.value = ''
                    // ELEMEMT_INPUT_NAME.value = ''
                    elContactForm.reset();
                } else if (response.data.status == 'error') {
                    let errors = response.data.errors
                    let errorMessages = ''
                    for (let field in errors) {
                        errors[field].forEach(error => {
                            errorMessages += `<li><i class="fas fa-exclamation-circle"></i><b> ${field}:</b> ${error}</li>`;
                        });
                    }
                    ELEMENT_ERROR_MESSAGE.innerHTML = `<ul>${errorMessages}</ul>`;
                    ELEMENT_ERROR_MESSAGE.style.display = 'block';
                    ELEMENT_SUCCESS_MESSAGE.style.display = 'none';
                }
            })
            .catch(function (error) {
                console.log('error', error);
                ELEMENT_ERROR_MESSAGE.style.display = "block";
                ELEMENT_SUCCESS_MESSAGE.style.display = "none";
            });
    })
}


ELEMENT_LOAD_MORE.forEach(loadMore => {
    loadMore.addEventListener('click', () => {
        var offset = parseInt(loadMore.dataset.offset);
        var layout = parseInt(loadMore.dataset.layout);
        const category_id = parseInt(loadMore.dataset.category);
        axios.get('/get_articles_by_category', {
            params: {
              category_id,
              offset
            }
          })
          .then(function (response) {
            const articles = loadMore.previousElementSibling;
            console.log(articles)
            console.log(response.data.data)
            html = ``
            if (layout == 'grid'){
                response.data.data.forEach(article => {
                    const maxLength = 180;
                    const content = article.content.length > maxLength
                        ? article.content.substring(0, maxLength) + '...'
                        : originalString;
                    html += /*html*/ `
                        <div class="col-xl-6 col-lg-12">
                            <div class="whats-news-single mb-40 mb-40"> 
                                <div class="whates-img">
                                    <img src="${article.image}"
                                        alt="" style="height: 200px; object-fit: cover;">
                                </div>
                                <div class="whates-caption">
                                    <h4>
                                        <a href="{{itemChild.get_absolute_url}}">${article.name}</a>
                                    </h4>
                                    <p>${content}</p>
                                </div>
                            </div>
                        </div>
                    `;
                })
            }
            else{
                response.data.data.forEach(article => {
                    html += /*html*/ `
                        <div class="col-xl-12">
                            <div class="whats-right-single mb-20">
                                <div class="whats-right-img" style="width: 30%">
                                    <img src="${article.image}"
                                        alt="" style="width: 100%; object-fit: cover;">
                                </div>
                                <div class="whats-right-cap" style="width: 70%;">
                                    <h4 style="font-size: 22px;">
                                        <a href="${article.link}">${article.name}</a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                    `;
                })
            }
            
            offset = offset + 2
            articles.innerHTML += html
            loadMore.dataset.offset = `${offset}`
            console.log(response.data.loadMoreDisabled)
            if (response.data.loadMoreDisabled){
                loadMore.disabled = true;
                // loadMore.style.cursor = 'default'; 
                loadMore.style.pointerEvents = 'none';  
                // loadMore.style.cursor = 'not-allowed';  

                loadMore.style.backgroundColor = '#ccc';  
                // loadMore.style.color = '#666';  
                // loadMore.style.transition = 'none';  
            }
          })
    });
})




