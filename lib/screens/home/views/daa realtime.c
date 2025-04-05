#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <time.h>

#define NUM_SIGNALS 5
#define INF INT_MAX

// 📍 City Graph Representation (Adjacency Matrix)
int cityGraph[NUM_SIGNALS][NUM_SIGNALS] = {
    {0, 2, INF, 1, INF},
    {2, 0, 3, INF, INF},
    {INF, 3, 0, 1, 5},
    {1, INF, 1, 0, 2},
    {INF, INF, 5, 2, 0}
};

// 🚗 Historical traffic data (last 5 time slots)
int historical_traffic[NUM_SIGNALS][5] = {
    {10, 30, 25, 40, 20},  
    {15, 35, 50, 60, 30},  
    {5, 20, 30, 50, 15},   
    {20, 40, 60, 80, 35},  
    {10, 25, 35, 45, 20}   
};

// 🛣️ Dijkstra's Algorithm for Shortest Paths
void dijkstra(int src) {
    int dist[NUM_SIGNALS], visited[NUM_SIGNALS] = {0};

    for (int i = 0; i < NUM_SIGNALS; i++) dist[i] = INF;
    dist[src] = 0;

    for (int i = 0; i < NUM_SIGNALS - 1; i++) {
        int minIndex = -1;
        for (int j = 0; j < NUM_SIGNALS; j++) 
            if (!visited[j] && (minIndex == -1 || dist[j] < dist[minIndex]))
                minIndex = j;

        visited[minIndex] = 1;
        for (int j = 0; j < NUM_SIGNALS; j++) 
            if (cityGraph[minIndex][j] != INF && !visited[j] && dist[minIndex] + cityGraph[minIndex][j] < dist[j]) 
                dist[j] = dist[minIndex] + cityGraph[minIndex][j];
    }

    printf("\n📍 Shortest Path from Signal %d:\n", src);
    for (int i = 0; i < NUM_SIGNALS; i++)
        printf("   ➤ To Signal %d → Distance: %d\n", i, dist[i]);
}

// 🚦 Generate Real-Time Traffic Data
void getRealTimeTraffic(int traffic[]) {
    for (int i = 0; i < NUM_SIGNALS; i++)
        traffic[i] = rand() % 100; 
}

// 📊 Predict Future Traffic
void predictTraffic(int predicted_traffic[]) {
    for (int i = 0; i < NUM_SIGNALS; i++) {
        int sum = 0;
        for (int j = 0; j < 5; j++) sum += historical_traffic[i][j];
        predicted_traffic[i] = sum / 5;
    }
}

// ⏳ Adjust Traffic Signal Timings
void adjustTrafficSignals(int real_time[], int predicted[]) {
    printf("\n🚥 Adjusting Traffic Light Timings...\n");
    for (int i = 0; i < NUM_SIGNALS; i++) {
        int expected_traffic = (real_time[i] + predicted[i]) / 2;
        int green_time = 60 - expected_traffic;  
        if (green_time < 10) green_time = 10;  

        printf("   ➤ Signal %d: Predicted = %d, Real-Time = %d → Green Time = %d sec\n",
               i, predicted[i], real_time[i], green_time);
    }
}

// 🏁 Main Function
int main() {
    srand(time(0));
    printf("🚦 AI-Driven Traffic Light Scheduling\n");

    dijkstra(0);

    int real_time_traffic[NUM_SIGNALS];
    getRealTimeTraffic(real_time_traffic);

    int predicted_traffic[NUM_SIGNALS];
    predictTraffic(predicted_traffic);

    adjustTrafficSignals(real_time_traffic, predicted_traffic);

    printf("\n✅ Traffic Optimization Completed!\n");
    return 0;
}
