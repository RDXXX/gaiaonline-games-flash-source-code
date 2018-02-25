.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;
.super Ljava/lang/Object;
.source "TileSet.java"


# instance fields
.field public firstgid:I

.field public imageName:Ljava/lang/String;

.field public margin:I

.field public name:Ljava/lang/String;

.field public spacing:I

.field public tileHeight:I

.field public tileWidth:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;)V
    .locals 1
    .param p1, "set"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    .line 33
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    .line 34
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileWidth:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileWidth:I

    .line 35
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileHeight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileHeight:I

    .line 36
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    .line 37
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    .line 38
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->name:Ljava/lang/String;

    .line 40
    return-void
.end method
