.class public Lcom/gaiaonline/monstergalaxy/app/Fonts;
.super Ljava/lang/Object;
.source "Fonts.java"


# static fields
.field public static italic:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public static regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 14
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 15
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "data/fonts/pack"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 14
    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 16
    .local v0, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    const-string v3, "VAGRunds"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    .line 17
    .local v1, "italicTexture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "data/fonts/VAGRunds.fnt"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4, v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Fonts;->italic:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 19
    const-string v3, "VAGRundsRegular"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    .line 20
    .local v2, "regularTexture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 21
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "data/fonts/VAGRundsRegular.fnt"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 20
    invoke-direct {v3, v4, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 23
    return-void
.end method
