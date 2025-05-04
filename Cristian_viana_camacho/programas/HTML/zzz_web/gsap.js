let cards = document.querySelector(".card");

gsap.from("h1", {
    duration: 0.9,
    // scale: 0.5,
    x: -40,
    ease: "power1.inOut",
});



gsap.from(cards, {
    duration: 0.9,
    // scale: 0.5,
    x: -100,
    // delay: 0.5,
    ease: "power1.inOut",
});