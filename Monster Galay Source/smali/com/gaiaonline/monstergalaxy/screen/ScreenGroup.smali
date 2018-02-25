.class public Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.source "ScreenGroup.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/Touchable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint:[I = null

.field public static final HOR_AR:F

.field public static final SCALE:F

.field public static final SCREEN_BASE_X:F = 480.0f

.field public static final SCREEN_BASE_Y:F = 320.0f

.field public static final VER_AR:F


# instance fields
.field protected elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field private flip:Z

.field private horMult:F

.field private overlay:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private tmp2Vector2:Lcom/badlogic/gdx/math/Vector2;

.field private tmpVector2:Lcom/badlogic/gdx/math/Vector2;

.field protected touchables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private verMult:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->values()[Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v0

    sput v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->HOR_AR:F

    .line 32
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v0

    sput v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->VER_AR:F

    .line 33
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    sput v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->SCALE:F

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmp2Vector2:Lcom/badlogic/gdx/math/Vector2;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->visible:Z

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->touchables:Ljava/util/List;

    .line 51
    sget v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->HOR_AR:F

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->horMult:F

    .line 52
    sget v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->VER_AR:F

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->verMult:F

    .line 53
    return-void
.end method

.method private calculateAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "element"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    .param p2, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "result"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 700
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint()[I

    move-result-object v0

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 716
    :goto_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint()[I

    move-result-object v0

    .line 719
    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 736
    :goto_1
    return-void

    .line 704
    :pswitch_0
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_0

    .line 709
    :pswitch_1
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_0

    .line 714
    :pswitch_2
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_0

    .line 723
    :pswitch_3
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 728
    :pswitch_4
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 733
    :pswitch_5
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 719
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private calculateFromAnchorToReference(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 5
    .param p1, "element"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    .param p2, "referenceSize"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "pos"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 652
    iget v0, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->percPosX:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 653
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->percPosX:F

    mul-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 675
    :goto_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->percPosY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 676
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->percPosY:F

    mul-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 696
    :goto_1
    return-void

    .line 655
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint()[I

    move-result-object v0

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 659
    :pswitch_0
    iget-object v0, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->horMult:F

    mul-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_0

    .line 664
    :pswitch_1
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v0, v4

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->horMult:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_0

    .line 669
    :pswitch_2
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->horMult:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_0

    .line 678
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint()[I

    move-result-object v0

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 682
    :pswitch_3
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->VER_AR:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 687
    :pswitch_4
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v0, v4

    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->VER_AR:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 692
    :pswitch_5
    iget-object v0, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->VER_AR:F

    mul-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 678
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 111
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 112
    .local v0, "element":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActorDeprecated(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 114
    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/Sprite;FFFFF)Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;
    .locals 2
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "alpha"    # F

    .prologue
    .line 449
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;

    invoke-direct {v0, p1, p6}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;F)V

    .line 450
    .local v0, "element":Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1, p2, p3}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 451
    invoke-virtual {v0, p4, p5}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->setSize(FF)V

    .line 452
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 454
    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .locals 9
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    .line 305
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v7, 0x0

    .line 306
    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 304
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .locals 1
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p7, "alignedTo"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    .param p8, "anchor"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 417
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-direct {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 418
    .local v0, "element":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    invoke-virtual {v0, p6, p2, p3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 419
    invoke-virtual {v0, p4, p5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setSize(FF)V

    .line 420
    if-eqz p8, :cond_0

    .line 421
    invoke-virtual {v0, p8}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 423
    :cond_0
    if-eqz p7, :cond_1

    .line 424
    invoke-virtual {v0, p7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 426
    :cond_1
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 427
    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .locals 9
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    const/4 v7, 0x0

    .line 324
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    .line 325
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v8, v7

    .line 324
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .locals 9
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p5, "anchor"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 366
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    .line 367
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v8, p5

    .line 366
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .locals 9
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p5, "alignedTo"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    .line 346
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 345
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .locals 9
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p5, "alignedTo"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    .param p6, "anchor"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 389
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    .line 390
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 389
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V
    .locals 2
    .param p1, "element"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    .line 98
    iput-object p0, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->parent:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    .line 99
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->flip:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->flip()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    instance-of v0, p1, Lcom/gaiaonline/monstergalaxy/screen/Touchable;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->touchables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 107
    return-void
.end method

.method public addBackground(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 5
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v4, 0x0

    .line 491
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v3, v3

    .line 490
    invoke-static {v2, v3, p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->newSolidRectangle(IILcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 492
    .local v1, "bkRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {p0, v1, v4, v4}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    .line 493
    .local v0, "bk":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->disposeTexture:Z

    .line 494
    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 495
    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 496
    return-void
.end method

.method public addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3
    .param p1, "background"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/4 v2, 0x0

    .line 480
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setSize(FF)V

    .line 481
    invoke-virtual {p0, p1, v2, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 482
    return-void
.end method

.method protected addEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->parent:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->addEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 614
    return-void
.end method

.method public addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .locals 9
    .param p1, "labelMsg"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "scale"    # F
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "isRegular"    # Z

    .prologue
    .line 137
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 138
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    .line 137
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    return-object v0
.end method

.method public addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .locals 11
    .param p1, "labelMsg"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "scale"    # F
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "isRegular"    # Z
    .param p7, "shadow"    # Z

    .prologue
    .line 188
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    return-object v0
.end method

.method public addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .locals 9
    .param p1, "labelMsg"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p5, "scale"    # F
    .param p6, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "isRegular"    # Z

    .prologue
    .line 165
    .line 166
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 165
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    return-object v0
.end method

.method public addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .locals 11
    .param p1, "labelMsg"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p5, "scale"    # F
    .param p6, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "isRegular"    # Z
    .param p8, "shadow"    # Z

    .prologue
    .line 214
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    return-object v0
.end method

.method public addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .locals 11
    .param p1, "labelMsg"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p5, "alignedTo"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    .param p6, "scale"    # F
    .param p7, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p8, "isRegular"    # Z
    .param p9, "shadow"    # Z

    .prologue
    .line 243
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    return-object v0
.end method

.method public addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .locals 6
    .param p1, "labelMsg"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p5, "alignedTo"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    .param p6, "anchor"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p7, "scale"    # F
    .param p8, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p9, "isRegular"    # Z
    .param p10, "shadow"    # Z

    .prologue
    .line 275
    if-eqz p10, :cond_2

    .line 276
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v2, p7

    move-object v3, p8

    move v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 281
    .local v0, "text":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    :goto_0
    invoke-virtual {v0, p4, p2, p3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 282
    if-eqz p6, :cond_0

    .line 283
    invoke-virtual {v0, p6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 285
    :cond_0
    if-eqz p5, :cond_1

    .line 286
    invoke-virtual {v0, p5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 288
    :cond_1
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 289
    return-object v0

    .line 279
    .end local v0    # "text":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    :cond_2
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-direct {v0, p1, p7, p8, p9}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .restart local v0    # "text":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    goto :goto_0
.end method

.method public addOverlay(F)V
    .locals 3
    .param p1, "alphaFactor"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 464
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    .line 465
    invoke-direct {v0, v1, v1, v1, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 464
    invoke-static {v2, v2, v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->newSolidRectangle(IILcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->overlay:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 466
    return-void
.end method

.method protected calculate(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V
    .locals 6
    .param p1, "element"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 623
    iget-object v2, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 625
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "No SIZE error"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 627
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 632
    :cond_1
    iget-object v2, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->alignElement:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    if-eqz v2, :cond_3

    .line 633
    iget-object v2, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->alignElement:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    iget-boolean v2, v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    if-eqz v2, :cond_2

    .line 634
    iget-object v2, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->alignElement:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->calculate(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 636
    :cond_2
    iget-object v2, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->alignElement:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    iget-object v1, v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    .line 641
    .local v1, "referenceSize":Lcom/badlogic/gdx/math/Vector2;
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 642
    .local v0, "actualPosition":Lcom/badlogic/gdx/math/Vector2;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, p1, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->calculateFromAnchorToReference(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 643
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, p1, v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->calculateAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 644
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 647
    return-void

    .line 639
    .end local v0    # "actualPosition":Lcom/badlogic/gdx/math/Vector2;
    .end local v1    # "referenceSize":Lcom/badlogic/gdx/math/Vector2;
    :cond_3
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    .restart local v1    # "referenceSize":Lcom/badlogic/gdx/math/Vector2;
    goto :goto_0
.end method

.method protected contains(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 3
    .param p1, "e"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    .param p2, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 739
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 740
    .local v0, "pos":Lcom/badlogic/gdx/math/Vector2;
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 741
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 742
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 743
    const/4 v1, 0x1

    .line 746
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 595
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 600
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->touchables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 602
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->overlay:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->overlay:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 606
    :cond_0
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    .line 607
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->touchables:Ljava/util/List;

    .line 608
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->overlay:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 610
    return-void

    .line 595
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 596
    .local v0, "element":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->dispose()V

    goto :goto_0
.end method

.method public flip()V
    .locals 3

    .prologue
    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->flip:Z

    .line 86
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->flip()V

    .line 87
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    return-void

    .line 87
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 88
    .local v0, "e":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->flip()V

    goto :goto_0
.end method

.method protected getAbsolutePosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "e"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->getAbsolutePosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 618
    .local v0, "pos":Lcom/badlogic/gdx/math/Vector2;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 619
    return-object v0
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 9
    .param p1, "origin"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 556
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 558
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "No SIZE error"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iput v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 560
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iput v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 562
    :cond_1
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->visible:Z

    if-eqz v0, :cond_4

    .line 563
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->overlay:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_2

    .line 564
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->overlay:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 565
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p2

    move v3, v2

    .line 564
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 590
    :cond_4
    return-void

    .line 567
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 568
    .local v7, "element":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    iget-boolean v0, v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->visible:Z

    if-eqz v0, :cond_3

    .line 569
    iget-boolean v0, v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    if-eqz v0, :cond_6

    .line 570
    invoke-virtual {p0, v7}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->calculate(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 572
    :cond_6
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector2;

    .line 573
    .local v6, "actualPos":Lcom/badlogic/gdx/math/Vector2;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 574
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 575
    iget-object v0, v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->alignElement:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    if-eqz v0, :cond_8

    .line 579
    iget-object v8, v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->alignElement:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 581
    .local v8, "ref":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    :cond_7
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 582
    iget-object v8, v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->alignElement:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 584
    if-nez v8, :cond_7

    .line 586
    .end local v8    # "ref":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    :cond_8
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v0, p2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0
.end method

.method public removeOverlay()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->overlay:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 471
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 57
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->horMult:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 58
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->verMult:F

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->needsRecalc:Z

    .line 60
    return-void
.end method

.method public setStretchable(Z)V
    .locals 2
    .param p1, "stretchable"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stretchable must be set before size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-eqz p1, :cond_1

    .line 75
    sget v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->HOR_AR:F

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->horMult:F

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    sget v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->SCALE:F

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->horMult:F

    goto :goto_0
.end method

.method public touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 6
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "releasePoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v3, 0x0

    .line 519
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->touchables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    move v2, v3

    .line 542
    :goto_1
    return v2

    .line 520
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->touchables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 521
    .local v1, "t":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    iget-boolean v2, v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->visible:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->contains(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 523
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 524
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmp2Vector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 525
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmp2Vector2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 527
    instance-of v2, v1, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 528
    check-cast v2, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iput-boolean v3, v2, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isPressed:Z

    :cond_1
    move-object v2, v1

    .line 531
    check-cast v2, Lcom/gaiaonline/monstergalaxy/screen/Touchable;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmp2Vector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v2, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Touchable;->touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    const/4 v2, 0x1

    goto :goto_1

    .line 537
    :cond_2
    instance-of v2, v1, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-eqz v2, :cond_3

    .line 538
    check-cast v1, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .end local v1    # "t":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    iput-boolean v3, v1, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isPressed:Z

    .line 519
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public touched(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 4
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 502
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->touchables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 512
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->touchables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 504
    .local v1, "t":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    iget-boolean v2, v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->visible:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->contains(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 506
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 507
    check-cast v1, Lcom/gaiaonline/monstergalaxy/screen/Touchable;

    .end local v1    # "t":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->tmpVector2:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Touchable;->touched(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    const/4 v2, 0x1

    goto :goto_1

    .line 502
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected update(F)V
    .locals 3
    .param p1, "deltaTime"    # F

    .prologue
    .line 547
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->elements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    return-void

    .line 547
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 548
    .local v0, "e":Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    iget-boolean v2, v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->visible:Z

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->update(F)V

    goto :goto_0
.end method
