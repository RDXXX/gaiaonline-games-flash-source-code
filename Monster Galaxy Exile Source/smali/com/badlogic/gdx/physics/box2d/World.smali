.class public final Lcom/badlogic/gdx/physics/box2d/World;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private final addr:J

.field protected final bodies:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private final contact:Lcom/badlogic/gdx/physics/box2d/Contact;

.field private contactAddrs:[J

.field protected contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

.field protected contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

.field private final contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation
.end field

.field protected final fixtures:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field protected final freeBodies:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private final freeContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation
.end field

.field protected final freeFixtures:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field final gravity:Lcom/badlogic/gdx/math/Vector2;

.field private final impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

.field protected final joints:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Joint;",
            ">;"
        }
    .end annotation
.end field

.field private final manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

.field private queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

.field private rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

.field private rayNormal:Lcom/badlogic/gdx/math/Vector2;

.field private rayPoint:Lcom/badlogic/gdx/math/Vector2;

.field final tmpGravity:[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Z)V
    .locals 7
    .param p1, "gravity"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "doSleep"    # Z

    .prologue
    const/16 v6, 0xc8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/World$1;

    invoke-direct {v1, p0, v2, v6}, Lcom/badlogic/gdx/physics/box2d/World$1;-><init>(Lcom/badlogic/gdx/physics/box2d/World;II)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeBodies:Lcom/badlogic/gdx/utils/Pool;

    .line 60
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/World$2;

    invoke-direct {v1, p0, v2, v6}, Lcom/badlogic/gdx/physics/box2d/World$2;-><init>(Lcom/badlogic/gdx/physics/box2d/World;II)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    .line 71
    new-instance v1, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/LongMap;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    .line 74
    new-instance v1, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/LongMap;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    .line 77
    new-instance v1, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/LongMap;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    .line 80
    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    .line 83
    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    .line 94
    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    .line 98
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 99
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    .line 363
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    .line 364
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    .line 407
    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    .line 426
    new-array v1, v6, [J

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    .line 496
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-direct {v1, p0, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 497
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/Manifold;

    invoke-direct {v1, p0, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Manifold;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

    .line 498
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    invoke-direct {v1, p0, v4, v5}, Lcom/badlogic/gdx/physics/box2d/ContactImpulse;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    .line 112
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v1, v2, p2}, Lcom/badlogic/gdx/physics/box2d/World;->newWorld(FFZ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    .line 114
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 115
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    new-instance v2, Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-direct {v2, p0, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private beginContact(J)V
    .locals 2
    .param p1, "contactAddr"    # J

    .prologue
    .line 501
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->beginContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    .line 503
    :cond_0
    return-void
.end method

.method private contactFilter(JJ)Z
    .locals 7
    .param p1, "fixtureA"    # J
    .param p3, "fixtureB"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 481
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    if-eqz v3, :cond_0

    .line 482
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/physics/box2d/Fixture;

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v4, p3, p4}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-interface {v5, v3, v4}, Lcom/badlogic/gdx/physics/box2d/ContactFilter;->shouldCollide(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Fixture;)Z

    move-result v3

    .line 492
    :goto_0
    return v3

    .line 484
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;

    move-result-object v1

    .line 485
    .local v1, "filterA":Lcom/badlogic/gdx/physics/box2d/Filter;
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v3, p3, p4}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;

    move-result-object v2

    .line 487
    .local v2, "filterB":Lcom/badlogic/gdx/physics/box2d/Filter;
    iget-short v3, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    iget-short v6, v2, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    if-ne v3, v6, :cond_2

    iget-short v3, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    if-eqz v3, :cond_2

    .line 488
    iget-short v3, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 491
    :cond_2
    iget-short v3, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iget-short v6, v2, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    and-int/2addr v3, v6

    if-eqz v3, :cond_3

    iget-short v3, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iget-short v6, v2, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    and-int/2addr v3, v6

    if-eqz v3, :cond_3

    move v0, v4

    .local v0, "collide":Z
    :goto_1
    move v3, v0

    .line 492
    goto :goto_0

    .end local v0    # "collide":Z
    :cond_3
    move v0, v5

    .line 491
    goto :goto_1
.end method

.method private createProperJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)J
    .locals 23
    .param p1, "def"    # Lcom/badlogic/gdx/physics/box2d/JointDef;

    .prologue
    .line 197
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_0

    move-object/from16 v22, p1

    .line 198
    check-cast v22, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;

    .line 199
    .local v22, "d":Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v6, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->collideConnected:Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->length:F

    move-object/from16 v0, v22

    iget v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->frequencyHz:F

    move-object/from16 v0, v22

    iget v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->dampingRatio:F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateDistanceJoint(JJJZFFFFFFF)J

    move-result-wide v1

    .line 248
    .end local v22    # "d":Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;
    :goto_0
    return-wide v1

    .line 202
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_1

    move-object/from16 v22, p1

    .line 203
    check-cast v22, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;

    .line 204
    .local v22, "d":Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v6, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->collideConnected:Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->maxForce:F

    move-object/from16 v0, v22

    iget v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->maxTorque:F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v14}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateFrictionJoint(JJJZFFFFFF)J

    move-result-wide v1

    goto :goto_0

    .line 207
    .end local v22    # "d":Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;
    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_2

    move-object/from16 v22, p1

    .line 208
    check-cast v22, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;

    .line 209
    .local v22, "d":Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v6, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->collideConnected:Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint1:Lcom/badlogic/gdx/physics/box2d/Joint;

    iget-wide v9, v1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint2:Lcom/badlogic/gdx/physics/box2d/Joint;

    iget-wide v11, v1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    move-object/from16 v0, v22

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->ratio:F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateGearJoint(JJJZJJF)J

    move-result-wide v1

    goto :goto_0

    .line 211
    .end local v22    # "d":Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->LineJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_3

    move-object/from16 v22, p1

    .line 212
    check-cast v22, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;

    .line 213
    .local v22, "d":Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v6, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->collideConnected:Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v14, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-boolean v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->enableLimit:Z

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->lowerTranslation:F

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->upperTranslation:F

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->enableMotor:Z

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->maxMotorForce:F

    move/from16 v19, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->motorSpeed:F

    move/from16 v20, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v20}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateLineJoint(JJJZFFFFFFZFFZFF)J

    move-result-wide v1

    goto/16 :goto_0

    .line 218
    .end local v22    # "d":Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_4

    move-object/from16 v22, p1

    .line 219
    check-cast v22, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;

    .line 220
    .local v22, "d":Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v6, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->collideConnected:Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->target:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->target:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->maxForce:F

    move-object/from16 v0, v22

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->frequencyHz:F

    move-object/from16 v0, v22

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->dampingRatio:F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateMouseJoint(JJJZFFFFF)J

    move-result-wide v1

    goto/16 :goto_0

    .line 223
    .end local v22    # "d":Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;
    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_5

    move-object/from16 v22, p1

    .line 224
    check-cast v22, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;

    .line 225
    .local v22, "d":Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v6, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->collideConnected:Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAxis1:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAxis1:Lcom/badlogic/gdx/math/Vector2;

    iget v14, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->referenceAngle:F

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->enableLimit:Z

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->lowerTranslation:F

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->upperTranslation:F

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->enableMotor:Z

    move/from16 v19, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->maxMotorForce:F

    move/from16 v20, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->motorSpeed:F

    move/from16 v21, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v21}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreatePrismaticJoint(JJJZFFFFFFFZFFZFF)J

    move-result-wide v1

    goto/16 :goto_0

    .line 229
    .end local v22    # "d":Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;
    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_6

    move-object/from16 v22, p1

    .line 230
    check-cast v22, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;

    .line 231
    .local v22, "d":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v6, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->collideConnected:Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v14, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v15, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthA:F

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->maxLengthA:F

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthB:F

    move/from16 v19, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->maxLengthB:F

    move/from16 v20, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->ratio:F

    move/from16 v21, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v21}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreatePulleyJoint(JJJZFFFFFFFFFFFFF)J

    move-result-wide v1

    goto/16 :goto_0

    .line 236
    .end local v22    # "d":Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_7

    move-object/from16 v22, p1

    .line 237
    check-cast v22, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    .line 238
    .local v22, "d":Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v6, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->collideConnected:Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->referenceAngle:F

    move-object/from16 v0, v22

    iget-boolean v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableLimit:Z

    move-object/from16 v0, v22

    iget v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableMotor:Z

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->motorSpeed:F

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->maxMotorTorque:F

    move/from16 v19, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v19}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateRevoluteJoint(JJJZFFFFFZFFZFF)J

    move-result-wide v1

    goto/16 :goto_0

    .line 242
    .end local v22    # "d":Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    :cond_7
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_8

    move-object/from16 v22, p1

    .line 243
    check-cast v22, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;

    .line 244
    .local v22, "d":Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v6, v1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v22

    iget-boolean v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->collideConnected:Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v22

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->referenceAngle:F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateWeldJoint(JJJZFFFFF)J

    move-result-wide v1

    goto/16 :goto_0

    .line 248
    .end local v22    # "d":Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;
    :cond_8
    const-wide/16 v1, 0x0

    goto/16 :goto_0
.end method

.method private endContact(J)V
    .locals 2
    .param p1, "contactAddr"    # J

    .prologue
    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 507
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->endContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    .line 508
    :cond_0
    return-void
.end method

.method public static native getVelocityThreshold()F
.end method

.method private native jniClearForces(J)V
.end method

.method private native jniCreateBody(JIFFFFFFFFZZZZZF)J
.end method

.method private native jniCreateDistanceJoint(JJJZFFFFFFF)J
.end method

.method private native jniCreateFrictionJoint(JJJZFFFFFF)J
.end method

.method private native jniCreateGearJoint(JJJZJJF)J
.end method

.method private native jniCreateLineJoint(JJJZFFFFFFZFFZFF)J
.end method

.method private native jniCreateMouseJoint(JJJZFFFFF)J
.end method

.method private native jniCreatePrismaticJoint(JJJZFFFFFFFZFFZFF)J
.end method

.method private native jniCreatePulleyJoint(JJJZFFFFFFFFFFFFF)J
.end method

.method private native jniCreateRevoluteJoint(JJJZFFFFFZFFZFF)J
.end method

.method private native jniCreateWeldJoint(JJJZFFFFF)J
.end method

.method private native jniDestroyBody(JJ)V
.end method

.method private native jniDestroyJoint(JJ)V
.end method

.method private native jniDispose(J)V
.end method

.method private native jniGetAutoClearForces(J)Z
.end method

.method private native jniGetBodyCount(J)I
.end method

.method private native jniGetContactCount(J)I
.end method

.method private native jniGetContactList(J[J)V
.end method

.method private native jniGetGravity(J[F)V
.end method

.method private native jniGetJointcount(J)I
.end method

.method private native jniGetProxyCount(J)I
.end method

.method private native jniIsLocked(J)Z
.end method

.method private native jniQueryAABB(JFFFF)V
.end method

.method private native jniRayCast(JFFFF)V
.end method

.method private native jniSetAutoClearForces(JZ)V
.end method

.method private native jniSetContiousPhysics(JZ)V
.end method

.method private native jniSetGravity(JFF)V
.end method

.method private native jniSetWarmStarting(JZ)V
.end method

.method private native jniStep(JFII)V
.end method

.method private native newWorld(FFZ)J
.end method

.method private postSolve(JJ)V
    .locals 3
    .param p1, "contactAddr"    # J
    .param p3, "impulseAddr"    # J

    .prologue
    .line 517
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 518
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    iput-wide p3, v0, Lcom/badlogic/gdx/physics/box2d/ContactImpulse;->addr:J

    .line 519
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->postSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/ContactImpulse;)V

    .line 520
    :cond_0
    return-void
.end method

.method private preSolve(JJ)V
    .locals 3
    .param p1, "contactAddr"    # J
    .param p3, "manifoldAddr"    # J

    .prologue
    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 512
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

    iput-wide p3, v0, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    .line 513
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->preSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/Manifold;)V

    .line 514
    :cond_0
    return-void
.end method

.method private reportFixture(J)Z
    .locals 2
    .param p1, "addr"    # J

    .prologue
    .line 523
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    if-eqz v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/physics/box2d/QueryCallback;->reportFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;)Z

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportRayFixture(JFFFFF)F
    .locals 4
    .param p1, "addr"    # J
    .param p3, "pX"    # F
    .param p4, "pY"    # F
    .param p5, "nX"    # F
    .param p6, "nY"    # F
    .param p7, "fraction"    # F

    .prologue
    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p3, p4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, p5, p6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3, p7}, Lcom/badlogic/gdx/physics/box2d/RayCastCallback;->reportRayFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native setVelocityThreshold(F)V
.end method


# virtual methods
.method public QueryAABB(Lcom/badlogic/gdx/physics/box2d/QueryCallback;FFFF)V
    .locals 7
    .param p1, "callback"    # Lcom/badlogic/gdx/physics/box2d/QueryCallback;
    .param p2, "lowerX"    # F
    .param p3, "lowerY"    # F
    .param p4, "upperX"    # F
    .param p5, "upperY"    # F

    .prologue
    .line 403
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    .line 404
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniQueryAABB(JFFFF)V

    .line 405
    return-void
.end method

.method public clearForces()V
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniClearForces(J)V

    .line 309
    return-void
.end method

.method public createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 22
    .param p1, "def"    # Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->getValue()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p1

    iget v7, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p1

    iget v10, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularVelocity:F

    move-object/from16 v0, p1

    iget v11, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularDamping:F

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->awake:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->fixedRotation:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->bullet:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->active:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->inertiaScale:F

    move/from16 v18, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v18}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateBody(JIFFFFFFFFZZZZZF)J

    move-result-wide v20

    .line 145
    .local v20, "bodyAddr":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/World;->freeBodies:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 146
    .local v19, "body":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual/range {v19 .. v21}, Lcom/badlogic/gdx/physics/box2d/Body;->reset(J)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-object v19
.end method

.method public createJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)Lcom/badlogic/gdx/physics/box2d/Joint;
    .locals 8
    .param p1, "def"    # Lcom/badlogic/gdx/physics/box2d/JointDef;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/physics/box2d/World;->createProperJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)J

    move-result-wide v1

    .line 176
    .local v1, "jointAddr":J
    const/4 v0, 0x0

    .line 177
    .local v0, "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_0

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;

    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 178
    .restart local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_0
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_1

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;

    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 179
    .restart local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_1
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_2

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;

    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 180
    .restart local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_2
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->LineJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_3

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;

    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 181
    .restart local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_3
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_4

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJoint;

    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/MouseJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 182
    .restart local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_4
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_5

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;

    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 183
    .restart local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_5
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_6

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;

    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 184
    .restart local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_6
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_7

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 185
    .restart local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_7
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_8

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJoint;

    .end local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/WeldJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 186
    .restart local v0    # "joint":Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_8
    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v6, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-virtual {v5, v6, v7, v0}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_9
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v3, v5, v0}, Lcom/badlogic/gdx/physics/box2d/JointEdge;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 188
    .local v3, "jointEdgeA":Lcom/badlogic/gdx/physics/box2d/JointEdge;
    new-instance v4, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v4, v5, v0}, Lcom/badlogic/gdx/physics/box2d/JointEdge;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 189
    .local v4, "jointEdgeB":Lcom/badlogic/gdx/physics/box2d/JointEdge;
    iput-object v3, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    .line 190
    iput-object v4, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    .line 191
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-object v0
.end method

.method public destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 5
    .param p1, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v2, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    iget-wide v3, v1, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getJointList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getJointList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;->joint:Lcom/badlogic/gdx/physics/box2d/Joint;

    iget-wide v3, v1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_1
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v3, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyBody(JJ)V

    .line 166
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeBodies:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public destroyJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 4
    .param p1, "joint"    # Lcom/badlogic/gdx/physics/box2d/Joint;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 287
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v2, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyJoint(JJ)V

    .line 290
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 471
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniDispose(J)V

    .line 472
    return-void
.end method

.method public getAutoClearForces()Z
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetAutoClearForces(J)Z

    move-result v0

    return v0
.end method

.method public getBodies()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    return-object v0
.end method

.method public getBodyCount()I
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetBodyCount(J)I

    move-result v0

    return v0
.end method

.method public getContactCount()I
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetContactCount(J)I

    move-result v0

    return v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/World;->getContactCount()I

    move-result v4

    .line 435
    .local v4, "numContacts":I
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 436
    mul-int/lit8 v3, v4, 0x2

    .line 437
    .local v3, "newSize":I
    new-array v5, v3, [J

    iput-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    .line 438
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 439
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 441
    .end local v3    # "newSize":I
    :cond_0
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 442
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 443
    .local v1, "freeConts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v5, v4, v1

    if-ge v2, v5, :cond_1

    .line 444
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    new-instance v6, Lcom/badlogic/gdx/physics/box2d/Contact;

    const-wide/16 v7, 0x0

    invoke-direct {v6, p0, v7, v8}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "freeConts":I
    .end local v2    # "i":I
    :cond_1
    iget-wide v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v7, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    invoke-direct {p0, v5, v6, v7}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetContactList(J[J)V

    .line 448
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 449
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 450
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 451
    .local v0, "contact":Lcom/badlogic/gdx/physics/box2d/Contact;
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    aget-wide v5, v5, v2

    iput-wide v5, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 452
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 455
    .end local v0    # "contact":Lcom/badlogic/gdx/physics/box2d/Contact;
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    return-object v5
.end method

.method public getGravity()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetGravity(J[F)V

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getJointCount()I
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetJointcount(J)I

    move-result v0

    return v0
.end method

.method public getJoints()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Joint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    return-object v0
.end method

.method public getProxyCount()I
    .locals 2

    .prologue
    .line 329
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetProxyCount(J)I

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniIsLocked(J)Z

    move-result v0

    return v0
.end method

.method public rayCast(Lcom/badlogic/gdx/physics/box2d/RayCastCallback;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 7
    .param p1, "callback"    # Lcom/badlogic/gdx/physics/box2d/RayCastCallback;
    .param p2, "point1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "point2"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    .line 91
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniRayCast(JFFFF)V

    .line 92
    return-void
.end method

.method public setAutoClearForces(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetAutoClearForces(JZ)V

    .line 385
    return-void
.end method

.method public setContactFilter(Lcom/badlogic/gdx/physics/box2d/ContactFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    .line 132
    return-void
.end method

.method public setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/physics/box2d/ContactListener;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    .line 137
    return-void
.end method

.method public setContinuousPhysics(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetContiousPhysics(JZ)V

    .line 323
    return-void
.end method

.method public setDestructionListener(Lcom/badlogic/gdx/physics/box2d/DestructionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/physics/box2d/DestructionListener;

    .prologue
    .line 126
    return-void
.end method

.method public setGravity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p1, "gravity"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetGravity(JFF)V

    .line 358
    return-void
.end method

.method public setWarmStarting(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetWarmStarting(JZ)V

    .line 316
    return-void
.end method

.method public step(FII)V
    .locals 6
    .param p1, "timeStep"    # F
    .param p2, "velocityIterations"    # I
    .param p3, "positionIterations"    # I

    .prologue
    .line 299
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/World;->jniStep(JFII)V

    .line 300
    return-void
.end method
