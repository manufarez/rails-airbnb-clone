console.log("hello");

const invitations = document.getElementById("btnmesinvitations");
invitations.addEventListener("click", showInvits)

const invits = document.getElementById("invitations");
const resa = document.getElementById("reservations");

document.addEventListener("DOMContentLoaded", showInvits)

function showInvits() {
  console.log("hello1");

  invits.classList.remove("hidden");
  resa.classList.add("hidden");

};


const reservations = document.getElementById("btnmesreservations");
reservations.addEventListener("click", showReserv)

function showReserv() {
  console.log("hello2");
    resa.classList.remove("hidden");
    invits.classList.add("hidden");
};




export { showInvits };
export { showReserv };
