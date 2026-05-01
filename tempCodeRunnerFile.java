import java.util.*;
public class MinStackk
{  static class Pair{
    int value;
    int min;

    Pair(int value,int min)
    {
        this.value=value;
        this.min=min;
    }
    Stack<Pair> st=new Stack<>();
    public void push(int value)
    {
        if(st.isEmpty())
        {
            st.push(new pair(value,value));
        }
        else
        {
            st.push(value,Math.min(value,st.peek().min));
        }
    }
        public void pop()
        {
            st.pop();
        }
        public int top()
        {
            return st.peek().value;
        }
        public int getMin()
        {
            return st.peek().min;
        }
    }
}
    public static void main(String[] args)
    {
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        MinStackk ms=new MinStackk();
        for(int i=0;i<n;i++)
        {
            int choice=sc.nextInt();

            if(choice==1)
            {
                int val=sc.nextInt();
                ms.push(val);
            }
            else if(choice==2)
            {
                ms.pop();
            }
            else if(choice==3)
            {
                System.out.print(ms.top()+" ");
            }
            else if(choice==4)
            {
                System.out.print(ms.getMin()+" ");
            }
        }
    }
}