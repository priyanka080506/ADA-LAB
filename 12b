#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include<limits.h>

int n;
int opcount = 0;
int dist[100][100];

void floyds(int adj[n][n], int n) {
    opcount = 0;
    for(int i=0; i<n; i++) {
        for(int j=0; j<n; j++) {
            if(adj[i][j] == -1)
                dist[i][j] = INT_MAX;
            else
                dist[i][j] = adj[i][j];
        }
    }

    for(int k=0; k<n; k++) {
        for(int i=0; i<n; i++) {
            for(int j=0; j<n; j++) {
                opcount++;
                 if(dist[i][k] != INT_MAX && dist[k][j] != INT_MAX &&
                   dist[i][j] > dist[i][k] + dist[k][j]) {
                    dist[i][j] = dist[i][k] + dist[k][j];
                }
            }
        }

        printf("\nMatrix after including node %d as intermediate:\n", k);
        for(int i=0; i<n; i++) {
            for(int j=0; j<n; j++) {
                if(dist[i][j] == INT_MAX)
                    printf("INF\t");
                else
                    printf("%d\t", dist[i][j]);
            }
            printf("\n");
        }
    }
}

void tester() {
    int adj[100][100];
    printf("Enter the number of nodes: ");
    scanf("%d", &n);
    printf("Enter the adjacency matrix (-1 for no edge):\n");
    for(int i=0; i<n; i++) {
        for(int j=0; j<n; j++) {
            scanf("%d", &adj[i][j]);
        }
    }
    floyds(adj, n);
}

void plotter(){
int adj[100][100];
    FILE *fp=fopen("Floyds.txt","w");
    srand(time(NULL));
    for(int k=1;k<=10;k++){
         n=k;
         for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
           
            if(i!=j){
                adj[i][j]=rand()%10;
            }else{
                adj[i][j]=0;
            }

        }
    }
    floyds(adj,k);
    fprintf(fp,"%d %d\n",k,opcount);

    }
   
}

int main() {
    int ch;
    printf("Enter your choice:\n1. Tester\n 2. Plotter\n");
    scanf("%d", &ch);
    switch(ch) {
        case 1:
            tester();
            break;

            case 2:
            plotter();
            break;
        default:
            printf("Invalid choice!!\n");
    }
    return 0;
}
