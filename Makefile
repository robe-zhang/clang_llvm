target1:
	clang -O3 -emit-llvm main1.c -c -o main1.bc
	clang -O3 -emit-llvm main2.c -c -o main2.bc
	clang -O3 -emit-llvm main.c -c -o main.bc
	llvm-link main1.bc main2.bc main.bc -o main_temp.bc
	clang main_temp.bc -o main
	./main

target2:
	gcc -c main1.c -o main1
	gcc -c main2.c -o main2
	gcc -c main.c -o main
	gcc main1 main2 main -o main.temp
	chmod a+w main.temp
	./main.temp

clean:
	rm main1.bc main2.bc main.bc main_temp.bc main
	rm main1 main2 main main.temp

