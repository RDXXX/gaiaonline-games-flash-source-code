.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;
.super Ljava/lang/Object;
.source "TiledObject.java"


# instance fields
.field public gid:I

.field public height:I

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

.field public type:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->width:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->height:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->gid:I

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->properties:Ljava/util/HashMap;

    return-void
.end method
