
#include <string.h>
#include <stdio.h>

void my_memcpy(void *dst, void *src, size_t n);

int
main(int argc, char *argv[])
{

typedef char FOO[12] ;
typedef char BAR[15] ;

FOO src;
BAR dst;

    memset(src,'G',sizeof(src)-2);
    memset(src+2,'A',sizeof(src)-2);
    memset(src+4,'B',sizeof(src)-6);
    my_memcpy(src+6,"CC",2);
    my_memcpy(src+8,"DD",2);
    my_memcpy(src+10,"EE",2);
    memset(dst,'F',sizeof(dst));
    
    printf("Src=%p %*s\n",src,sizeof(FOO),src);
    printf("Dst=%p %*s\n",dst,sizeof(BAR),dst);
    
    printf("Src=%p %*s\n",src,sizeof(FOO),src);
    my_memcpy(dst,src+2,sizeof(dst)-5);
    my_memcpy(dst+13,src,2);

    printf("Dst=%p %*s\n",dst,sizeof(BAR),dst);

    return 0;
}

void
my_memcpy(void *dest, void *source, size_t count)
{
#ifdef MYVER
    char *dst = dest+count;
    char *src = source+count;
    ssize_t n = count;
    n = -n;
    while(n++ > 0 )
        *(dst+n) = *(src+n) ;
#else
    memcpy(dest,source,n);
#endif
}
