# Change the objectFile and dataFile variable to their respective files during execution
# Change DCACHE_BLOCK and DBLOCK_SIZE to change cache blocks and cache size respectively

objectFile = test2
dataFile = test1
 
caching.o: caching.cpp
	clang++ caching.cpp -o caching -DCACHE_BLOCK=2 -DBLOCK_SIZE=4
	./caching $(objectFile).o $(dataFile).dat
	hexdump -C hd

clean:
	rm *.o

