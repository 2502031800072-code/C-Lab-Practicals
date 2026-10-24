AIM: Implement a stack using an array with operations PUSH, POP, PEEP, CHANGE and DISPLAY
#include <stdio.h>
#define MAX 5

int stack[MAX];
int top = -1;

// PUSH operation
void push()
{
    int value;

    if(top == MAX - 1)
    {
        printf("Stack Overflow!\n");
    }
    else
    {
        printf("Enter value: ");
        scanf("%d", &value);

        top++;
        stack[top] = value;

        printf("Element pushed successfully.\n");
    }
}

// POP operation
void pop()
{
    if(top == -1)
    {
        printf("Stack Underflow!\n");
    }
    else
    {
        printf("Deleted element: %d\n", stack[top]);
        top--;
    }
}

// PEEP operation
void peep()
{
    int i;

    printf("Enter position from TOP: ");
    scanf("%d", &i);

    if(i < 1 || i > top + 1)
    {
        printf("Invalid position!\n");
    }
    else
    {
        printf("Element: %d\n", stack[top - i + 1]);
    }
}

// CHANGE operation
void change()
{
    int i, value;

    printf("Enter position from TOP: ");
    scanf("%d", &i);

    if(i < 1 || i > top + 1)
    {
        printf("Invalid position!\n");
    }
    else
    {
        printf("Enter new value: ");
        scanf("%d", &value);

        stack[top - i + 1] = value;
        printf("Element changed successfully.\n");
    }
}

// DISPLAY operation
void display()
{
    int i;

    if(top == -1)
    {
        printf("Stack is empty.\n");
    }
    else
    {
        printf("Stack elements (TOP to BOTTOM):\n");

        for(i = top; i >= 0; i--)
        {
            printf("%d\n", stack[i]);
        }
    }
}

int main()
{
    int choice;

    do
    {
        printf("\n--- STACK MENU ---\n");
        printf("1. PUSH\n");
        printf("2. POP\n");
        printf("3. PEEP\n");
        printf("4. CHANGE\n");
        printf("5. DISPLAY\n");
        printf("6. EXIT\n");

        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch(choice)
        {
            case 1:
                push();
                break;

            case 2:
                pop();
                break;

            case 3:
                peep();
                break;

            case 4:
                change();
                break;

            case 5:
                display();
                break;

            case 6:
                printf("Program terminated.\n");
                break;

            default:
                printf("Invalid choice!\n");
        }

    } while(choice != 6);

    return 0;
}
output

--- STACK MENU ---
1. PUSH
2. POP
3. PEEP
4. CHANGE
5. DISPLAY
6. EXIT
Enter your choice: 1
Enter value: 10
Element pushed successfully.

Enter your choice: 1
Enter value: 20
Element pushed successfully.

Enter your choice: 5
Stack elements (TOP to BOTTOM):
20
10

Enter your choice: 3
Enter position from TOP: 2
Element: 10

Enter your choice: 4
Enter position from TOP: 1
Enter new value: 25
Element changed successfully.

Enter your choice: 2
Deleted element: 25

Enter your choice: 6
Program terminated.
