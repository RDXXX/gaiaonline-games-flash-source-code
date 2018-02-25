.class Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;
.super Ljava/lang/Object;
.source "TiledMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TileProperty"
.end annotation


# instance fields
.field id:I

.field propertyMap:Ljava/util/HashMap;
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

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->this$0:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap$TileProperty;->propertyMap:Ljava/util/HashMap;

    return-void
.end method
