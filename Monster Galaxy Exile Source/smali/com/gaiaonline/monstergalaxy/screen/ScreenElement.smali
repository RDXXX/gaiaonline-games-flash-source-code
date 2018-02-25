.class public abstract Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint:[I


# instance fields
.field protected alignElement:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

.field protected anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field protected color:Lcom/badlogic/gdx/graphics/Color;

.field private effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

.field protected needsRecalc:Z

.field protected parent:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

.field protected percPosX:F

.field protected percPosY:F

.field protected final position:Lcom/badlogic/gdx/math/Vector2;

.field protected referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field private scale:F

.field protected final size:Lcom/badlogic/gdx/math/Vector2;

.field protected visible:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint:[I

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
    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint:[I

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

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->scale:F

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    .line 47
    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->visible:Z

    .line 48
    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 51
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 52
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 53
    return-void
.end method

.method private calculateForRelPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p1, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "where"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 294
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 296
    .local v0, "result":Lcom/badlogic/gdx/math/Vector2;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 312
    :goto_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$ScreenElement$RelPoint()[I

    move-result-object v1

    .line 315
    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 333
    :goto_1
    return-object v0

    .line 300
    :pswitch_0
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_0

    .line 305
    :pswitch_1
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_0

    .line 310
    :pswitch_2
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_0

    .line 319
    :pswitch_3
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 324
    :pswitch_4
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 329
    :pswitch_5
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 296
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

    .line 315
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
.method protected abstract dispose()V
.end method

.method public flip()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 219
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_2

    .line 220
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 239
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_7

    .line 240
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 257
    :cond_1
    :goto_1
    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_3

    .line 223
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_4

    .line 226
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_0

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_5

    .line 229
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_0

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_6

    .line 232
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_0

    .line 234
    :cond_6
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_0

    .line 235
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_0

    .line 242
    :cond_7
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_8

    .line 243
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_1

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_9

    .line 246
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_1

    .line 248
    :cond_9
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_a

    .line 249
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_1

    .line 251
    :cond_a
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_b

    .line 252
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_1

    .line 254
    :cond_b
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    if-ne v0, v1, :cond_1

    .line 255
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    goto :goto_1
.end method

.method public getAbsolutePosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Element not positioned yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->parent:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->getAbsolutePosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public isAlreadyPositioned()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->visible:Z

    return v0
.end method

.method public playEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V
    .locals 5
    .param p1, "effect"    # Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    .param p2, "where"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 275
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->getAbsolutePosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 276
    .local v0, "actualPos":Lcom/badlogic/gdx/math/Vector2;
    invoke-direct {p0, v0, p2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->calculateForRelPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 277
    .local v1, "effectPos":Lcom/badlogic/gdx/math/Vector2;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setPosition(FF)V

    .line 278
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 279
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->parent:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->addEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 280
    return-void
.end method

.method public playEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V
    .locals 1
    .param p1, "effectType"    # Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;
    .param p2, "where"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 283
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->playEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 284
    return-void
.end method

.method protected abstract present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
.end method

.method public setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V
    .locals 1
    .param p1, "element"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->alignElement:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 183
    return-void
.end method

.method public setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V
    .locals 1
    .param p1, "anchorPoint"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 167
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 172
    return-void
.end method

.method public setPosXAsPercentage(I)V
    .locals 2
    .param p1, "percentage"    # I

    .prologue
    .line 113
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->percPosX:F

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 115
    return-void
.end method

.method public setPosYAsPercentage(I)V
    .locals 2
    .param p1, "percentage"    # I

    .prologue
    .line 124
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->percPosY:F

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 126
    return-void
.end method

.method public setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V
    .locals 1
    .param p1, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 66
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 67
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iput p3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 70
    return-void
.end method

.method public setPositionX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 90
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->percPosX:F

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 93
    return-void
.end method

.method public setPositionY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 101
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->position:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->percPosY:F

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 104
    return-void
.end method

.method public setReference(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V
    .locals 0
    .param p1, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->referencePoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 82
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 191
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->scale:F

    .line 192
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 194
    return-void
.end method

.method public setSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 135
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->scale:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 136
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->size:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    mul-float/2addr v1, p2

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->scale:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->needsRecalc:Z

    .line 138
    return-void
.end method

.method public setSize(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 147
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->setSize(FF)V

    .line 148
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->visible:Z

    .line 203
    return-void
.end method

.method protected update(F)V
    .locals 0
    .param p1, "deltaTime"    # F

    .prologue
    .line 288
    return-void
.end method
