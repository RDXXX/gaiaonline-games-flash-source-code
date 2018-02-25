.class public Lcom/badlogic/gdx/utils/Array$ArrayIterable;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array$ArrayIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterable;, "Lcom/badlogic/gdx/utils/Array$ArrayIterable<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    .line 323
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lcom/badlogic/gdx/utils/Array$ArrayIterable;, "Lcom/badlogic/gdx/utils/Array$ArrayIterable<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->reset()V

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    return-object v0
.end method
