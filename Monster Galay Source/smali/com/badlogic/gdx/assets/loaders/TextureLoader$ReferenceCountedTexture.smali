.class public Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;
.super Lcom/badlogic/gdx/graphics/Texture;
.source "TextureLoader.java"

# interfaces
.implements Lcom/badlogic/gdx/assets/ReferenceCountedAsset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/TextureLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReferenceCountedTexture"
.end annotation


# instance fields
.field private refCount:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 1
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;->refCount:I

    .line 83
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;->refCount:I

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;->refCount:I

    if-lez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    goto :goto_0
.end method

.method public getRefCount()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;->refCount:I

    return v0
.end method

.method public incRefCount()V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;->refCount:I

    .line 90
    return-void
.end method

.method public setRefCount(I)V
    .locals 0
    .param p1, "refCount"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;->refCount:I

    .line 107
    return-void
.end method
