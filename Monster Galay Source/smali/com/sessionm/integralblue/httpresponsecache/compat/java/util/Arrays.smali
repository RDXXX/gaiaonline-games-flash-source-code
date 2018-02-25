.class public Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/Arrays;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOffsetAndCount(III)V
    .locals 1

    .prologue
    .line 36
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_1

    .line 37
    :cond_0
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/ArrayIndexOutOfBoundsException;-><init>(III)V

    throw v0

    .line 40
    :cond_1
    return-void
.end method

.method public static copyOfRange([BII)[B
    .locals 3

    .prologue
    .line 88
    if-le p1, p2, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 91
    :cond_0
    array-length v0, p0

    .line 92
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 95
    :cond_2
    sub-int v1, p2, p1

    .line 96
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 97
    new-array v1, v1, [B

    .line 98
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v1
.end method

.method public static copyOfRange([CII)[C
    .locals 3

    .prologue
    .line 118
    if-le p1, p2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 121
    :cond_0
    array-length v0, p0

    .line 122
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 125
    :cond_2
    sub-int v1, p2, p1

    .line 126
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 127
    new-array v1, v1, [C

    .line 128
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    return-object v1
.end method

.method public static copyOfRange([DII)[D
    .locals 3

    .prologue
    .line 148
    if-le p1, p2, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 151
    :cond_0
    array-length v0, p0

    .line 152
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 155
    :cond_2
    sub-int v1, p2, p1

    .line 156
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 157
    new-array v1, v1, [D

    .line 158
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    return-object v1
.end method

.method public static copyOfRange([FII)[F
    .locals 3

    .prologue
    .line 178
    if-le p1, p2, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :cond_0
    array-length v0, p0

    .line 182
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 185
    :cond_2
    sub-int v1, p2, p1

    .line 186
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 187
    new-array v1, v1, [F

    .line 188
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    return-object v1
.end method

.method public static copyOfRange([III)[I
    .locals 3

    .prologue
    .line 208
    if-le p1, p2, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 211
    :cond_0
    array-length v0, p0

    .line 212
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 215
    :cond_2
    sub-int v1, p2, p1

    .line 216
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 217
    new-array v1, v1, [I

    .line 218
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    return-object v1
.end method

.method public static copyOfRange([JII)[J
    .locals 3

    .prologue
    .line 238
    if-le p1, p2, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 241
    :cond_0
    array-length v0, p0

    .line 242
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 245
    :cond_2
    sub-int v1, p2, p1

    .line 246
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 247
    new-array v1, v1, [J

    .line 248
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    return-object v1
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 299
    array-length v0, p0

    .line 300
    if-le p1, p2, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 303
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 306
    :cond_2
    sub-int v1, p2, p1

    .line 307
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 309
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 331
    if-le p1, p2, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 334
    :cond_0
    array-length v0, p0

    .line 335
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 338
    :cond_2
    sub-int v1, p2, p1

    .line 339
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 340
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 341
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    return-object v0
.end method

.method public static copyOfRange([SII)[S
    .locals 3

    .prologue
    .line 268
    if-le p1, p2, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 271
    :cond_0
    array-length v0, p0

    .line 272
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 275
    :cond_2
    sub-int v1, p2, p1

    .line 276
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 277
    new-array v1, v1, [S

    .line 278
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    return-object v1
.end method

.method public static copyOfRange([ZII)[Z
    .locals 3

    .prologue
    .line 58
    if-le p1, p2, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_0
    array-length v0, p0

    .line 62
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 65
    :cond_2
    sub-int v1, p2, p1

    .line 66
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 67
    new-array v1, v1, [Z

    .line 68
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    return-object v1
.end method
