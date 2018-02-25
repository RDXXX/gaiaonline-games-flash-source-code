.class public Lcom/badlogic/gdx/graphics/TextureRef;
.super Ljava/lang/Object;
.source "TextureRef.java"


# instance fields
.field public Name:Ljava/lang/String;

.field private mRefCount:I

.field private mTexture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/TextureRef;->Name:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    .line 36
    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    .line 41
    return-void
.end method

.method public bind()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 62
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 57
    return-void
.end method

.method public get()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public unload()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->Name:Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/TextureDict;->removeTexture(Ljava/lang/String;)V

    .line 52
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/TextureRef;->mRefCount:I

    return v0
.end method
