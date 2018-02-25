.class public abstract Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;, "Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract configureItem(Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract newItem()Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
