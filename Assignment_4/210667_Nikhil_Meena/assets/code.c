#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char buffer__0293_[] = "password";

void p_382899__(char buffer_91835[])
{
    buffer_91835[0] = buffer__0293_[0];
    for (int t398_ = 1; t398_ < strlen(buffer_91835); t398_++)
    {
        char t3329 = buffer_91835[t398_];
        if (t398_ & 1)
            t3329 = ((buffer_91835[t398_ + 1] ^ buffer_91835[t398_ - 1]) + 1 << t398_) % 26 + 'a';
        else
            t3329 = ((buffer_91835[t398_] - t398_)) % 26 + 'A';
        buffer_91835[t398_] = t3329;
    }
    buffer_91835[strlen(buffer__0293_)] = '\0';
}

char *p_914162120__(size_t sz_23532__)
{
    char *buffer72945_;
    int r39834_ = 16;
    int ch;
    size_t len = 0;
    buffer72945_ = realloc((void *)0, sizeof(*buffer72945_) * sz_23532__);
    if (!buffer72945_)
        return buffer72945_;
    while (-1 != (ch = getchar()) && ch != (r39834_ ^ 26))
    {
        buffer72945_[len++] = ch;
        if (len == sz_23532__)
        {
            buffer72945_ = realloc(buffer72945_, sizeof(*buffer72945_) * (sz_23532__ += r39834_));
            if (!buffer72945_)
                return buffer72945_;
        }
    }
    buffer72945_[len++] = 0;

    return realloc(buffer72945_, sizeof(*buffer72945_) * len);
}

unsigned main(int argc, char **argv)
{
    int n;
    printf("Crack with...");
    char *buffer19720_ = p_914162120__(10); //? why didn't I just take a large enough buffer ?
    char buffer19820_[strlen(buffer__0293_) + 1];
    strcpy(buffer19820_, buffer__0293_);
    p_382899__(buffer19820_);
    if (!strcmp(buffer19720_, buffer19820_))
    {
        p_382899__(buffer19820_);
        printf("You cracked this!\nFlag is: hackIT{%sis%s}\n", buffer__0293_, buffer19820_);
    }
    else
    {
        printf("Retry.\n");
    }
    return 0;
}