import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user-location"
export default class extends Controller {
  static targets = ["coordinates"]

  connect() {
    console.log("user location controller is live")
    navigator.geolocation.getCurrentPosition((info) => {
      const lat = info.coords.latitude;
      const lon = info.coords.longitude;
      console.log(`${lat}, ${lon}`);
      this.coordinatesTarget.innerText = `Coordinates : ${lat}, ${lon}`
    });
  }

  // getCoordinates(event) {
  //   event.preventDefault();
  //   navigator.geolocation.getCurrentPosition((info) => {
  //     const lat = info.coords.latitude;
  //     const lon = info.coords.longitude;
  //     console.log(`${lat}, ${lon}`);
  //     this.coordinatesTarget.innerText = `Coordinates : ${lat}, ${lon}`
  //   });
  // }
}
