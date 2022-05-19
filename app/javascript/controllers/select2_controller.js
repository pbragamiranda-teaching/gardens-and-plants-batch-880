import { Controller } from "@hotwired/stimulus"
import "select2"
import $ from 'jquery';

export default class extends Controller {
  connect() {
    $(this.element).select2();
  }
}
