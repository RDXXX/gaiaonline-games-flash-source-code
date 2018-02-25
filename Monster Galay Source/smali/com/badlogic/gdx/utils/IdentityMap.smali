.class public Lcom/badlogic/gdx/utils/IdentityMap;
.super Ljava/lang/Object;
.source "IdentityMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IdentityMap$Keys;,
        Lcom/badlogic/gdx/utils/IdentityMap$Values;,
        Lcom/badlogic/gdx/utils/IdentityMap$Entries;,
        Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IdentityMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

.field private hashShift:I

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values:Lcom/badlogic/gdx/utils/IdentityMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 61
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 62
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 66
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    const/high16 v1, 0x40000000    # 2.0f

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .line 71
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    .line 74
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    .line 77
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private containsKeyStash(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 386
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 387
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    .line 388
    :goto_1
    return v3

    .line 386
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getStash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 280
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v0, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v2, v0, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 281
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 282
    :goto_1
    return-object v3

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hash2(J)I
    .locals 4
    .param p1, "h"    # J

    .prologue
    .line 423
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const-wide/32 v0, -0x4b47d1c7

    mul-long/2addr p1, v0

    .line 424
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private hash3(J)I
    .locals 4
    .param p1, "h"    # J

    .prologue
    .line 428
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const-wide/32 v0, -0x312e3dbf

    mul-long/2addr p1, v0

    .line 429
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 10
    .param p3, "index1"    # I
    .param p5, "index2"    # I
    .param p7, "index3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;ITK;ITK;ITK;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TK;"
    .local p2, "insertValue":Ljava/lang/Object;, "TV;"
    .local p4, "key1":Ljava/lang/Object;, "TK;"
    .local p6, "key2":Ljava/lang/Object;, "TK;"
    .local p8, "key3":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 175
    .local v4, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v7, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 176
    .local v7, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 181
    .local v5, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 184
    .local v6, "pushIterations":I
    :goto_0
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 198
    move-object/from16 v0, p8

    .line 199
    .local v0, "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v1, v7, p7

    .line 200
    .local v1, "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object p1, v4, p7

    .line 201
    aput-object p2, v7, p7

    .line 206
    :goto_1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 207
    .local v2, "hashCode":I
    and-int p3, v2, v5

    .line 208
    aget-object p4, v4, p3

    .line 209
    if-nez p4, :cond_1

    .line 210
    aput-object v0, v4, p3

    .line 211
    aput-object v1, v7, p3

    .line 212
    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 241
    :cond_0
    :goto_2
    return-void

    .line 186
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    .end local v2    # "hashCode":I
    :pswitch_0
    move-object v0, p4

    .line 187
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v1, v7, p3

    .line 188
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object p1, v4, p3

    .line 189
    aput-object p2, v7, p3

    goto :goto_1

    .line 192
    .end local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    :pswitch_1
    move-object/from16 v0, p6

    .line 193
    .restart local v0    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v1, v7, p5

    .line 194
    .restart local v1    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object p1, v4, p5

    .line 195
    aput-object p2, v7, p5

    goto :goto_1

    .line 216
    .restart local v2    # "hashCode":I
    :cond_1
    int-to-long v8, v2

    invoke-direct {p0, v8, v9}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(J)I

    move-result p5

    .line 217
    aget-object p6, v4, p5

    .line 218
    if-nez p6, :cond_2

    .line 219
    aput-object v0, v4, p5

    .line 220
    aput-object v1, v7, p5

    .line 221
    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_2

    .line 225
    :cond_2
    int-to-long v8, v2

    invoke-direct {p0, v8, v9}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(J)I

    move-result p7

    .line 226
    aget-object p8, v4, p7

    .line 227
    if-nez p8, :cond_3

    .line 228
    aput-object v0, v4, p7

    .line 229
    aput-object v1, v7, p7

    .line 230
    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v9, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_2

    .line 234
    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_4

    .line 240
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->putStash(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 236
    :cond_4
    move-object p1, v0

    .line 237
    move-object p2, v1

    .line 238
    goto/16 :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    .line 143
    .local v9, "hashCode":I
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v3, v9, v0

    .line 144
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v0, v3

    .line 145
    .local v4, "key1":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_1

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 148
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    int-to-long v0, v9

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(J)I

    move-result v5

    .line 153
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v6, v0, v5

    .line 154
    .local v6, "key2":Ljava/lang/Object;, "TK;"
    if-nez v6, :cond_2

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0

    .line 161
    :cond_2
    int-to-long v0, v9

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(J)I

    move-result v7

    .line 162
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v8, v0, v7

    .line 163
    .local v8, "key3":Ljava/lang/Object;, "TK;"
    if-nez v8, :cond_3

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 166
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 170
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IdentityMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private putStash(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    if-ne v4, v5, :cond_0

    .line 246
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IdentityMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 252
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v3, v0, v4

    .local v3, "n":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 253
    aget-object v4, v2, v0

    if-ne v4, p1, :cond_1

    .line 254
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    .line 252
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v1, v4, v5

    .line 260
    .local v1, "index":I
    aput-object p1, v2, v1

    .line 261
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v4, v1

    .line 262
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 9
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v8, 0x0

    .line 399
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v2, v5, v6

    .line 401
    .local v2, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .line 402
    int-to-float v5, p1

    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    .line 403
    add-int/lit8 v5, p1, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1f

    iput v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    .line 405
    const/4 v5, 0x3

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    .line 406
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    const/16 v6, 0x20

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    div-int/lit8 v6, v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 408
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 409
    .local v3, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 411
    .local v4, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v5, p1

    new-array v5, v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iput-object v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 412
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v5, p1

    new-array v5, v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iput-object v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 414
    iput v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 415
    iput v8, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 417
    aget-object v1, v3, v0

    .line 418
    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    aget-object v5, v4, v0

    invoke-direct {p0, v1, v5}, Lcom/badlogic/gdx/utils/IdentityMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 343
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 344
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 345
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v4, v5

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 346
    aput-object v7, v2, v0

    .line 347
    aput-object v7, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 349
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iput v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 350
    iput v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 351
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 373
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v1, v0, v2

    .line 374
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(J)I

    move-result v1

    .line 376
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(J)I

    move-result v1

    .line 378
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    .line 381
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v4, 0x1

    .line 356
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 357
    .local v3, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_1

    .line 358
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 359
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v5, v6

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 360
    aget-object v5, v2, v0

    if-eqz v5, :cond_4

    aget-object v5, v3, v0

    if-nez v5, :cond_4

    .line 368
    .end local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_0
    :goto_1
    return v4

    .line 361
    .end local v0    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    .line 362
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 363
    aget-object v5, v3, v0

    if-eq v5, p1, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 365
    .end local v1    # "i":I
    :cond_2
    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v5, v6

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 366
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 368
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .restart local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    :cond_4
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 394
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int v0, v1, p1

    .line 395
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 396
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IdentityMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    return-object v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->reset()V

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 267
    .local v0, "hashCode":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v1, v0, v2

    .line 268
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(J)I

    move-result v1

    .line 270
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(J)I

    move-result v1

    .line 272
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->getStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 275
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IdentityMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    .line 486
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    return-object v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->reset()V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v10, 0x0

    .line 85
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    .line 89
    .local v9, "hashCode":I
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v3, v9, v0

    .line 90
    .local v3, "index1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v0, v3

    .line 91
    .local v4, "key1":Ljava/lang/Object;, "TK;"
    if-ne v4, p1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v10, v0, v3

    .line 93
    .local v10, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 136
    .end local v10    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_0
    return-object v10

    .line 97
    :cond_2
    int-to-long v0, v9

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(J)I

    move-result v5

    .line 98
    .local v5, "index2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v6, v0, v5

    .line 99
    .local v6, "key2":Ljava/lang/Object;, "TK;"
    if-ne v6, p1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v10, v0, v5

    .line 101
    .restart local v10    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    goto :goto_0

    .line 105
    .end local v10    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    int-to-long v0, v9

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(J)I

    move-result v7

    .line 106
    .local v7, "index3":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v8, v0, v7

    .line 107
    .local v8, "key3":Ljava/lang/Object;, "TK;"
    if-ne v8, p1, :cond_4

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v10, v0, v7

    .line 109
    .restart local v10    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    goto :goto_0

    .line 114
    .end local v10    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    if-nez v4, :cond_5

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 117
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0

    .line 121
    :cond_5
    if-nez v6, :cond_6

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 124
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0

    .line 128
    :cond_6
    if-nez v8, :cond_7

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 135
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IdentityMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 286
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 287
    .local v0, "hashCode":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v1, v0, v3

    .line 288
    .local v1, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_0

    .line 289
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 290
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 291
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 292
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 314
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v2

    .line 296
    :cond_0
    int-to-long v3, v0

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(J)I

    move-result v1

    .line 297
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_1

    .line 298
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 299
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 300
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 301
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    goto :goto_0

    .line 305
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    int-to-long v3, v0

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(J)I

    move-result v1

    .line 306
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_2

    .line 307
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 308
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 309
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 310
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    goto :goto_0

    .line 314
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->removeStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method removeStash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 319
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v0, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v2, v0, v4

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 320
    aget-object v4, v1, v0

    if-ne v4, p1, :cond_0

    .line 321
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 322
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->removeStashIndex(I)V

    .line 323
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 327
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v3

    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 332
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 333
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v0, v1, v2

    .line 334
    .local v0, "lastIndex":I
    if-ge p1, v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 337
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/16 v7, 0x3d

    .line 433
    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-nez v6, :cond_0

    const-string v6, "[]"

    .line 456
    :goto_0
    return-object v6

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 437
    .local v4, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 438
    .local v5, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .line 439
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_4

    .line 440
    aget-object v3, v4, v1

    .line 441
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 442
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 447
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 448
    aget-object v3, v4, v1

    .line 449
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 450
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 454
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 455
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v1    # "i":I
    :cond_3
    const/16 v6, 0x5d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public values()Lcom/badlogic/gdx/utils/IdentityMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;->reset()V

    goto :goto_0
.end method
