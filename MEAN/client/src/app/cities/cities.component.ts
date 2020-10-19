import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-cities',
  templateUrl: './cities.component.html',
  styleUrls: ['./cities.component.css']
})
export class CitiesComponent implements OnInit {

  cities=["Charlotte","Raleigh","Charleston"];

  constructor(private router:Router) { }

  select(city)
  {
    sessionStorage.setItem("city",city);
    this.router.navigate(["app-service-center-by-city"]);
  }

  ngOnInit() {
  }

}
