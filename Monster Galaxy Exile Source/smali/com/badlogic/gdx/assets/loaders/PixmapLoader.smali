.class public Lcom/badlogic/gdx/assets/loaders/PixmapLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "PixmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/Pixmap;",
        "Lcom/badlogic/gdx/assets/loaders/PixmapParameter;",
        ">;"
    }
.end annotation


# instance fields
.field pixmap:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/PixmapParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "parameter"    # Lcom/badlogic/gdx/assets/loaders/PixmapParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/PixmapParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDependencies(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p2, Lcom/badlogic/gdx/assets/loaders/PixmapParameter;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/PixmapParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/PixmapParameter;)V
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/PixmapParameter;

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 34
    return-void
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/PixmapParameter;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/PixmapParameter;)V

    return-void
.end method

.method public loadSync()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public bridge synthetic loadSync()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;->loadSync()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    return-object v0
.end method
