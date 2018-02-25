.class Lcom/badlogic/gdx/physics/box2d/World$2;
.super Lcom/badlogic/gdx/utils/Pool;
.source "World.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/physics/box2d/World;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/physics/box2d/Fixture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 60
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World$2;->this$0:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/physics/box2d/Fixture;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;J)V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/World$2;->newObject()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v0

    return-object v0
.end method
