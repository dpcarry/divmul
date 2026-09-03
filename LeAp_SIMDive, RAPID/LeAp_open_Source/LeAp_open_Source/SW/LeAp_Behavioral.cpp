//////////////////////////////////////////////////////////////////////////////////
//
// Create Date: October 2020
// Design Name: LeAp Multiplier
// Description: This general template of LeAp Multiplier can be modified for different bit-width
// Revision: 1
// Additional Comments:
//    For collaboration and queries regarding furthur optimizations please email the corresponding author: Zahra Ebrahimi (zahra.ebrahimi_mamaghani@tu-dresden.de)
//    In case of usage please cite:
//    Zahra Ebrahimi, Salim Ullah, and Akash Kumar. "LeAp: Leading-one Detection-based Softcore Approximate Multipliers with Tunable Accuracy." 2020 25th Asia and South Pacific Design Automation Conference (ASP-DAC).
//
//////////////////////////////////////////////////////////////////////////////////


#include <iostream>
using namespace std;

long long to_decimal(bool out_binary[], int size)
{
    long long out_decimal = 0;
    for (int i=size-1; i>=0; i--)
    out_decimal = out_decimal * 2 + out_binary[i];
    return out_decimal;
}


bool* bitwise_add(bool a[], bool b[], int size, bool carry)
{
    bool* sum;
    int i;
    sum = new bool[size+1];
    for (i=0; i<size+1; i++)
      sum[i]=0;
    for (i=0; i<size; i++)
      {
        sum [i] = (a[i] + b[i] + carry) % 2;
        carry = (a[i] + b[i] + carry) / 2;
      }
      sum[size] = carry;
    return sum;
}



bool* set_error_correction_2 (bool a[], bool b[], int size)
{
    bool* error_correction;
    int i;
    error_correction = new bool [size]; for (i=0; i<size; i++) error_correction[i]=0;

    if ( ((to_decimal (a, size-1) >= 6144) && (to_decimal (a, size-1) <=26624)) &&  ((to_decimal (b, size-1) >= 6144) && (to_decimal (b, size-1) <=26624)) ) // c1
          { error_correction [11] = true; error_correction [10] = true; }
        else
        { error_correction [9] = true; error_correction [8] = true; error_correction [7] = true; } //c2
      return error_correction;
}


bool* set_error_correction_3 (bool a[], bool b[], int size)
{
    bool* error_correction;
    int i;
    error_correction = new bool [size]; for (i=0; i<size; i++) error_correction[i]=0;

    if ( (((to_decimal (a, size-1) >= 6144) && (to_decimal (a, size-1) <=18432)) &&  ((to_decimal (b, size-1) >= 14336) && (to_decimal (b, size-1) <=26624)))
             || (((to_decimal (b, size-1) >= 6144) && (to_decimal (b, size-1) <=18432)) &&  ((to_decimal (a, size-1) >= 14336) && (to_decimal (a, size-1) <=26624))) ) // c1
        { error_correction [11] = true; error_correction [10] = true; error_correction [9] = true; }

    else if ((to_decimal (a, size-1) < 4096) ||  (to_decimal (b, size-1) < 4096) || (to_decimal (a, size-1) > 28672) ||  (to_decimal (b, size-1) > 28672))
        { error_correction [8] = true; error_correction [7] = true; error_correction [6] = true; error_correction [5] = true; error_correction [4] = true; error_correction [3] = true; } // c3

    else { error_correction [10] = true; error_correction [9] = true; } //c2

    return error_correction;
}


bool* set_error_correction_5 (bool a[], bool b[], int size)
{
    bool* error_correction;
    int i;
    error_correction = new bool [size]; for (i=0; i<size; i++) error_correction[i]=false;


    if ((to_decimal (a, size-1) <= 2048) || (to_decimal (a, size-1) >= 30720)    ||     (to_decimal (b, size-1) <= 2048) || (to_decimal (b, size-1) >= 30720)) //c5
       error_correction [7] = true;

    else if ((to_decimal (a, size-1) < 12288) && (to_decimal (b, size-1) <12288)    ||     (to_decimal (a, size-1) >= 20480) && (to_decimal (b, size-1) >= 20480)) //c4
               error_correction [10] = true;

    else if ((to_decimal (a, size-1) >= 12288) && (to_decimal (a, size-1) < 20480)    &&     (to_decimal (b, size-1) >= 12288) && (to_decimal (b, size-1) < 20480)) // c1
         error_correction [12] = true;

    else if ((to_decimal (a, size-1) >= 6144) && (to_decimal (a, size-1) < 26624)    &&     (to_decimal (b, size-1) >= 6144) && (to_decimal (b, size-1) < 26624))//c2
         { error_correction [11] = true; error_correction [10] = true; } //c2

    else error_correction [11] = true; //c3

      return error_correction;
}


class number{
   public: // made public for ease of modification
    bool* binary_representation;
    int integer_part=0;
    bool* frac_part;
    void set_binary_representation (int , int);
    void set_integer_frac_parts (int);
};

void number::set_binary_representation (int a, int size){
  binary_representation = new bool[size];
  int i;
  for(i=0; i<size; i++)
  binary_representation [i] = 0;
  for(i=0; a>0; i++)
  {
    binary_representation[i] = a % 2;
    a = a/2;
  }
}


void number::set_integer_frac_parts (int size){
  frac_part = new bool[(size-1)];
  int i, j;
  for(i=0; i<(size-1); i++)
  frac_part [i] = 0;

   for (i=(size-1); i>=0; i--)
   {
     if (binary_representation[i]==1)
     {
       integer_part=i;
       for (j=0; j<i; j++)
         frac_part [size-2-j]= binary_representation[i-1-j];
       break;
     }
   }
}



int main()
{
    int m, n;
    unsigned long long result = 0;
          cout << "Enter the Multiplication Operands:" <<endl;
          cin >> m >> n;
          if (m==0 || n==0)
          {
            result = 0;
            return 0;
          }


          int i, j, sum_integer, size=16;

          bool* out_binary;  out_binary = new bool[2*size]; for (i=0; i<2*size; i++) out_binary[i]=0;
          bool* error_correction; error_correction= new bool[size]; for (i=0; i<size; i++) error_correction[i]=0;
          bool* sum_frac_before; sum_frac_before= new bool[size]; for (i=0; i<size; i++) sum_frac_before[i]=0;
          bool* sum_frac_after; sum_frac_after= new bool[size+1]; for (i=0; i<size+1; i++) sum_frac_after[i]=0;

          number num_a;
          number num_b;

          num_a.set_binary_representation(m, size);
          num_b.set_binary_representation(n, size);
          num_a.set_integer_frac_parts (size);
          num_b.set_integer_frac_parts (size);


          sum_frac_before = bitwise_add (num_a.frac_part, num_b.frac_part, size, 0);

          error_correction = set_error_correction_5 (num_a.frac_part, num_b.frac_part, size);  // Note: in this version, error-coefficients of LeAp multiplier are rounded for MSBs of (12 downto 7)

          sum_frac_after = bitwise_add (sum_frac_before, error_correction, (size+1), 0);

          sum_integer = num_a.integer_part + num_b.integer_part + sum_frac_after [size-1];

          if (sum_integer <=size-1)
          {
            for(i=0; i<sum_integer; i++)
            out_binary[sum_integer-i-1] = sum_frac_after[size-2-i];
            out_binary[sum_integer] = 1;
          }
          else
          {

            for(i=15; i>=0; i--)
            out_binary[i] = 0;

            for(i=0; i<size-1; i++)
            out_binary[sum_integer-i-1] = sum_frac_after[size-2-i];

            out_binary[sum_integer] = 1;
          }
           result = to_decimal (out_binary, (2*size));
           cout << "LeAp Approximate Output:" << result << endl;
    return 0;
}
