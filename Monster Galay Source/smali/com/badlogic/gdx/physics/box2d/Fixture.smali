.class public Lcom/badlogic/gdx/physics/box2d/Fixture;
.super Ljava/lang/Object;
.source "Fixture.java"


# instance fields
.field protected addr:J

.field private body:Lcom/badlogic/gdx/physics/box2d/Body;

.field private final filter:Lcom/badlogic/gdx/physics/box2d/Filter;

.field protected shape:Lcom/badlogic/gdx/physics/box2d/Shape;

.field private final tmp:[S

.field protected userData:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/Body;J)V
    .locals 1
    .param p1, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p2, "addr"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    .line 103
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Filter;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/Filter;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    .line 38
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 39
    iput-wide p2, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    .line 40
    return-void
.end method

.method private native jniGetDensity(J)F
.end method

.method private native jniGetFilterData(J[S)V
.end method

.method private native jniGetFriction(J)F
.end method

.method private native jniGetRestitution(J)F
.end method

.method private native jniGetShape(J)J
.end method

.method private native jniGetType(J)I
.end method

.method private native jniIsSensor(J)Z
.end method

.method private native jniSetDensity(JF)V
.end method

.method private native jniSetFilterData(JSSS)V
.end method

.method private native jniSetFriction(JF)V
.end method

.method private native jniSetRestitution(JF)V
.end method

.method private native jniSetSensor(JZ)V
.end method

.method private native jniTestPoint(JFF)Z
.end method


# virtual methods
.method public getBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getDensity()F
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetDensity(J)F

    move-result v0

    return v0
.end method

.method public getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;
    .locals 3

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetFilterData(J[S)V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    const/4 v2, 0x1

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    const/4 v2, 0x2

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    return-object v0
.end method

.method public getFriction()F
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetFriction(J)F

    move-result v0

    return v0
.end method

.method public getRestitution()F
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetRestitution(J)F

    move-result v0

    return v0
.end method

.method public getShape()Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 5

    .prologue
    .line 63
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    if-nez v3, :cond_0

    .line 64
    iget-wide v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetShape(J)J

    move-result-wide v0

    .line 65
    .local v0, "shapeAddr":J
    invoke-static {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Shape;->jniGetType(J)I

    move-result v2

    .line 67
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 68
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>(J)V

    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 73
    .end local v0    # "shapeAddr":J
    .end local v2    # "type":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    return-object v3

    .line 70
    .restart local v0    # "shapeAddr":J
    .restart local v2    # "type":I
    :cond_1
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>(J)V

    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    goto :goto_0
.end method

.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 3

    .prologue
    .line 52
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetType(J)I

    move-result v0

    .line 53
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 54
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    .line 56
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isSensor()Z
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniIsSensor(J)Z

    move-result v0

    return v0
.end method

.method protected reset(Lcom/badlogic/gdx/physics/box2d/Body;J)V
    .locals 1
    .param p1, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p2, "addr"    # J

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 44
    iput-wide p2, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    .line 45
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 46
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->userData:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public setDensity(F)V
    .locals 2
    .param p1, "density"    # F

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetDensity(JF)V

    .line 163
    return-void
.end method

.method public setFilterData(Lcom/badlogic/gdx/physics/box2d/Filter;)V
    .locals 6
    .param p1, "filter"    # Lcom/badlogic/gdx/physics/box2d/Filter;

    .prologue
    .line 96
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    iget-short v3, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iget-short v4, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iget-short v5, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetFilterData(JSSS)V

    .line 97
    return-void
.end method

.method public setFriction(F)V
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetFriction(JF)V

    .line 184
    return-void
.end method

.method public setRestitution(F)V
    .locals 2
    .param p1, "restitution"    # F

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetRestitution(JF)V

    .line 198
    return-void
.end method

.method public setSensor(Z)V
    .locals 2
    .param p1, "sensor"    # Z

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetSensor(JZ)V

    .line 81
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/Object;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->userData:Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public testPoint(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniTestPoint(JFF)Z

    move-result v0

    return v0
.end method

.method public testPoint(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 4
    .param p1, "p"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniTestPoint(JFF)Z

    move-result v0

    return v0
.end method
