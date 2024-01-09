// graph.component.ts

import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { Chart } from 'chart.js';

@Component({
  selector: 'app-graph',
  templateUrl: './graph.component.html',
  styleUrls: ['./graph.component.css']
})
export class GraphComponent implements OnInit {
  @ViewChild('canvas', { static: true }) canvas: ElementRef;

  chart: any;

  ngOnInit() {
    this.createChart();
  }

  createChart() {
    const ctx = this.canvas.nativeElement.getContext('2d');
    this.chart = new Chart(ctx, {
      type: 'bar', // Type de graphique (bar, line, etc.)
      data: {
        labels: ['Label 1', 'Label 2', 'Label 3', 'Label 4', 'Label 5'],
        datasets: [
          {
            label: 'Données de l\'exemple',
            data: [10, 25, 5, 30, 15],
            backgroundColor: 'rgba(75, 192, 192, 0.2)', // Couleur de fond
            borderColor: 'rgba(75, 192, 192, 1)', // Couleur de la bordure
            borderWidth: 1 // Épaisseur de la bordure
          }
        ]
      },
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    });
  }
}
