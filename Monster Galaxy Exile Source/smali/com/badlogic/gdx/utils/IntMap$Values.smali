.class public Lcom/badlogic/gdx/utils/IntMap$Values;
.super Lcom/badlogic/gdx/utils/IntMap$MapIterator;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/IntMap$MapIterator",
        "<TV;>;",
        "Ljava/lang/Iterable",
        "<TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    .line 613
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 616
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 622
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v0, v1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 625
    .local v0, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->currentIndex:I

    .line 626
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$Values;->findNextIndex()V

    .line 627
    return-object v0

    .line 624
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->nextIndex:I

    aget-object v0, v1, v2

    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 610
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 610
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap$Values;, "Lcom/badlogic/gdx/utils/IntMap$Values<TV;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->map:Lcom/badlogic/gdx/utils/IntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 637
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap$Values;->hasNext:Z

    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$Values;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    :cond_0
    return-object v0
.end method
