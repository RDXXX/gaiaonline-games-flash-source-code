.class public Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;
.super Ljava/lang/Object;
.source "Box2DDebugRenderer.java"


# static fields
.field private static axis:Lcom/badlogic/gdx/math/Vector2;

.field private static t:Lcom/badlogic/gdx/math/Vector2;

.field private static vertices:[Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private final JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_AWAKE:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_KINEMATIC:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_NOT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_NOT_AWAKE:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_STATIC:Lcom/badlogic/gdx/graphics/Color;

.field public batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field protected renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

.field private final v:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 100
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    .line 101
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x3f333333    # 0.7f

    const v6, 0x3f666666    # 0.9f

    const v3, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, v4, v4, v2, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    .line 63
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v4, v6, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_STATIC:Lcom/badlogic/gdx/graphics/Color;

    .line 64
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v4, v4, v6, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_KINEMATIC:Lcom/badlogic/gdx/graphics/Color;

    .line 65
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v3, v3, v3, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    .line 66
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v6, v7, v7, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    .line 67
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 121
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    .line 46
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    .line 49
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 54
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private drawContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 0
    .param p1, "contact"    # Lcom/badlogic/gdx/physics/box2d/Contact;

    .prologue
    .line 192
    return-void
.end method

.method private drawJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 14
    .param p1, "joint"    # Lcom/badlogic/gdx/physics/box2d/Joint;

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getBodyA()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 154
    .local v0, "bodyA":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getBodyB()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 155
    .local v1, "bodyB":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v9

    .line 156
    .local v9, "xf1":Lcom/badlogic/gdx/physics/box2d/Transform;
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v10

    .line 158
    .local v10, "xf2":Lcom/badlogic/gdx/physics/box2d/Transform;
    invoke-virtual {v9}, Lcom/badlogic/gdx/physics/box2d/Transform;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    .line 159
    .local v7, "x1":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {v10}, Lcom/badlogic/gdx/physics/box2d/Transform;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    .line 160
    .local v8, "x2":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorA()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 161
    .local v2, "p1":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorB()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 163
    .local v3, "p2":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v11, v12, :cond_0

    .line 164
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v2, v3, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 179
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v11, v12, :cond_1

    move-object v4, p1

    .line 166
    check-cast v4, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;

    .line 167
    .local v4, "pulley":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;->getGroundAnchorA()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    .line 168
    .local v5, "s1":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;->getGroundAnchorB()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    .line 169
    .local v6, "s2":Lcom/badlogic/gdx/math/Vector2;
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v5, v2, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 170
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v6, v3, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 171
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v5, v6, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 172
    .end local v4    # "pulley":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;
    .end local v5    # "s1":Lcom/badlogic/gdx/math/Vector2;
    .end local v6    # "s2":Lcom/badlogic/gdx/math/Vector2;
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v11, v12, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorA()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v11

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorB()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v12

    iget-object v13, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v11, v12, v13}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v7, v2, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 176
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v2, v3, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 177
    iget-object v11, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v8, v3, v11}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method

.method private drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p1, "x1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "x2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v5, 0x0

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->begin(I)V

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v1, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->color(FFFF)V

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->vertex(FFF)V

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v1, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->color(FFFF)V

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->vertex(FFF)V

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->end()V

    .line 188
    return-void
.end method

.method private drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 10
    .param p1, "fixture"    # Lcom/badlogic/gdx/physics/box2d/Fixture;
    .param p2, "transform"    # Lcom/badlogic/gdx/physics/box2d/Transform;
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v4, v5, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    .line 106
    .local v0, "circle":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 107
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 108
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getRadius()F

    move-result v5

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, p2, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p2, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6, p3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidCircle(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 119
    .end local v0    # "circle":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    .line 112
    .local v2, "poly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertexCount()I

    move-result v3

    .line 113
    .local v3, "vertexCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 114
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    invoke-virtual {v2, v1, v4}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 115
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_1
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v4, v3, p3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method

.method private drawSolidCircle(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "radius"    # F
    .param p3, "axis"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v8, 0x0

    .line 124
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->begin(I)V

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "angle":F
    const v1, 0x3ea0d97c

    .line 127
    .local v1, "angleInc":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p2

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, p2

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 129
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, p4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, p4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->color(FFFF)V

    .line 130
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->vertex(FFF)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    add-float/2addr v0, v1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->end()V

    .line 134
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->begin(I)V

    .line 135
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, p4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, p4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->color(FFFF)V

    .line 136
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->vertex(FFF)V

    .line 137
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, p4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, p4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->color(FFFF)V

    .line 138
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->vertex(FFF)V

    .line 139
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->end()V

    .line 140
    return-void
.end method

.method private drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;)V
    .locals 7
    .param p1, "vertices"    # [Lcom/badlogic/gdx/math/Vector2;
    .param p2, "vertexCount"    # I
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 143
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->begin(I)V

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 145
    aget-object v1, p1, v0

    .line 146
    .local v1, "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v3, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v6, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->color(FFFF)V

    .line 147
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->vertex(FFF)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "v":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->end()V

    .line 150
    return-void
.end method

.method private renderBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 11
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/World;->getBodies()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Body;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 72
    .local v0, "body":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v8

    .line 73
    .local v8, "transform":Lcom/badlogic/gdx/physics/box2d/Transform;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 74
    .local v7, "len":I
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v2

    .line 75
    .local v2, "fixtures":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/physics/box2d/Fixture;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_0

    .line 76
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 77
    .local v1, "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->isActive()Z

    move-result v9

    if-nez v9, :cond_1

    .line 78
    iget-object v9, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v8, v9}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    .line 75
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getType()Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v9, v10, :cond_2

    .line 80
    iget-object v9, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_STATIC:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v8, v9}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getType()Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v9, v10, :cond_3

    .line 82
    iget-object v9, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_KINEMATIC:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v8, v9}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->isAwake()Z

    move-result v9

    if-nez v9, :cond_4

    .line 84
    iget-object v9, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v8, v9}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    .line 86
    :cond_4
    iget-object v9, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v8, v9}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    .line 90
    .end local v0    # "body":Lcom/badlogic/gdx/physics/box2d/Body;
    .end local v1    # "fixture":Lcom/badlogic/gdx/physics/box2d/Fixture;
    .end local v2    # "fixtures":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/physics/box2d/Fixture;>;"
    .end local v3    # "i":I
    .end local v7    # "len":I
    .end local v8    # "transform":Lcom/badlogic/gdx/physics/box2d/Transform;
    :cond_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/World;->getJoints()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/badlogic/gdx/physics/box2d/Joint;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 91
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/physics/box2d/Joint;

    .line 92
    .local v6, "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {p0, v6}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V

    goto :goto_2

    .line 95
    .end local v6    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/World;->getContactList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 96
    .restart local v7    # "len":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v7, :cond_7

    .line 97
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/World;->getContactList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-direct {p0, v9}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 98
    :cond_7
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    .line 197
    return-void
.end method

.method public render(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 0
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderBodies(Lcom/badlogic/gdx/physics/box2d/World;)V

    .line 60
    return-void
.end method
