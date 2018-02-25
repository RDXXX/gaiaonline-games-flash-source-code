.class public Lcom/badlogic/gdx/utils/ObjectMap$Keys;
.super Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator",
        "<TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Iterable",
        "<TK;>;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<TK;*>;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;*>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 602
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 605
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->nextIndex:I

    aget-object v0, v1, v2

    .line 610
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->currentIndex:I

    .line 611
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->findNextIndex()V

    .line 612
    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 599
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 599
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<TK;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 622
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 624
    :cond_0
    return-object v0
.end method
