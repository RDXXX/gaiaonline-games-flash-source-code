.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# instance fields
.field public final format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public final magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public final minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public texture:Lcom/badlogic/gdx/graphics/Texture;

.field public final textureFile:Lcom/badlogic/gdx/files/FileHandle;

.field public final uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public final useMipMaps:Z

.field public final vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;ZLcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 0
    .param p1, "handle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "useMipMaps"    # Z
    .param p3, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p4, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p5, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p6, "uWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p7, "vWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    .line 68
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->useMipMaps:Z

    .line 69
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 70
    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 71
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 72
    iput-object p6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 73
    iput-object p7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 74
    return-void
.end method
