#include <stdio.h>
#include <stdlib.h>

int n, opcount, isCycle = 0, components = 0;

void dfs(int mat[100][100], int visited[100], int src, int parent,int connect[100])
{
    visited[src] = 1;
    connect[src]=1;

    for (int i = 0; i < n; i++)
    {
        opcount++;
        if (mat[src][i])
        {
            if (!visited[i])
            {
                dfs(mat, visited, i, src,connect);
            }
            else if (i != parent)
            {
                isCycle = 1;
            }
        }
    }
}

void checkGraph(int mat[100][100], int print)
{
    int visited[100] = {0};
    isCycle = 0;
    components = 0;

    for (int i = 0; i < n; i++)
    {
        if (!visited[i])
        {
            components++;
            int connect[100];
            for(int i=0;i<n;i++){
                connect[i]=0;
            }
            if (print)
                printf("\n Component %d :", components);
            dfs(mat, visited, i, -1,connect);
            if (print)
                for (int j = 0; j < n; j++)
                {
                    if (connect[j])
                    {
                        printf("%d ", j);
                    }
                }
        }
    }
}
void tester()
{
    int mat[100][100];
    printf("Enter the number of vertices\n");
    scanf("%d", &n);
    printf("Enter the adjacency matrix\n");
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            scanf("%d", &mat[i][j]);
        }
    }
    checkGraph(mat, 1);
    printf("\n\n The number of connected components : %d\n", components);
    if (components == 1)
    {
        printf("The graph is CONNECTED\n");
    }
    else
    {
        printf("The graph is DISCONNECTED\n");
    }
    if (isCycle == 1)
    {
        printf("The graph is CYCLIC\n");
    }
    else
    {
        printf("The graph is ACYCLIC\n");
    }
}


void plotter(){
    int count=0;
    FILE *fp=fopen("dfs.txt","w");
    int mat[100][100];
    for(int k=1;k<=10;k++){
        n=k;
        for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                if(i!=j){
                    mat[i][j]=1;
                }else{
                    mat[i][j]=0;
                }
            }
        }
        opcount=0;
        checkGraph(mat,0);
        count=opcount;
        fprintf(fp,"%d\t%d\n",k,count);
    }

}
void main()
{
    int choice;
    printf("Enter\n1. Tester (manual input)\n2. Plotter (analysis)\nChoice: ");
    scanf("%d", &choice);

    switch (choice)
    {
    case 1:
        tester();
        break;
    case 2:
        plotter();
        break;
    default:
        printf("Invalid choice.\n");
    }

    return;
}
