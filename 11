#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int count = 0;
void heapify(int arr[], int n)
{
    
    int parent, child, p;
    int heap = 0;
    for (int i = n / 2; i >= 1; i--)
    {
        parent = i;
        p = arr[parent];
        heap = 0;
        while (!heap && (2 * parent) <= n)
        {
            child = 2 * parent;
            if (child  < n)
            {
                count++;
                if (arr[child + 1] > arr[child])
                {
                    child = child + 1;
                }
            }
            count++;
            if (p >= arr[child])
            {
                heap = 1;
            }
            else
            {
                arr[parent] = arr[child];
                parent = child;
            }
        }
        arr[parent] = p;
    }
}

void heap_del(int h[], int n)
{

    heapify(h, n);

    for (int i = n; i >= 1; i--)
    {
        int temp = h[1];
        h[1] = h[i];
        h[i] = temp;
        heapify(h, i - 1);
    }
}
void tester()
{
    int n;
    printf("Enter the number of elements\n");
    scanf("%d", &n);
    int arr[n];
    printf("Enter the elements of the array\n");
    for (int i = 1; i <= n; i++)
    {
        scanf("%d", &arr[i]);
    }

    heap_del(arr, n);
    printf("The sorted order is\n");
    for (int i = 1; i <= n; i++)
    {
        printf("%d\t", arr[i]);
    }
}

void plotter(){
    int *arr;
    FILE *fp1;
    FILE *fp2;
    int count1=0,count2=0,count3=0;
    fp1=fopen("heap_number.txt","w");
    fp2=fopen("heap_count.txt","w");

    for(int k=10;k<=100;k+=10){
        arr=(int *)malloc((k+1)*sizeof(int));

        //Best case
        count=0;
        arr[1]=rand()%1000;
        fprintf(fp1,"%d ",arr[0]);
        for(int i=2;i<=k;i++){
            arr[i]=arr[i-1]+2;
            fprintf(fp1,"%d ",arr[i]);
        }
        fprintf(fp1,"\n");
        heap_del(arr,k);
        count1=count;


         //Avearge case 
         count=0;
         for(int i=1;i<=k;i++){
            arr[i]=rand()%100;
            fprintf(fp1,"%d ",arr[i]);
        }
        fprintf(fp1,"\n");
        heap_del(arr,k);
        count2=count;

        //worst case 
        count=0;
         
        arr[1]=rand()%100;
        fprintf(fp1,"%d ",arr[0]);
        for(int i=2;i<=k;i++){
            arr[i]=arr[i-1]+2;
            fprintf(fp1,"%d ",arr[i]);
        }
        fprintf(fp1,"\n");
        heap_del(arr,k);
        count3=count;

        fprintf(fp2,"%d %d %d %d\n",k,count1,count2,count3);



    }
}

int main()
{
    int ch;
    printf("Enter your choice:\n1. Tester\n 2. Plotter\n");
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
        printf("Invalid choice!!\n");
    }
    return 0;
}
