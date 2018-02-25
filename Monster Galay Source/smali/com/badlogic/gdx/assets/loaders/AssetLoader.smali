.class public abstract Lcom/badlogic/gdx/assets/loaders/AssetLoader;
.super Ljava/lang/Object;
.source "AssetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private resolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 25
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/AssetLoader;, "Lcom/badlogic/gdx/assets/loaders/AssetLoader<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/AssetLoader;->resolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract getDependencies(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TP;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/AssetLoader;, "Lcom/badlogic/gdx/assets/loaders/AssetLoader<TT;TP;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/AssetLoader;->resolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    return-object v0
.end method
