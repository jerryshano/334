#include <stdlib.h>
#include "lru_cache.h"

//
// Your implementations of cache_new, cache_lookup, cache_insert,
// and cache_clear go in this file.  You must use a least-recently-used
// cache replacement policy.
//

// return a new cache object
CACHE *cache_new(int size) {
  // your code here
CACHE *cache = malloc(sizeof(CACHE));
cache->size = size;
cache->addr = malloc(size * sizeof(int));
cache->data = malloc(size * sizeof(float));

// initialize cache
int i;
for (i = 0; i < cache->size; i++) {
    cache->addr[i] = -1;
    cache->data[i] = 0.0;
}

return cache;
}

// return data element i if it is cached; else return -1
float cache_lookup(CACHE *cache, int i) {
  // your code here
int j;
   int k;
   float temp;
for (j = 0; j < cache->size; j++) {
     if (cache->addr[j] == i) {
       // yes, cache hit
       temp = cache->data[j];
       for(k = j;k > 0;k--){
         cache->addr[k] = cache->addr[k-1];
         cache->data[k] = cache->data[k-1];
    }
    cache->addr[0] = i;
    cache->data[0] = temp;
       return temp;
     }
}
// cache miss
return -1.0;
}

// record in the cache that the ith data element has value x
// LRU replacement policy is used
void cache_insert(CACHE *cache, int i, float x) {
  // your code here
int j;
int k;
for(j = 0;j<cache->size;j++){
   if(cache->addr[j] == -1){
   for(k = j;k>0;k--){
     cache->addr[k] = cache->addr[k-1];
         cache->data[k] = cache->data[k-1];
  }
   cache->addr[0] = i;
   cache->data[0] = x;
   return;
   }
}

for(j = cache->size-1;j > 0;j--){
  cache->addr[j] = cache->addr[j-1];
   cache->data[j] = cache->data[j-1];
}

cache->addr[0] = i;
cache->data[0] = x;
}

// clear the ith element of the cache
void cache_clear(CACHE *cache, int i) {
  // your code here
int j;
   int k;
for (j = 0; j < cache->size; j++) {
     if (cache->addr[j] == i) {
        for(k = j;k<cache->size-1;k++){
        if(cache->addr[k+1] == -1){
          break;
   }
        cache->addr[k] = cache->addr[k+1];
        cache->data[k] = cache->data[k+1];
  }
  cache->addr[k] = -1;
        break;
     }
}
}

