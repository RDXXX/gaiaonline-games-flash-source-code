.class public Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "BitmapFontLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
        "Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

.field fileName:Ljava/lang/String;

.field manager:Lcom/badlogic/gdx/assets/AssetManager;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "parameter"    # Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 39
    .local v1, "handle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    if-eqz p2, :cond_0

    iget-boolean v2, p2, Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;->flip:Z

    :goto_0
    invoke-direct {v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v3, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 42
    .local v0, "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    new-instance v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImageFile()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 43
    return-object v0

    .line 39
    .end local v0    # "deps":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getDependencies(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p2, Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 49
    iput-object p2, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->fileName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/BitmapFontParameter;)V

    return-void
.end method

.method public loadSync()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 5

    .prologue
    .line 54
    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 55
    .local v0, "handle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getImageFile()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 56
    .local v1, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    return-object v2
.end method

.method public bridge synthetic loadSync()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;->loadSync()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    return-object v0
.end method
