import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["totalDays", "totalPrice"]

  connect() {
    const dailyPrice = this.data.get("price");

    flatpickr(this.element.querySelector("#rental-dates"), {
      mode: "range",
      minDate: new Date().fp_incr(2),
      maxDate: new Date().fp_incr(364),
      dateFormat: "d-m-Y",
      onChange: (selectedDates) => {
        if (selectedDates.length === 2) {

          const startDate = selectedDates[0];
          const endDate = selectedDates[1];

          const timeDiff = endDate - startDate;
          const dayDiff = Math.ceil(timeDiff / (1000 * 60 * 60 * 24));

          this.totalDaysTarget.innerHTML = dayDiff;
          this.totalPriceTarget.innerHTML = `£${dayDiff * dailyPrice}`;
          }
        }
      });
    }
  }
