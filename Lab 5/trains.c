/* name: trains.c
 *
 * author: Michal Tešnar (m.tesnar@student.rug.nl, s4740556)
 * author: Wojciech Trejter (w.trejter@student.rug.nl, s4296850)
 *
 * date: 29.03.2022
 *
 * description: Connections from file "cities.txt" are loaded into a graph
 * which is represented as 2D matrix. Then connections are disrupted by
 * the user.
 * Afterwards, connections can be searched in the graph using the Dijkstra's
 * shortest path algorithm. If connection is found, the cities on the way
 * are printed in order in which they were visited. Then the time needed is
 * also printed. If if is not possible to reach the final destination,
 * "UNREACHABLE" is printed.
 * A* optimization is added to make the search faster.
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <limits.h>
#include <math.h>
#include "heap.h"

// The number of cities on the map
#define SIZE 12

//returns name of the city of a given number
char *cityName(int n) {
  switch (n) {
    case 0:
      return "Leeuwarden";
    case 1:
      return "Groningen";
    case 2:
      return "Meppel";
    case 3:
      return "Zwolle";
    case 4:
      return "Enschede";
    case 5:
      return "Amsterdam";
    case 6:
      return "Den Helder";
    case 7:
      return "Den Haag";
    case 8:
      return "Utrecht";
    case 9:
      return "Eindhoven";
    case 10:
      return "Nijmegen";
    case 11:
      return "Maastricht";
    default:
      return "";
  }
}

// returns code number for the city
int cityNumber(char *str) {
  if (!strcmp(str, "Leeuwarden")) {
    return 0;
  }
  if (!strcmp(str, "Groningen")) {
    return 1;
  }
  if (!strcmp(str, "Meppel")) {
    return 2;
  }
  if (!strcmp(str, "Zwolle")) {
    return 3;
  }
  if (!strcmp(str, "Enschede")) {
    return 4;
  }
  if (!strcmp(str, "Amsterdam")) {
    return 5;
  }
  if (!strcmp(str, "Helder")) {
    return 6;
  }
  if (!strcmp(str, "Haag")) {
    return 7;
  }
  if (!strcmp(str, "Utrecht")) {
    return 8;
  }
  if (!strcmp(str, "Eindhoven")) {
    return 9;
  }
  if (!strcmp(str, "Nijmegen")) {
    return 10;
  }
  if (!strcmp(str, "Maastricht")) {
    return 11;
  }
  printf("INVALID CITY NAME\n");
  abort();
}

// prints the cities in order in which they are visited on the way
void printReverse(int prev[SIZE], int current, int s) {
  if (current != s) {
    printReverse(prev, prev[current], s);
  }
  printf("%s\n", cityName(current));
}

// returns distance between two cities in kilometers
double distance(int s, int e){
  double parameter = 110.574;
  double c[12][2] = {
  {53.1964772, 5.7929849},// "Leeuwarden";
  {53.2109237, 6.5641028},// "Groningen";
  {52.6919049, 6.1979382},// "Meppel"
  {52.5050086, 6.0912373},// "Zwolle"
  {52.2223649, 6.8897811},// "Enschede"
  {52.3789010, 4.9005805},// "Amsterdam" -- station Centraal
  {52.9568469, 4.7606663},// "Den Helder"
  {52.0807633, 4.3255311},// "Den Haag" -- station Centraal
  {52.0893925, 5.1098210},// "Utrecht" -- station Centraal
  {51.4429623, 5.4795265},// "Eindhoven"
  {51.8431362, 5.8530913},// "Nijmegen"
  {50.8501783, 5.7052501},// "Maastricht";
  };
  return parameter*sqrt((c[s][0]-c[e][0])*(c[s][0]-c[e][0]) + (c[s][1]-c[e][1])*(c[s][1]-c[e][1]));
}

// the Dijskra's shortest path algorithm with A* heuristic
void dijkstraSearchAStar(const int conn[SIZE][SIZE], const int s, const int e) {
  int weight[SIZE]; //the time of going from S to current
  int prev[SIZE]; // we got to node a from the value of prev[a]
  int visited[SIZE] = {0}; // keep track of which city we visited
  int currentCity = s; // starting position
  for (int i = 0; i < SIZE; i++) {
    weight[i] = INT_MAX / 2;
  }
  weight[s] = 0;

  Heap todo = makeHeap();
  enqueue(weight[s], &todo, s);

  while (!isEmptyHeap(todo) && currentCity != e) {
    currentCity = removeMin(&todo);
    if(currentCity == e){ // break if you have found the target city
      break;
    }
    visited[currentCity] = 1;

    for (int i = 0; i < SIZE; i++) { //assign new weight of connection to i
      if (visited[i] == 0 && conn[currentCity][i] != 0 &&
          weight[i] > weight[currentCity] + conn[currentCity][i]) { //new connection is shorter
        weight[i] = weight[currentCity] + conn[currentCity][i]; // new, best time of connection
        prev[i] = currentCity; // direction of the connection
        enqueue(weight[i] + distance(i, e), &todo, i); // add to heap the new weight (distance) and the distance between the city and the target, also the city number
      }
    }
  }

  if (currentCity != e) { // if we do not terminate on the target city it is unreachable
    printf("UNREACHABLE\n");
  } else {
    printReverse(prev, currentCity, s); // print the stations we went through
    printf("%i\n", weight[currentCity]); // print the time needed to get there
  }
  freeHeap(todo);
}

// the Dijskra's shortest path algorithm
void dijkstraSearch(const int conn[SIZE][SIZE], const int s, const int e) {
  int weight[SIZE]; //the time of going from S to current
  int prev[SIZE]; // we got to node a from the value of prev[a]
  int visited[SIZE] = {0}; // keep track of which city we visited
  int currentCity = s; // starting position
  for (int i = 0; i < SIZE; i++) {
    weight[i] = INT_MAX / 2;
  }
  weight[s] = 0;

  Heap todo = makeHeap();
  enqueue(weight[s], &todo, s);

  while (!isEmptyHeap(todo) && currentCity != e) {

    currentCity = removeMin(&todo);
    visited[currentCity] = 1;

    for (int i = 0; i < SIZE; i++) { //assign new weight of connection to i
      if (visited[i] == 0 && conn[currentCity][i] != 0 &&
          weight[i] > weight[currentCity] + conn[currentCity][i]) { //new connection is shorter
        weight[i] = weight[currentCity] + conn[currentCity][i]; // new, best time of connection
        prev[i] = currentCity; // direction of the connection
        enqueue(weight[i], &todo, i); // add to heap the new weight (time) and the city number
      }
    }
  }

  if (currentCity != e) { // if we do not terminate on the target city it is unreachable
    printf("UNREACHABLE\n");
  } else {
    printReverse(prev, currentCity, s); // print the stations we went through
    printf("%i\n", weight[currentCity]); // print the time needed to get there
  }
  freeHeap(todo);
}

int main(void) {
  // input connection values into the graph
  FILE *in_file = fopen("cities.txt", "r"); // read file with cities
  int pointA, pointB, distance;
  int conn[SIZE][SIZE]; //array of connections
  memset(conn, 0, sizeof(int) * SIZE * SIZE); // set all values to 0
  fscanf(in_file, "%i %i %i", &pointA, &pointB, &distance); // scan values from the file
  while (pointA != -1) { // input pointA, pointB and distance into the graph
    conn[pointA][pointB] = distance;
    fscanf(in_file, "%i %i %i", &pointA, &pointB, &distance);
  }

  // input of disruptions
  int disruptions;
  char city1[20], city2[20];
  scanf("%i", &disruptions);
  for (int i = 0; i < disruptions; i++) {
    scanf("%s", city1);
    if (!strcmp(city1, "Den")) { // some cities start with 'Den_'
      scanf("%s", city1);
    }
    scanf("%s", city2);
    if (!strcmp(city2, "Den")) {
      scanf("%s", city2);
    }
    // cancel the connection between the cities
    conn[cityNumber(city1)][cityNumber(city2)] = 0;
    conn[cityNumber(city2)][cityNumber(city1)] = 0;
  }

  // input of destinations
  scanf("%s", city1);
  if (!strcmp(city1, "Den")) {
    scanf("%s", city1);
  }
  while (strcmp(city1, "!") != 0) {
    scanf("%s", city2);
    if (!strcmp(city2, "Den")) {
      scanf("%s", city2);
    }
    dijkstraSearchAStar(conn, cityNumber(city1), cityNumber(city2));
    scanf("%s", city1);
    if (!strcmp(city1, "Den")) {
      scanf("%s", city1);
    }
  }
  fclose(in_file);
  return 0;
}