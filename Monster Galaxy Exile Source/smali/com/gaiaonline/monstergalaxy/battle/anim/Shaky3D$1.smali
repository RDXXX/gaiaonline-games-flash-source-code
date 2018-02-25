.class Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D$1;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
.source "Shaky3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
        "<",
        "Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "$anonymous0"    # I
    .param p2, "$anonymous1"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;-><init>(II)V

    .line 1
    return-void
.end method


# virtual methods
.method protected newObject()Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D$1;->newObject()Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;

    move-result-object v0

    return-object v0
.end method
