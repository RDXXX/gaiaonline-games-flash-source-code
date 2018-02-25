.class public Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "MogaMiniHud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;
    }
.end annotation


# static fields
.field private static final HIDE_DURATION:F = 0.5f

.field private static final SHOW_DURATION:F = 0.5f


# instance fields
.field private effectActor:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

.field private hb:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

.field private healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private listener:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;

.field private moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field private mogaIndex:I

.field private overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private portraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;ILcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;)V
    .locals 18
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p2, "mogaIndex"    # I
    .param p3, "listener"    # Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 42
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->mogaIndex:I

    .line 43
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->listener:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "minihud"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 46
    .local v11, "hudName":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v15

    .line 49
    .local v15, "scaleFactor":F
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hud_bg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v3, v4}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v13

    .line 50
    .local v13, "portraitBg":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    const/high16 v3, -0x3fc00000    # -3.0f

    mul-float/2addr v3, v15

    iput v3, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 52
    const-string v3, "signBg"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v3, v4}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v16

    .line 53
    .local v16, "signEffectivenessBg":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v15

    move-object/from16 v0, v16

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 54
    iget v3, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, v16

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    sub-float/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 57
    const-string v4, "sign"

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v4, v3}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    move-object/from16 v0, v16

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    sub-float/2addr v5, v6

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    move-object/from16 v0, v16

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 61
    const-string v3, ""

    invoke-virtual/range {p1 .. p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v4

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v17

    .line 63
    .local v17, "zodiacSign":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v3, :cond_0

    .line 64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    move-object/from16 v0, v17

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, v17

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 69
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hud_level_bg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->sidePortraitBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v3, v4}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    iget v5, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    const v6, 0x3f59999a    # 0.85f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    iget v5, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 74
    const v3, 0x3f333333    # 0.7f

    mul-float v10, v15, v3

    .line 75
    .local v10, "hbScale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    div-float/2addr v3, v10

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    float-to-int v14, v3

    .line 76
    .local v14, "regionSize":I
    new-instance v9, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBarBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 77
    .local v9, "hbBg":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBarBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v3

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBarBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v14

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegionX(I)V

    .line 78
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v4, ""

    invoke-direct {v3, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    int-to-float v4, v14

    mul-float/2addr v4, v10

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBarBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v10

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 81
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    iget v5, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 82
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    div-float/2addr v3, v10

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4

    float-to-int v14, v3

    .line 86
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->hb:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->hb:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v14

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegionX(I)V

    .line 88
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->hb:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v10

    iput v4, v3, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->height:F

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    iget v6, v6, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->height:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->y:F

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    iput v4, v3, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->x:F

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->updateHealthbar()V

    .line 95
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v3, "blue_coffee_on"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->blueCoffeePortraitOn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v8, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 97
    .local v8, "blueCoffee":Lcom/badlogic/gdx/scenes/scene2d/actors/Button;
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;)V

    iput-object v3, v8, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    add-float/2addr v3, v4

    iput v3, v8, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->x:F

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    iput v3, v8, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->y:F

    .line 108
    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v3, ""

    invoke-virtual/range {p1 .. p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortrait()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v12, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 109
    .local v12, "portrait":Lcom/badlogic/gdx/scenes/scene2d/actors/Button;
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$2;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;)V

    iput-object v3, v12, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    .line 116
    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v3, v15

    iput v3, v12, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->x:F

    .line 117
    const/high16 v3, 0x41300000    # 11.0f

    mul-float/2addr v3, v15

    iput v3, v12, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->y:F

    .line 119
    invoke-static {v12}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 120
    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 122
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v15

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 123
    new-instance v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hud_level_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Lv. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v2 .. v7}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 124
    .local v2, "levelLabel":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->height:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 127
    iget v3, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->width:F

    .line 128
    iget v3, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->height:F

    .line 130
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    const-string v4, "effect"

    invoke-direct {v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->effectActor:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    .line 132
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 133
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->portraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 134
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBarBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->portraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->portraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 145
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v3, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->effectActor:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->portraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 155
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;)Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->listener:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->mogaIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->onMogaSelected()V

    return-void
.end method

.method private onMogaSelected()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->listener:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->mogaIndex:I

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;->onMogaSelected(I)V

    .line 223
    return-void
.end method


# virtual methods
.method public blueCoffeeApplied()V
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 206
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->updateHealthbar()V

    .line 208
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->effectActor:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    iget v2, v2, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->width:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->x:F

    .line 209
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->effectActor:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->y:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    iget v2, v2, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->height:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->y:F

    .line 211
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->effectActor:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->play()V

    .line 213
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "currentIslandId":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "monetization"

    const-string v2, "use_item"

    const-string v3, "blue_coffee"

    const-string v4, "blue_coffee_battle_team"

    const-string v5, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public setRival(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 5
    .param p1, "rival"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->signEffectiveness:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    .line 187
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v2

    .line 188
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v3

    .line 189
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v4

    .line 187
    invoke-virtual {v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getPowerTypeAgainst(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v2

    .line 186
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 190
    return-void
.end method

.method public showAll(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 176
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 177
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v2, v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->$(FFFLjava/lang/Float;F)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 178
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v2, v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->$(FFFLjava/lang/Float;F)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 181
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0
.end method

.method public showPortraitOnly(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 159
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 162
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 163
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v2, v2, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->$(FFFLjava/lang/Float;F)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 164
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v2, v2, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->$(FFFLjava/lang/Float;F)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->underPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 169
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->overPortraitGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0
.end method

.method public updateHealthbar()V
    .locals 8

    .prologue
    .line 197
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    const v4, 0x3f333333    # 0.7f

    mul-float v1, v3, v4

    .line 198
    .local v1, "hbScale":F
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 199
    .local v0, "barCompletion":F
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->levelBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    div-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v2, v3

    .line 200
    .local v2, "regionSize":F
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->hb:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegionX(I)V

    .line 201
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    mul-float v4, v2, v0

    mul-float/2addr v4, v1

    iput v4, v3, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->width:F

    .line 202
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->healthBar:Lcom/gaiaonline/monstergalaxy/battle/RegionImage;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->hb:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->hb:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->hb:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->setRegion(IIII)V

    .line 203
    return-void
.end method
