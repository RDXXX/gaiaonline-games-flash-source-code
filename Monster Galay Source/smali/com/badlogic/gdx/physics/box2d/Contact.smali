.class public Lcom/badlogic/gdx/physics/box2d/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field protected addr:J

.field private final tmp:[F

.field protected world:Lcom/badlogic/gdx/physics/box2d/World;

.field protected final worldManifold:Lcom/badlogic/gdx/physics/box2d/WorldManifold;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 1
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "addr"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/WorldManifold;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/WorldManifold;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->worldManifold:Lcom/badlogic/gdx/physics/box2d/WorldManifold;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->tmp:[F

    .line 35
    iput-wide p2, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 36
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 37
    return-void
.end method

.method private native jniGetFixtureA(J)J
.end method

.method private native jniGetFixtureB(J)J
.end method

.method private native jniGetWorldManifold(J[F)I
.end method

.method private native jniIsEnabled(J)Z
.end method

.method private native jniIsTouching(J)Z
.end method

.method private native jniSetEnabled(JZ)V
.end method


# virtual methods
.method public getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Contact;->jniGetFixtureA(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    return-object v0
.end method

.method public getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Contact;->jniGetFixtureB(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    return-object v0
.end method

.method public getWorldManifold()Lcom/badlogic/gdx/physics/box2d/WorldManifold;
    .locals 7

    .prologue
    .line 43
    iget-wide v3, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->tmp:[F

    invoke-direct {p0, v3, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Contact;->jniGetWorldManifold(J[F)I

    move-result v1

    .line 45
    .local v1, "numContactPoints":I
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->worldManifold:Lcom/badlogic/gdx/physics/box2d/WorldManifold;

    iput v1, v3, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->numContactPoints:I

    .line 46
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->worldManifold:Lcom/badlogic/gdx/physics/box2d/WorldManifold;

    iget-object v3, v3, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->normal:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->tmp:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->tmp:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 48
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->worldManifold:Lcom/badlogic/gdx/physics/box2d/WorldManifold;

    iget-object v3, v3, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->points:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v2, v3, v0

    .line 49
    .local v2, "point":Lcom/badlogic/gdx/math/Vector2;
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->tmp:[F

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 50
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->tmp:[F

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "point":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->worldManifold:Lcom/badlogic/gdx/physics/box2d/WorldManifold;

    return-object v3
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Contact;->jniIsEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isTouching()Z
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Contact;->jniIsTouching(J)Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->jniSetEnabled(JZ)V

    .line 68
    return-void
.end method
