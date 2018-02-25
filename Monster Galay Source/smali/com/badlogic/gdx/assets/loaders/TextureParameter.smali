.class public Lcom/badlogic/gdx/assets/loaders/TextureParameter;
.super Ljava/lang/Object;
.source "TextureParameter.java"

# interfaces
.implements Lcom/badlogic/gdx/assets/AssetLoaderParameters;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field public format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public genMipMaps:Z

.field public texture:Lcom/badlogic/gdx/graphics/Texture;

.field public textureData:Lcom/badlogic/gdx/graphics/TextureData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->genMipMaps:Z

    .line 30
    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 32
    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    return-void
.end method
