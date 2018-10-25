#include <stdio.h>

__global__ void helloFromGPU(void)
{
	printf("Hello World from GPU\n");
}

int main(void)
{
	printf("Hello world from CPU \n");

	helloFromGPU<<<1, 10>>>();
	cudaDeviceReset();
	return 0;
}




