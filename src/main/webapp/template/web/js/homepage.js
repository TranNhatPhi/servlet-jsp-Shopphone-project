//--HomePageImage-Left---Next,Back
const homePageImage = document.querySelector(".homepage-left-img");
const homePageImageNext = document.querySelector(".homepage-left-icon-next");
const homePageImageBack = document.querySelector(".homepage-left-icon-back");
const arraySrc = ["https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/668ca5128790251.615d8356916ac.gif","https://www.viettablet.com/images/companies/1/0-hinh-moi/tin-tuc/2022/thang-8/24/dat-truoc-iphone-14-series.jpg?1661687721487","https://cdnb.artstation.com/p/assets/images/images/016/802/459/large/shuja-shuaib-banner.jpg?1553535424"];	
homePageImageNext.addEventListener("click",handleNextSrc);
let countSrc = 0;
function handleNextSrc(event) {
    countSrc = countSrc + 1;
    if(countSrc > 2){
        countSrc = 0;
    }
    homePageImage.setAttribute("src",arraySrc[countSrc]);
    
}
homePageImageBack.addEventListener("click",handleBackSrc);
function handleBackSrc(event) {
    countSrc = countSrc - 1;
    if(countSrc < 0){
        countSrc = 2;
    }
    homePageImage.setAttribute("src",arraySrc[countSrc]);
    
}

const timer = setInterval(function(){
    handleNextSrc();
},5500);