.class public Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
.super Ljava/lang/Object;
.source "MogaType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;,
        Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacSign:[I = null

.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$moga$MogaType$Rarity:[I = null

.field private static final serialVersionUID:J = -0xf7ba47361f221a2L


# instance fields
.field private assetName:Ljava/lang/String;

.field private attackRating:I

.field private basicAttack:Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

.field private blueCoffeeMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

.field private counterMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

.field private deadMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

.field private defense:I

.field private description:Ljava/lang/String;

.field private dodgeMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

.field private enterBattleMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

.field private hitMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

.field private id:I

.field private idleMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

.field private islandId:I

.field private maxHealth:I

.field private name:Ljava/lang/String;

.field private offense:I

.field private portraitAsset:Ljava/lang/String;

.field private purchasable:Z

.field private rarity:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

.field private runawayFailedMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

.field private runawayMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

.field private subType:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

.field private zodiacAttack:Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

.field private zodiacRating:I

.field private zodiacSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacSign()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacSign:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->values()[Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->AQUARIUS:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ARIES:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->CANCER:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->CAPRICORN:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->GEMINI:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->LEO:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->LIBRA:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->PISCES:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->SAGITTARIUS:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->SCORPIO:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->TAURUS:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->VIRGO:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacSign:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$moga$MogaType$Rarity()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$moga$MogaType$Rarity:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->values()[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->BEGINNER:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->COMMON:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->EPIC:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->LEGENDARY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->RARE:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->SUPER_RARE:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->UNCOMMON:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$moga$MogaType$Rarity:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private translateColor(Lcom/badlogic/gdx/graphics/Color;III)V
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 252
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 253
    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 254
    int-to-float v0, p4

    div-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 255
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 256
    return-void
.end method


# virtual methods
.method public getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;
    .locals 4

    .prologue
    .line 314
    new-instance v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    const-string v1, "entireMogas"

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAssetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "png"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->assetName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->assetName:Ljava/lang/String;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttackRating()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->attackRating:I

    return v0
.end method

.method public getBasicAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->basicAttack:Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    return-object v0
.end method

.method public getBlueCoffeeMove()Lcom/gaiaonline/monstergalaxy/model/move/Move;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->blueCoffeeMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    return-object v0
.end method

.method public getCaptureBonus()F
    .locals 3

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 463
    .local v0, "captureBonus":F
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$moga$MogaType$Rarity()[I

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->rarity:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 489
    :goto_0
    return v0

    .line 465
    :pswitch_0
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusBeginner:F

    .line 468
    :pswitch_1
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusCommon:F

    .line 471
    :pswitch_2
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusUncommon:F

    .line 474
    :pswitch_3
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusRare:F

    .line 477
    :pswitch_4
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusSuperRare:F

    .line 480
    :pswitch_5
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusEpic:F

    .line 483
    :pswitch_6
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusLegendary:F

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getCaptureCost()I
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureCosts:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarity()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCounterMove()Lcom/gaiaonline/monstergalaxy/model/move/Move;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->counterMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    return-object v0
.end method

.method public getDeadMove()Lcom/gaiaonline/monstergalaxy/model/move/Move;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->deadMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    return-object v0
.end method

.method public getDefense()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->defense:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->description:Ljava/lang/String;

    const-string v1, "\\Q<q>\\E"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "\\Q</q>\\E"

    const-string v2, "\""

    .line 318
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDodgeMove()Lcom/gaiaonline/monstergalaxy/model/move/Move;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->dodgeMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    return-object v0
.end method

.method public getEnterBattleMove()Lcom/gaiaonline/monstergalaxy/model/move/Move;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->enterBattleMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    return-object v0
.end method

.method public getFixedXP()I
    .locals 2

    .prologue
    .line 440
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$moga$MogaType$Rarity()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarity()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 456
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 442
    :pswitch_0
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPBeginner:I

    goto :goto_0

    .line 444
    :pswitch_1
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPCommon:I

    goto :goto_0

    .line 446
    :pswitch_2
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPEpic:I

    goto :goto_0

    .line 448
    :pswitch_3
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPLegendary:I

    goto :goto_0

    .line 450
    :pswitch_4
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPRare:I

    goto :goto_0

    .line 452
    :pswitch_5
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPSuperRare:I

    goto :goto_0

    .line 454
    :pswitch_6
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPUncommon:I

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getGlowImage()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 5

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "b."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->assetName:Ljava/lang/String;

    const-string v2, "_"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 302
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->assetName:Ljava/lang/String;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getHitMove()Lcom/gaiaonline/monstergalaxy/model/move/Move;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->hitMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->id:I

    return v0
.end method

.method public getIdleMove()Lcom/gaiaonline/monstergalaxy/model/move/Move;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->idleMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    return-object v0
.end method

.method public getIslandId()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->islandId:I

    return v0
.end method

.method protected getMaxHealth()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->maxHealth:I

    return v0
.end method

.method public getMogaCashPrice()I
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getCaptureCost()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffense()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->offense:I

    return v0
.end method

.method public getPortrait()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->portraitAsset:Ljava/lang/String;

    const/4 v1, 0x0

    .line 292
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->portraitAsset:Ljava/lang/String;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 291
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 292
    const/16 v1, 0x5f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getPortraitAssetName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->portraitAsset:Ljava/lang/String;

    const-string v1, ".png"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRarity()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->rarity:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    return-object v0
.end method

.method public getRarityAssetName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "assetName":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$moga$MogaType$Rarity()[I

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->rarity:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 188
    const-string v0, "beginner"

    .line 192
    :goto_0
    return-object v0

    .line 167
    :pswitch_0
    const-string v0, "beginner"

    .line 168
    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "common"

    .line 171
    goto :goto_0

    .line 173
    :pswitch_2
    const-string v0, "uncommon"

    .line 174
    goto :goto_0

    .line 176
    :pswitch_3
    const-string v0, "rare"

    .line 177
    goto :goto_0

    .line 179
    :pswitch_4
    const-string v0, "superrare"

    .line 180
    goto :goto_0

    .line 182
    :pswitch_5
    const-string v0, "epic"

    .line 183
    goto :goto_0

    .line 185
    :pswitch_6
    const-string v0, "legendary"

    .line 186
    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getRarityColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 8

    .prologue
    const v7, 0x3f7ae148    # 0.98f

    const v6, 0x3e428f5c    # 0.19f

    const/4 v5, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$moga$MogaType$Rarity()[I

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->rarity:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 525
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-direct {v0, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 529
    .restart local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    :goto_0
    return-object v0

    .line 497
    :pswitch_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-direct {v0, v4, v4, v4, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 498
    .restart local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 501
    :pswitch_1
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    const v1, 0x3e851eb8    # 0.26f

    const v2, 0x3e8a3d71    # 0.27f

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 502
    .restart local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 505
    :pswitch_2
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f547ae1    # 0.83f

    const v3, 0x3f7d70a4    # 0.99f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 506
    .restart local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 509
    :pswitch_3
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    const v1, 0x3f266666    # 0.65f

    invoke-direct {v0, v5, v1, v4, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 510
    .restart local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 513
    :pswitch_4
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    const v1, 0x3ec28f5c    # 0.38f

    invoke-direct {v0, v7, v1, v7, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 514
    .restart local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 517
    :pswitch_5
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    const v1, 0x3f63d70a    # 0.89f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 518
    .restart local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 521
    :pswitch_6
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    .end local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-direct {v0, v4, v6, v6, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 522
    .restart local v0    # "color":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getRunawayFailedMove()Lcom/gaiaonline/monstergalaxy/model/move/Move;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->runawayFailedMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    return-object v0
.end method

.method public getRunawayMove()Lcom/gaiaonline/monstergalaxy/model/move/Move;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->runawayMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    return-object v0
.end method

.method public getSubType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->subType:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    return-object v0
.end method

.method public getZodiacAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->zodiacAttack:Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    return-object v0
.end method

.method public getZodiacRating()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->zodiacRating:I

    return v0
.end method

.method public getZodiacRecharge()F
    .locals 3

    .prologue
    .line 343
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->zodiacRecharge:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacRating()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 344
    .local v0, "turns":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 345
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 347
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 348
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method public getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->zodiacSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    return-object v0
.end method

.method public isPurchasable()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->purchasable:Z

    return v0
.end method

.method public setAssetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->assetName:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setAttackRating(I)V
    .locals 0
    .param p1, "attackRating"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->attackRating:I

    .line 332
    return-void
.end method

.method public setBasicAttack(Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;)V
    .locals 0
    .param p1, "basicAttack"    # Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->basicAttack:Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    .line 357
    return-void
.end method

.method public setBlueCoffeeMove(Lcom/gaiaonline/monstergalaxy/model/move/Move;)V
    .locals 0
    .param p1, "blueCoffeeMove"    # Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->blueCoffeeMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .line 437
    return-void
.end method

.method public setCounterMove(Lcom/gaiaonline/monstergalaxy/model/move/Move;)V
    .locals 0
    .param p1, "counterMove"    # Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->counterMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .line 381
    return-void
.end method

.method public setDeadMove(Lcom/gaiaonline/monstergalaxy/model/move/Move;)V
    .locals 0
    .param p1, "deadMove"    # Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->deadMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .line 405
    return-void
.end method

.method public setDefense(I)V
    .locals 0
    .param p1, "defense"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->defense:I

    .line 284
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->description:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setDodgeMove(Lcom/gaiaonline/monstergalaxy/model/move/Move;)V
    .locals 0
    .param p1, "dodgeMove"    # Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->dodgeMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .line 373
    return-void
.end method

.method public setEnterBattleMove(Lcom/gaiaonline/monstergalaxy/model/move/Move;)V
    .locals 0
    .param p1, "enterBattleMove"    # Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->enterBattleMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .line 413
    return-void
.end method

.method public setHitMove(Lcom/gaiaonline/monstergalaxy/model/move/Move;)V
    .locals 0
    .param p1, "hitMove"    # Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->hitMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .line 397
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->id:I

    .line 132
    return-void
.end method

.method public setIdleMove(Lcom/gaiaonline/monstergalaxy/model/move/Move;)V
    .locals 0
    .param p1, "idleMove"    # Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->idleMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .line 389
    return-void
.end method

.method public setIslandId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 533
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->islandId:I

    .line 534
    return-void
.end method

.method public setMaxHealth(I)V
    .locals 0
    .param p1, "maxHealth"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->maxHealth:I

    .line 124
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->name:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setOffense(I)V
    .locals 0
    .param p1, "offense"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->offense:I

    .line 272
    return-void
.end method

.method public setPortraitAsset(Ljava/lang/String;)V
    .locals 0
    .param p1, "portraitAsset"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->portraitAsset:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setPurchasable(Z)V
    .locals 0
    .param p1, "purchasable"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->purchasable:Z

    .line 160
    return-void
.end method

.method public setRarity(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;)V
    .locals 0
    .param p1, "rarity"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->rarity:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    .line 148
    return-void
.end method

.method public setRarityColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/16 v5, 0xfb

    const/16 v4, 0x30

    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 196
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$moga$MogaType$Rarity()[I

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->rarity:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Rarity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown color for rarity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->rarity:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 198
    :pswitch_0
    invoke-direct {p0, p1, v2, v2, v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 201
    :pswitch_1
    const/16 v0, 0x42

    const/16 v1, 0xfd

    const/16 v2, 0x43

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 204
    :pswitch_2
    const/16 v0, 0x3a

    const/16 v1, 0xd5

    const/16 v2, 0xfc

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 207
    :pswitch_3
    const/16 v0, 0x65

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 210
    :pswitch_4
    const/16 v0, 0x60

    invoke-direct {p0, p1, v5, v0, v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 213
    :pswitch_5
    const/16 v0, 0xe3

    const/16 v1, 0xb3

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 216
    :pswitch_6
    invoke-direct {p0, p1, v2, v4, v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setRunawayFailedMove(Lcom/gaiaonline/monstergalaxy/model/move/Move;)V
    .locals 0
    .param p1, "runawayFailedMove"    # Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->runawayFailedMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .line 429
    return-void
.end method

.method public setRunawayMove(Lcom/gaiaonline/monstergalaxy/model/move/Move;)V
    .locals 0
    .param p1, "runawayMove"    # Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->runawayMove:Lcom/gaiaonline/monstergalaxy/model/move/Move;

    .line 421
    return-void
.end method

.method public setSubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)V
    .locals 0
    .param p1, "subType"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->subType:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    .line 542
    return-void
.end method

.method public setZodiacAttack(Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;)V
    .locals 0
    .param p1, "zodiacAttack"    # Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->zodiacAttack:Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    .line 365
    return-void
.end method

.method public setZodiacColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 224
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacSign()[I

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->zodiacSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Zodiac"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown color for sign: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->zodiacSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 228
    :pswitch_0
    invoke-direct {p0, p1, v3, v2, v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 233
    :pswitch_1
    const/16 v0, 0x9c

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 238
    :pswitch_2
    const/16 v0, 0xb2

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 243
    :pswitch_3
    const/16 v0, 0x99

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->translateColor(Lcom/badlogic/gdx/graphics/Color;III)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setZodiacRating(I)V
    .locals 0
    .param p1, "zodiacRating"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->zodiacRating:I

    .line 340
    return-void
.end method

.method public setZodiacSign(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)V
    .locals 0
    .param p1, "zodiacSign"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->zodiacSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .line 264
    return-void
.end method
