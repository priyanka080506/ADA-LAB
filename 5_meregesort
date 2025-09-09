#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int count = 0;
void swap(int a[], int i, int j)
{
    int temp = a[i];
    a[i] = a[j];
    a[j] = temp;
}

int partition(int a[], int l, int r)
{
    int p, i, j;
    p = a[l];
    i = l;
    j = r + 1;
    do
    {
        do
        {
            count++;
            i++;
        } while (a[i] < p);

        do
        {
            count++;
            j--;
        } while (a[j] > p);
        swap(a, i, j);

    } while (i <= j);
    swap(a, i, j);
    swap(a, l, j);
    return j;
}

void quick_sort(int a[], int l, int r)
{
    if (l < r)
    {
        int s = partition(a, l, r);
        quick_sort(a, l, s - 1);
        quick_sort(a, s + 1, r);
    }
}

void tester()
{
    int n;
    printf("Enter the number of elements\n");
    scanf("%d", &n);
    int arr[n];
    printf("Enter the elemnts of an array\n");
    for (int i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }
    quick_sort(arr, 0, n - 1);
    printf("The sorted order is \n");
    for (int i = 0; i < n; i++)
    {
        printf("%d\t", arr[i]);
    }
}

void plotter(){
    int *arr;
    FILE *fp1;
    FILE *fp2;
    int count1=0,count2=0,count3=0;
    srand(time(NULL));
    fp1=fopen("Qui_number.txt","w");
    fp2=fopen("Qui_count.txt","w");
    for(int k=10;k<=100;k+=10){
        arr=(int *)malloc(k*sizeof(int));

        // Best case
        count=0;
        for(int i=0;i<k;i++){
            arr[i]=2;
            fprintf(fp1,"%d ",arr[i]);
        }
        fprintf(fp1,"\n");
        quick_sort(arr,0,k-1);
        count1=count;

        //Average case 
        count=0;
        for(int i=0;i<k;i++){
            arr[i]=rand()%100;
            fprintf(fp1,"%d ",arr[i]);
        }
        fprintf(fp1,"\n");
        quick_sort(arr,0,k-1);
        count2=count;

        //Worst case 
        count=0;
        arr[0]=rand()%100;
        fprintf(fp1,"%d ",arr[0]);
        for(int i=1;i<k;i++){
            arr[i]=arr[i-1]+2;
            fprintf(fp1,"%d ",arr[i]);
        }
        fprintf(fp1,"\n");
        quick_sort(arr,0,k-1);
        count3=count;
        fprintf(fp2,"%d %d %d %d\n",k,count1,count2,count3);
    }
    fclose(fp1);  
    fclose(fp2);
}
int main()
{
    int ch;
    while (1)
    {
        printf("\nEnter your choice:\n1. Tester\n2. Plotter\n");
        scanf("%d", &ch);
        switch (ch)
        {
        case 1:
            tester();
            break;
        case 2:
            plotter();
            break;
        default:
            printf("Invalid choice!\n");
        }
    }
    return 0;
}
