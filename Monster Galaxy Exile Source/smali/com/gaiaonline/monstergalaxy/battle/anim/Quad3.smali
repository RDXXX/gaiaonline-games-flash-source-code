.class public Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;
.super Ljava/lang/Object;
.source "Quad3.java"


# instance fields
.field bl:Lcom/badlogic/gdx/math/Vector3;

.field br:Lcom/badlogic/gdx/math/Vector3;

.field tl:Lcom/badlogic/gdx/math/Vector3;

.field tr:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->bl:Lcom/badlogic/gdx/math/Vector3;

    .line 13
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->br:Lcom/badlogic/gdx/math/Vector3;

    .line 14
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tl:Lcom/badlogic/gdx/math/Vector3;

    .line 15
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tr:Lcom/badlogic/gdx/math/Vector3;

    .line 16
    return-void
.end method
