.class public Lcom/badlogic/gdx/physics/box2d/WorldManifold;
.super Ljava/lang/Object;
.source "WorldManifold.java"


# instance fields
.field protected final normal:Lcom/badlogic/gdx/math/Vector2;

.field protected numContactPoints:I

.field protected final points:[Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->normal:Lcom/badlogic/gdx/math/Vector2;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->points:[Lcom/badlogic/gdx/math/Vector2;

    .line 28
    return-void
.end method


# virtual methods
.method public getNormal()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->normal:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getNumberOfContactPoints()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->numContactPoints:I

    return v0
.end method

.method public getPoints()[Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->points:[Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method
