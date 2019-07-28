$(document).ready(function() {
	swiperInit();
	//Scroll to top
	let btnTopScroll = $(".back-to-top");
	btnTopScroll.on("click", function(e) {
		e.preventDefault();
		$("html, body").animate(
			{
				scrollTop: 0
			},
			700
		);
	});

	function toggleMenu() {
		let toggleMenu = $(".header .toggle-menu");
		let backdrop = $(".header .backdrop");
		let bodyOverFlow = $("body");
		let mobileHeader = $(".mobile-header");
		toggleMenu.on("click", function() {
			toggleMenu.toggleClass("active");
			backdrop.toggleClass("active");
			bodyOverFlow.toggleClass("active");
			mobileHeader.toggleClass("active");
		});
	}

	function toggleSearchBox() {
		let searchIcon = $(".header .searchicon");
		let searchBox = $(".header .Module-142");
		searchIcon.on("click", function() {
			searchBox.toggleClass("active");
		});
	}
	const Header = {
		moveSearchBox: function() {
			let moveSearchBox = new MappingListener({
				selector: ".header .searchbox",
				mobileWrapper: ".mobile-tab",
				mobileMethod: "appendTo",
				desktopWrapper: ".header-info .desktop-header-1",
				desktopMethod: "prependTo",
				breakpoint: 992
			}).watch();
		},
		moveNav: function() {
			let moveNav = new MappingListener({
				selector: ".header .desktop-header-2",
				mobileWrapper: ".mobile-tab",
				mobileMethod: "appendTo",
				desktopWrapper: ".header-nav .container",
				desktopMethod: "prependTo",
				breakpoint: 992
			}).watch();
		},
		moveContactInfo: function() {
			let moveContactInfo = new MappingListener({
				selector: ".header .desktop-header-1",
				mobileWrapper: ".container .mobile-header .mobile-tab",
				mobileMethod: "appendTo",
				desktopWrapper: ".header-info .container",
				desktopMethod: "prependTo",
				breakpoint: 992
			}).watch();
		},
		moveLogo: function() {
			let moveLogo = new MappingListener({
				selector: ".header .logo",
				mobileWrapper: ".mobile-header",
				mobileMethod: "appendTo",
				desktopWrapper: ".desktop-header-2",
				desktopMethod: "prependTo",
				breakpoint: 992
			}).watch();
		}
	};
	changeValueSubmitBtn2();
	changeValueSubmitBtn();
	toggleMenu();
	sliderImage();
	otherNewClient();
	bannerSlider();
	roomTypeSlide();
	homeBannerSlider();
	toggleSearchBox();
	homeBlock3();
	// Header.moveSearchBox();
	Header.moveNav();
	Header.moveContactInfo();
	Header.moveLogo();
});

function sliderImage() {
	var swiper = new Swiper(".slider-image .swiper-container", {
		speed: 2000,
		loop: true,
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
				centeredSlides: false
			},
			// when window width is >= 640px
			768: {
				slidesPerView: 1.4,
				centeredSlides: true,
				spaceBetween: 40
			}
		},
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev"
		}
	});
}

function homeBlock3() {
	var swiper = new Swiper(".home-block-3 .swiper-container", {
		speed: 2000,
		navigation: {}
	});
}

function changeValueSubmitBtn() {
	$(".lienhe .wrap-form .frm-btnwrap .frm-btn .frm-btn-submit").val(
		"GỬI THÔNG TIN"
	);
}

function changeValueSubmitBtn2() {
	$(".datphong .wrap-form .frm-btnwrap .frm-btn .frm-btn-submit").val(
		"GỬI THÔNG TIN"
	);
}

function bannerSlider() {
	var swiper = new Swiper(".banner .swiper-container", {
		speed: 2000
	});
}

function homeBannerSlider() {
	var swiper = new Swiper(".home-banner .swiper-container", {
		speed: 2000,
		pagination: {
			el: ".home-banner .swiper-pagination"
		}
	});
}

function otherNewClient() {
	var swiper = new Swiper(".giaitri .swiper-container", {
		spaceBetween: 20,
		slidesPerView: 3,
		speed: 2000,
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev"
		},
		breakpoints: {
			992: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	});
}

function roomTypeSlide() {
	var swiper = new Swiper(".room-type .swiper-container", {
		slidesPerView: 3,
		speed: 2000,
		spaceBetween: 20,
		breakpoints: {
			992: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	});
}

function swiperInit() {
	var galleryThumbs = new Swiper(".swiper-product-thumbs .swiper-container", {
		spaceBetween: 20,
		freeMode: true,
		spaceBetween: 20,
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			300: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			// when window width is >= 480px
			992: {
				slidesPerView: 3,
				spaceBetween: 20
			},
			// when window width is >= 640px
			1200: {
				slidesPerView: 4,
				spaceBetween: 20
			}
		},

		watchSlidesVisibility: true,
		watchSlidesProgress: true
	});
	var galleryTop = new Swiper(".swiper-product-top .swiper-container", {
		spaceBetween: 10,
		effect: "fade",
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev"
		},
		fadeEffect: {
			crossFade: true
		},
		thumbs: {
			swiper: galleryThumbs
		}
	});
	var swiperHomeGallery = new Swiper(".home-gallery .swiper-container", {
		spaceBetween: 0,
		breakpointsInverse: true,
		centeredSlides: true,
		loop: false,
		speed: 750,
		initialSlide: 2,
		breakpoints: {
			// when window width is >= 320px
			576: {
				slidesPerView: 2
			},
			// when window width is >= 480px
			992: {
				slidesPerView: 3
			},
			// when window width is >= 480px
			1200: {
				slidesPerView: 4
			},
			// when window width is >= 640px
			1400: {
				slidesPerView: 5
			}
		},
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev"
		}
	});
}
