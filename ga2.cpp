#include <iostream>
#include <fstream>
#include <string>
#include "ArgumentManager.h"

using namespace std;

void findWaitingTime(int arraySize, int burst_arr[], int wait_arr[], int quantum)
{

	int *rem_bt = nullptr;
	rem_bt = new int[arraySize];

	for (int i = 0; i < arraySize; i++)
	{
		rem_bt[i] = burst_arr[i];
	}
	
	int t = 0;
	while (1)
	{
		bool done = true;
		for (int i = 0; i < arraySize; i++)
		{
			if (rem_bt[i] > 0)
			{
				done = false;
				if (rem_bt[i] > quantum)
				{
					t += quantum;
					rem_bt[i] -= quantum;
				}
				else
				{
					t = t + rem_bt[i];
					wait_arr[i] = t - burst_arr[i];
					rem_bt[i] = 0;
				}
			}
		}
		if (done == true)
		{
			break;
		}
	}
}

int main(int argc, char* argv[])
{
	ArgumentManager am(argc, argv);
	string input = am.get("input");
	string output = am.get("output");

	fstream ifs(input);
	fstream ofs(output);
	int arrSize = 0; //this will be #of jobs
	int *ptr = &arrSize;
	int burst_arr[100]; //array of burst times
	const int quantum = 2;
	int x;
	
	while (ifs >> x)
	{
		burst_arr[arrSize] = x;
		arrSize++;
	}
	
	int *wait_arr = nullptr;
	wait_arr = new int[arrSize];

	if (arrSize == 1) 
	{
		wait_arr[0] = 0;
		for (int i = 0; i < arrSize; i++)
		{

			ofs << "Job " << (i + 1) << ", burst time: " << burst_arr[i] << ", waiting time: " << wait_arr[i] << endl;
		}
	}
	else
	{
		findWaitingTime(*ptr, burst_arr, wait_arr, quantum);
		for (int i = 0; i < arrSize; i++)
		{
			ofs << "Job " << (i + 1) << ", burst time: " << burst_arr[i] << ", waiting time: " << wait_arr[i] << endl;
		}
	}

	//system("pause");
	return 0;
}