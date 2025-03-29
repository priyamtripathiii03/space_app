
import 'dart:io';

void main()
{
  double x=0;
   var num=x;
        double y=0,z=0;
     if(x>=0)
     {
        while(x>0)
        {
            y=x%10;
            z = (z * 10) + y;
            x/=10;
           
        }

        if(num==z)
        {
            print('yes');
        }
        else{
            print('no');
        }
     }
     else{
        print("no");
     }
       
}