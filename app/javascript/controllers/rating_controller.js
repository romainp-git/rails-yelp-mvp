import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="rating"
export default class extends Controller {
  static targets = ["input", "starRating"];
  static values = {
    rating: Number
  }

  connect() {
    this.updateRating();
  }

  updateRating() {
    this.starRatingTarget.innerHTML = `<i class='fa-solid fa-star'></i>`.repeat(this.inputTarget.value) + `<i class='fa-regular fa-star'></i>`.repeat(5 - this.inputTarget.value);
  }
}
