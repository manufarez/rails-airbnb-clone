// console.log("hello");

const invitations = document.getElementById("btnmesinvitations");
if (invitations) {
  invitations.addEventListener("click", showInvits)
}

const invits = document.getElementById("invitations");
const resa = document.getElementById("reservations");

document.addEventListener("DOMContentLoaded", showInvits)

function showInvits() {
  // console.log("hello1");
  if (invits) {
  invits.classList.remove("hidden");
}
  if (resa) {
  resa.classList.add("hidden");
}
};


const reservations = document.getElementById("btnmesreservations");
if (invitations) {
  reservations.addEventListener("click", showReserv)
}

function showReserv() {
  // console.log("hello2");
  if (resa) {
    resa.classList.remove("hidden");
}
  if (invits) {
    invits.classList.add("hidden");
  }
};




export { showInvits };
export { showReserv };
