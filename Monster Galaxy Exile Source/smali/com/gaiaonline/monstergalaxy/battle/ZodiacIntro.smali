.class public Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;
.super Lcom/badlogic/gdx/scenes/scene2d/Stage;
.source "ZodiacIntro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$Listener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType:[I = null

.field private static final LABEL_BAD:Ljava/lang/String; = "Less effective"

.field private static final LABEL_GOOD:Ljava/lang/String; = "More effective"


# instance fields
.field private attackerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

.field private attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private baseColor:Lcom/badlogic/gdx/graphics/Color;

.field private defenderSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

.field private defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private effect:Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

.field private effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

.field private effectivenessText:Ljava/lang/String;

.field private listener:Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$Listener;

.field private powerType:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

.field private vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->values()[Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->BAD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->GOOD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/badlogic/gdx/graphics/Color;Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V
    .locals 4
    .param p1, "attackerSign"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    .param p2, "defenderSign"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    .param p3, "baseColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "powerType"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 49
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 51
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .line 52
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .line 53
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    .line 54
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->powerType:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    .line 56
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    const-string v1, "ZodiacIntroEffect"

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effect:Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    .line 57
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effect:Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->x:F

    .line 58
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effect:Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->y:F

    .line 60
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType()[I

    move-result-object v0

    invoke-virtual {p4}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 62
    :pswitch_0
    const-string v0, "Less effective"

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessText:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effect:Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_WEAK:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->setEffectWithType(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effect:Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_NEUTRAL:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->setEffectWithType(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)V

    goto :goto_0

    .line 69
    :pswitch_2
    const-string v0, "More effective"

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessText:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effect:Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_STRONG:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->setEffectWithType(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->done()V

    return-void
.end method

.method private done()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 169
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 170
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 171
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->listener:Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$Listener;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$Listener;->onZodiacIntroFinished()V

    .line 175
    return-void
.end method


# virtual methods
.method public setListener(Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$Listener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->listener:Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$Listener;

    .line 77
    return-void
.end method

.method public start()V
    .locals 12

    .prologue
    .line 80
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackOutlines:Ljava/util/Map;

    .line 81
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 82
    .local v6, "attackerSignTR":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackOutlines:Ljava/util/Map;

    .line 83
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 84
    .local v7, "defenderSignTR":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "attackerSignImage"

    .line 85
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackOutlines:Ljava/util/Map;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 84
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 86
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "defenderSignImage"

    .line 87
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackOutlines:Ljava/util/Map;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 86
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 88
    const-string v0, "vs"

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->vs:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 92
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 93
    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 92
    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleY:F

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleX:F

    .line 94
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 95
    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 94
    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleY:F

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleX:F

    .line 97
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 98
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 100
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 101
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 103
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 104
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 106
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->powerType:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    if-eq v0, v1, :cond_0

    .line 107
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 108
    .local v2, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 109
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v1, "effectivenessLabel"

    .line 110
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessText:Ljava/lang/String;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 109
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    .line 112
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget v3, v3, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 113
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget v3, v3, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->height:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 115
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v3, 0x0

    .line 116
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v5

    mul-float/2addr v4, v5

    .line 117
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v11

    mul-float/2addr v5, v11

    const/high16 v11, 0x3e800000    # 0.25f

    .line 115
    invoke-static {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 118
    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v4

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 117
    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v4

    aput-object v4, v1, v3

    .line 115
    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 122
    .end local v2    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 124
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 125
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effect:Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 129
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 130
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 131
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 133
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->effectivenessLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/high16 v3, 0x40800000    # 4.0f

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleY:F

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleX:F

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    .line 139
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v3

    aput-object v3, v0, v1

    .line 138
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v10

    .line 140
    .local v10, "vsSequence":Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$1;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 147
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    move-result-object v9

    .line 148
    .local v9, "easeOut":Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;

    move-result-object v8

    .line 150
    .local v8, "easeIn":Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->vsImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 151
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v3, 0x0

    .line 153
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    .line 154
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    .line 153
    sub-float/2addr v4, v5

    .line 155
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    const/high16 v11, 0x3fc00000    # 1.5f

    .line 152
    invoke-static {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v4

    .line 155
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 156
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->attackerSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    move-result-object v4

    aput-object v4, v1, v3

    .line 151
    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 158
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v3, 0x0

    .line 160
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    .line 161
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    .line 160
    sub-float/2addr v4, v5

    .line 162
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    const/high16 v11, 0x3fc00000    # 1.5f

    .line 159
    invoke-static {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v4

    .line 162
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 163
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    neg-float v4, v4

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->defenderSignImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v4

    .line 164
    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    move-result-object v4

    aput-object v4, v1, v3

    .line 158
    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 165
    return-void
.end method
