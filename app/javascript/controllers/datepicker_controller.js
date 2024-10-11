import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["totalDays", "totalPrice", "startDate", "endDate", "price"]

  connect() {
    flatpickr(this.startDateTarget), {
      minDate: new Date().fp_incr(2),
      maxDate: new Date().fp_incr(364),
  }
    flatpickr(this.endDateTarget), {
      minDate: new Date().fp_incr(2),
      maxDate: new Date().fp_incr(364),
  }
  }
  calculatePrice() {
    const dailyPrice = this.priceTarget.innerText;
    const startDateValue = new Date(this.startDateTarget.value);
    const endDateValue = new Date(this.endDateTarget.value);
    const timeDiff = endDateValue - startDateValue;
    const dayDiff = Math.ceil(timeDiff / (1000 * 60 * 60 * 24));
    const totalPrice = dayDiff * dailyPrice;

    this.totalDaysTarget.innerHTML = dayDiff;
    this.totalPriceTarget.innerHTML = `£${totalPrice}`;
  }
}
