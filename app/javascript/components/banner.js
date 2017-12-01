import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Johnny", "François Hollande", "Brigitte Macron", "Bruce Willis", "Grégoire Margotton"],
    //typespeed plus t'augmente plus ca ralenti
    typeSpeed: 50,
    // backspacing speed
    startDelay: 1200,
    // backspacing speed
    backSpeed: 50,
    // time before backspacing
    backDelay: 1200,
    // loop
    loop: true,
    // show cursor
    showCursor: false,
    // character for cursor
    cursorChar: "|"
    // attribute to type (null == text)

  });
}

export { loadDynamicBannerText };
