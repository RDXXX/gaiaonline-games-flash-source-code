.class public Lcom/badlogic/gdx/assets/AssetDescriptor;
.super Ljava/lang/Object;
.source "AssetDescriptor.java"


# instance fields
.field final fileName:Ljava/lang/String;

.field final params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

.field final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "assetType"    # Ljava/lang/Class;
    .param p3, "params"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "\\\\"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    .line 29
    iput-object p3, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    return-object v0
.end method
