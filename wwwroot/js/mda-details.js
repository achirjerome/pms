document.addEventListener('DOMContentLoaded', () => {

    // Trend Chart
    new Chart(document.getElementById('trendChart'), {
        type: 'line',
        data: {
            labels: trendLabels,   // Provided via ViewData or JSON endpoint
            datasets: [
                { label: 'KPI %', data: kpiTrend, borderColor: '#28a745' },
                { label: 'Budget %', data: budgetTrend, borderColor: '#17a2b8' },
                { label: 'Timeliness', data: timelinessTrend, borderColor: '#ffc107' }
            ]
        },
        options: { responsive: true, tension: 0.3 }
    });

    // Citizen Feedback Chart
    new Chart(document.getElementById('feedbackChart'), {
        type: 'doughnut',
        data: {
            labels: ['Positive', 'Neutral', 'Negative'],
            datasets: [{
                data: feedbackData,
                backgroundColor: ['#28a745', '#6c757d', '#dc3545']
            }]
        },
        options: { responsive: true }
    });

    // Leaflet Map
    const map = L.map('mdaMap').setView([7.3, 8.7], 8);
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);
    projectLocations.forEach(loc => {
        L.marker([loc.lat, loc.lng])
            .addTo(map)
            .bindPopup(`<strong>${loc.title}</strong><br/>${loc.kpi}% complete`);
    });
});
