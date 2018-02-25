.class Lcom/badlogic/gdx/utils/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    const/16 v1, 0x28

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 90
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 91
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    .line 92
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    .line 93
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v3, 0x7

    iput v3, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 81
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 145
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 146
    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 149
    array-length v0, p1

    .line 150
    .local v0, "len":I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_0

    ushr-int/lit8 v3, v0, 0x1

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 151
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 160
    const/16 v3, 0x78

    if-ge v0, v3, :cond_1

    const/4 v2, 0x5

    .line 161
    .local v2, "stackLen":I
    :goto_1
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    .line 162
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    .line 163
    return-void

    .line 150
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v2    # "stackLen":I
    :cond_0
    const/16 v3, 0x100

    goto :goto_0

    .line 160
    .restart local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1
    const/16 v3, 0x606

    if-ge v0, v3, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    :cond_2
    const v3, 0x1d16f

    if-ge v0, v3, :cond_3

    const/16 v2, 0x13

    goto :goto_1

    :cond_3
    const/16 v2, 0x28

    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 7
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-ne p3, p1, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 236
    :cond_0
    :goto_0
    if-ge p3, p2, :cond_3

    .line 237
    aget-object v3, p0, p3

    .line 240
    .local v3, "pivot":Ljava/lang/Object;, "TT;"
    move v0, p1

    .line 241
    .local v0, "left":I
    move v4, p3

    .line 246
    .local v4, "right":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 247
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 248
    .local v1, "mid":I
    aget-object v5, p0, v1

    invoke-interface {p4, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 249
    move v4, v1

    goto :goto_1

    .line 251
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 260
    .end local v1    # "mid":I
    :cond_2
    sub-int v2, p3, v0

    .line 262
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    .line 269
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    :goto_2
    aput-object v3, p0, v0

    .line 236
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 264
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    .line 266
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_2

    .line 273
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Object;, "TT;"
    .end local v4    # "right":I
    :cond_3
    return-void

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 4
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    add-int/lit8 v0, p1, 0x1

    .line 297
    .local v0, "runHi":I
    if-ne v0, p2, :cond_0

    const/4 v2, 0x1

    .line 309
    :goto_0
    return v2

    .line 300
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    aget-object v3, p0, p1

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    move v0, v1

    .line 301
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/TimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 309
    :cond_2
    sub-int v2, v0, p1

    goto :goto_0

    .line 305
    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_3
    move v0, v1

    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_2
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, p1, :cond_0

    .line 795
    move v1, p1

    .line 796
    .local v1, "newSize":I
    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v2

    .line 797
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 798
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 799
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 800
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 801
    add-int/lit8 v1, v1, 0x1

    .line 803
    if-gez v1, :cond_1

    .line 804
    move v1, p1

    .line 808
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 809
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 811
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "newSize":I
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 806
    .restart local v1    # "newSize":I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 456
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    .line 457
    .local v3, "ofs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    .line 459
    sub-int v2, p3, p4

    .line 460
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    .line 461
    move v0, v3

    .line 462
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 463
    if-gtz v3, :cond_0

    .line 464
    move v3, v2

    goto :goto_0

    .line 466
    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    .line 469
    :cond_2
    add-int/2addr v0, p4

    .line 470
    add-int/2addr v3, p4

    .line 493
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 494
    :goto_2
    if-ge v0, v3, :cond_8

    .line 495
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 497
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_7

    .line 498
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 473
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    add-int/lit8 v2, p4, 0x1

    .line 474
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5

    .line 475
    move v0, v3

    .line 476
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 477
    if-gtz v3, :cond_4

    .line 478
    move v3, v2

    goto :goto_3

    .line 480
    :cond_5
    if-le v3, v2, :cond_6

    move v3, v2

    .line 483
    :cond_6
    move v4, v0

    .line 484
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 485
    sub-int v3, p4, v4

    goto :goto_1

    .line 500
    .end local v4    # "tmp":I
    .restart local v1    # "m":I
    :cond_7
    move v3, v1

    goto :goto_2

    .line 503
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x1

    .line 521
    .local v3, "ofs":I
    const/4 v0, 0x0

    .line 522
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    .line 524
    add-int/lit8 v2, p4, 0x1

    .line 525
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 526
    move v0, v3

    .line 527
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 528
    if-gtz v3, :cond_0

    .line 529
    move v3, v2

    goto :goto_0

    .line 531
    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    .line 534
    :cond_2
    move v4, v0

    .line 535
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 536
    sub-int v3, p4, v4

    .line 558
    .end local v4    # "tmp":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 559
    :goto_2
    if-ge v0, v3, :cond_8

    .line 560
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 562
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_7

    .line 563
    move v3, v1

    goto :goto_2

    .line 539
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    sub-int v2, p3, p4

    .line 540
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 541
    move v0, v3

    .line 542
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 543
    if-gtz v3, :cond_4

    .line 544
    move v3, v2

    goto :goto_3

    .line 546
    :cond_5
    if-le v3, v2, :cond_6

    move v3, v2

    .line 549
    :cond_6
    add-int/2addr v0, p4

    .line 550
    add-int/2addr v3, p4

    goto :goto_1

    .line 565
    .restart local v1    # "m":I
    :cond_7
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 568
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private mergeAt(I)V
    .locals 11
    .param p1, "i"    # I

    .prologue
    .line 397
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    aget v2, v0, p1

    .line 398
    .local v2, "base1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v3, v0, p1

    .line 399
    .local v3, "len1":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v6, v0, v1

    .line 400
    .local v6, "base2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    .line 408
    .local v7, "len2":I
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int v1, v3, v7

    aput v1, v0, p1

    .line 409
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 413
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v10

    .line 421
    .local v10, "k":I
    add-int/2addr v2, v10

    .line 422
    sub-int/2addr v3, v10

    .line 423
    if-nez v3, :cond_2

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v2, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v8, v7, -0x1

    iget-object v9, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v4 .. v9}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v7

    .line 431
    if-eqz v7, :cond_1

    .line 434
    if-gt v3, v7, :cond_3

    .line 435
    invoke-direct {p0, v2, v3, v6, v7}, Lcom/badlogic/gdx/utils/TimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 437
    :cond_3
    invoke-direct {p0, v2, v3, v6, v7}, Lcom/badlogic/gdx/utils/TimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    .prologue
    .line 366
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 367
    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 368
    .local v0, "n":I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 369
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 370
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    .line 372
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 377
    .end local v0    # "n":I
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .prologue
    .line 381
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 382
    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 383
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 384
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 386
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 23
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 690
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 691
    .local v3, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    .line 692
    .local v9, "tmp":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v3, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    add-int v2, p1, p2

    add-int/lit8 v16, v2, -0x1

    .line 695
    .local v16, "cursor1":I
    add-int/lit8 v18, p4, -0x1

    .line 696
    .local v18, "cursor2":I
    add-int v2, p3, p4

    add-int/lit8 v20, v2, -0x1

    .line 699
    .local v20, "dest":I
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .local v21, "dest":I
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "cursor1":I
    .local v17, "cursor1":I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 700
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_0

    .line 701
    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int v4, v21, v4

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 785
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :goto_0
    return-void

    .line 704
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 705
    sub-int v20, v21, p2

    .line 706
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v16, v17, p2

    .line 707
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    goto :goto_0

    .line 712
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 713
    .local v7, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    move/from16 v22, v0

    .local v22, "minGallop":I
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 716
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :goto_1
    const/4 v14, 0x0

    .line 717
    .local v14, "count1":I
    const/4 v15, 0x0

    .line 724
    .local v15, "count2":I
    :cond_2
    aget-object v2, v9, v18

    aget-object v4, v3, v16

    invoke-interface {v7, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    .line 725
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 726
    add-int/lit8 v14, v14, 0x1

    .line 727
    const/4 v15, 0x0

    .line 728
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_11

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 770
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :cond_3
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ge v0, v2, :cond_4

    const/16 v22, 0x1

    .end local v22    # "minGallop":I
    :cond_4
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 772
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_d

    .line 774
    sub-int v20, v20, p2

    .line 775
    sub-int v16, v16, p2

    .line 776
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    goto :goto_0

    .line 730
    .restart local v22    # "minGallop":I
    :cond_5
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    .end local v18    # "cursor2":I
    .local v19, "cursor2":I
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 731
    add-int/lit8 v15, v15, 0x1

    .line 732
    const/4 v14, 0x0

    .line 733
    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_6

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_2

    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_6
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .line 735
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    :goto_3
    or-int v2, v14, v15

    move/from16 v0, v22

    if-lt v2, v0, :cond_2

    .line 743
    :goto_4
    aget-object v2, v9, v18

    add-int/lit8 v6, p2, -0x1

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v14, p2, v2

    .line 744
    if-eqz v14, :cond_7

    .line 745
    sub-int v20, v20, v14

    .line 746
    sub-int v16, v16, v14

    .line 747
    sub-int p2, p2, v14

    .line 748
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v3, v2, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    if-eqz p2, :cond_3

    .line 751
    :cond_7
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    .end local v18    # "cursor2":I
    .restart local v19    # "cursor2":I
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 752
    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_2

    .line 754
    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_8
    aget-object v8, v3, v16

    const/4 v10, 0x0

    add-int/lit8 v12, p4, -0x1

    move/from16 v11, p4

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v15, p4, v2

    .line 755
    if-eqz v15, :cond_10

    .line 756
    sub-int v20, v21, v15

    .line 757
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v18, v19, v15

    .line 758
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    sub-int p4, p4, v15

    .line 759
    add-int/lit8 v2, v18, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v9, v2, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_3

    .line 763
    :goto_5
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 764
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_9

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_2

    .line 765
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_9
    add-int/lit8 v22, v22, -0x1

    .line 766
    const/4 v2, 0x7

    if-lt v14, v2, :cond_b

    const/4 v2, 0x1

    move v4, v2

    :goto_6
    const/4 v2, 0x7

    if-lt v15, v2, :cond_c

    const/4 v2, 0x1

    :goto_7
    or-int/2addr v2, v4

    if-nez v2, :cond_f

    .line 767
    if-gez v22, :cond_a

    const/16 v22, 0x0

    .line 768
    :cond_a
    add-int/lit8 v22, v22, 0x2

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 769
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_1

    .line 766
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_b
    const/4 v2, 0x0

    move v4, v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    .line 778
    .end local v17    # "cursor1":I
    .end local v21    # "dest":I
    .end local v22    # "minGallop":I
    .restart local v16    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_d
    if-nez p4, :cond_e

    .line 779
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Comparison method violates its general contract!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 783
    :cond_e
    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int v4, v20, v4

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    .restart local v22    # "minGallop":I
    :cond_f
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_4

    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_10
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_5

    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_11
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 22
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 586
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 587
    .local v10, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v4

    .line 588
    .local v4, "tmp":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v10, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    const/4 v5, 0x0

    .line 591
    .local v5, "cursor1":I
    move/from16 v11, p3

    .line 592
    .local v11, "cursor2":I
    move/from16 v19, p1

    .line 595
    .local v19, "dest":I
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .local v20, "dest":I
    add-int/lit8 v18, v11, 0x1

    .end local v11    # "cursor2":I
    .local v18, "cursor2":I
    aget-object v3, v10, v11

    aput-object v3, v10, v19

    .line 596
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_0

    .line 597
    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .line 677
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    :goto_0
    return-void

    .line 600
    .end local v11    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v18    # "cursor2":I
    .restart local v20    # "dest":I
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 601
    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, p4

    invoke-static {v10, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    add-int v3, v20, p4

    aget-object v6, v4, v5

    aput-object v6, v10, v3

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .line 603
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    goto :goto_0

    .line 606
    .end local v11    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v18    # "cursor2":I
    .restart local v20    # "dest":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 607
    .local v8, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    move/from16 v21, v0

    .local v21, "minGallop":I
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .line 610
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    :goto_1
    const/4 v15, 0x0

    .line 611
    .local v15, "count1":I
    const/16 v16, 0x0

    .line 618
    .local v16, "count2":I
    :cond_2
    aget-object v3, v10, v11

    aget-object v6, v4, v5

    invoke-interface {v8, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_5

    .line 619
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v18, v11, 0x1

    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    aget-object v3, v10, v11

    aput-object v3, v10, v19

    .line 620
    add-int/lit8 v16, v16, 0x1

    .line 621
    const/4 v15, 0x0

    .line 622
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_11

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .line 664
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    :cond_3
    :goto_2
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ge v0, v3, :cond_4

    const/16 v21, 0x1

    .end local v21    # "minGallop":I
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 666
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_d

    .line 668
    move/from16 v0, v19

    move/from16 v1, p4

    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    add-int v3, v19, p4

    aget-object v6, v4, v5

    aput-object v6, v10, v3

    goto :goto_0

    .line 624
    .restart local v21    # "minGallop":I
    :cond_5
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v17, v5, 0x1

    .end local v5    # "cursor1":I
    .local v17, "cursor1":I
    aget-object v3, v4, v5

    aput-object v3, v10, v19

    .line 625
    add-int/lit8 v15, v15, 0x1

    .line 626
    const/16 v16, 0x0

    .line 627
    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto :goto_2

    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_6
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    .line 629
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_3
    or-int v3, v15, v16

    move/from16 v0, v21

    if-lt v3, v0, :cond_2

    move/from16 v18, v11

    .line 637
    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    :goto_4
    aget-object v3, v10, v18

    const/4 v7, 0x0

    move/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v15

    .line 638
    if-eqz v15, :cond_7

    .line 639
    move/from16 v0, v19

    invoke-static {v4, v5, v10, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    add-int v19, v19, v15

    .line 641
    add-int/2addr v5, v15

    .line 642
    sub-int p2, p2, v15

    .line 643
    const/4 v3, 0x1

    move/from16 v0, p2

    if-gt v0, v3, :cond_7

    move/from16 v11, v18

    .line 644
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    goto :goto_2

    .line 646
    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    :cond_7
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v11, v18, 0x1

    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    aget-object v3, v10, v18

    aput-object v3, v10, v19

    .line 647
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_8

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    goto :goto_2

    .line 649
    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    :cond_8
    aget-object v9, v4, v5

    const/4 v13, 0x0

    move/from16 v12, p4

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v16

    .line 650
    if-eqz v16, :cond_10

    .line 651
    move/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    add-int v19, v20, v16

    .line 653
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    add-int v11, v11, v16

    .line 654
    sub-int p4, p4, v16

    .line 655
    if-eqz p4, :cond_3

    .line 657
    :goto_5
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v17, v5, 0x1

    .end local v5    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v3, v4, v5

    aput-object v3, v10, v19

    .line 658
    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_2

    .line 659
    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_9
    add-int/lit8 v21, v21, -0x1

    .line 660
    const/4 v3, 0x7

    if-lt v15, v3, :cond_b

    const/4 v3, 0x1

    move v6, v3

    :goto_6
    const/4 v3, 0x7

    move/from16 v0, v16

    if-lt v0, v3, :cond_c

    const/4 v3, 0x1

    :goto_7
    or-int/2addr v3, v6

    if-nez v3, :cond_f

    .line 661
    if-gez v21, :cond_a

    const/16 v21, 0x0

    .line 662
    :cond_a
    add-int/lit8 v21, v21, 0x2

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    .line 663
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_1

    .line 660
    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_b
    const/4 v3, 0x0

    move v6, v3

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    goto :goto_7

    .line 670
    .end local v17    # "cursor1":I
    .end local v20    # "dest":I
    .end local v21    # "minGallop":I
    .restart local v5    # "cursor1":I
    .restart local v19    # "dest":I
    :cond_d
    if-nez p2, :cond_e

    .line 671
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Comparison method violates its general contract!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 675
    :cond_e
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    .restart local v21    # "minGallop":I
    :cond_f
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v18, v11

    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    move/from16 v5, v17

    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_4

    .end local v18    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v11    # "cursor2":I
    .restart local v20    # "dest":I
    :cond_10
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    goto :goto_5

    .end local v11    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v18    # "cursor2":I
    .restart local v20    # "dest":I
    :cond_11
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    goto/16 :goto_3
.end method

.method private static minRunLength(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    .line 343
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 344
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .prologue
    .line 354
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    aput p2, v0, v1

    .line 356
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 357
    return-void
.end method

.method private static rangeCheck(III)V
    .locals 3
    .param p0, "arrayLen"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 822
    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 824
    :cond_1
    if-le p2, p0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 825
    :cond_2
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 318
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    .line 319
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 320
    aget-object v2, p0, v1

    .line 321
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 322
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "hi":I
    .restart local p2    # "hi":I
    aput-object v2, p0, v0

    move v0, p2

    .end local p2    # "hi":I
    .restart local v0    # "hi":I
    move v1, p1

    .line 323
    .end local p1    # "lo":I
    .restart local v1    # "lo":I
    goto :goto_0

    .line 324
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 8
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p3, :cond_1

    .line 176
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    array-length v6, p0

    invoke-static {v6, p1, p2}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    .line 181
    sub-int v3, p2, p1

    .line 182
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    if-lt v3, v6, :cond_0

    .line 185
    const/16 v6, 0x20

    if-ge v3, v6, :cond_2

    .line 186
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    .line 187
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0

    .line 193
    .end local v1    # "initRunLen":I
    :cond_2
    new-instance v5, Lcom/badlogic/gdx/utils/TimSort;

    invoke-direct {v5, p0, p3}, Lcom/badlogic/gdx/utils/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 194
    .local v5, "ts":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    invoke-static {v3}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v2

    .line 197
    .local v2, "minRun":I
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v4

    .line 200
    .local v4, "runLen":I
    if-ge v4, v2, :cond_4

    .line 201
    if-gt v3, v2, :cond_5

    move v0, v3

    .line 202
    .local v0, "force":I
    :goto_1
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 203
    move v4, v0

    .line 207
    .end local v0    # "force":I
    :cond_4
    invoke-direct {v5, p1, v4}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    .line 208
    invoke-direct {v5}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    .line 211
    add-int/2addr p1, v4

    .line 212
    sub-int/2addr v3, v4

    .line 213
    if-nez v3, :cond_3

    .line 217
    invoke-direct {v5}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 201
    goto :goto_1
.end method

.method static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 172
    return-void
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 7
    .param p3, "lo"    # I
    .param p4, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 97
    array-length v5, p1

    invoke-static {v5, p3, p4}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    .line 98
    sub-int v3, p4, p3

    .line 99
    .local v3, "nRemaining":I
    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    .line 138
    :goto_0
    return-void

    .line 102
    :cond_0
    const/16 v5, 0x20

    if-ge v3, v5, :cond_1

    .line 103
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    .line 104
    .local v1, "initRunLen":I
    add-int v5, p3, v1

    invoke-static {p1, p3, p4, v5, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0

    .line 108
    .end local v1    # "initRunLen":I
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 109
    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 113
    invoke-static {v3}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v2

    .line 116
    .local v2, "minRun":I
    :cond_2
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v4

    .line 119
    .local v4, "runLen":I
    if-ge v4, v2, :cond_3

    .line 120
    if-gt v3, v2, :cond_4

    move v0, v3

    .line 121
    .local v0, "force":I
    :goto_1
    add-int v5, p3, v0

    add-int v6, p3, v4

    invoke-static {p1, p3, v5, v6, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 122
    move v4, v0

    .line 126
    .end local v0    # "force":I
    :cond_3
    invoke-direct {p0, p3, v4}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    .line 127
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    .line 130
    add-int/2addr p3, v4

    .line 131
    sub-int/2addr v3, v4

    .line 132
    if-nez v3, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 120
    goto :goto_1
.end method
