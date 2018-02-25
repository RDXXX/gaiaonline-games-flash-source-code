.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;
.super Ljava/lang/Object;
.source "TiledLayer.java"


# instance fields
.field public name:Ljava/lang/String;

.field public properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tiles:[[I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->properties:Ljava/util/HashMap;

    .line 36
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    array-length v0, v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 40
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v0, v1, v0

    array-length v0, v0

    goto :goto_0
.end method
