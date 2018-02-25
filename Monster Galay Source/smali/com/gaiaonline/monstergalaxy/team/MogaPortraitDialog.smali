.class public Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "MogaPortraitDialog.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType:[I


# instance fields
.field private mogaImage:Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType:[I

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
    sput-object v0, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType:[I

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

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 41
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 29
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v34

    .line 30
    .local v34, "zodiacHelper":Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v28

    .line 31
    .local v28, "mogaZodiac":Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v31, "strong":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v29, "normal":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v32, "weak":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->values()[Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v7

    array-length v9, v7

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v9, :cond_5

    .line 56
    const-string v5, "card.view.bg"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 58
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v8, 0x43540000    # 212.0f

    const/high16 v9, 0x43050000    # 133.0f

    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, -0x3cb80000    # -200.0f

    const/high16 v7, 0x43110000    # 145.0f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v9, 0x0

    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v11, 0x3f400000    # 0.75f

    .line 61
    const-string v12, "team_color_01"

    invoke-static {v12}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v4, p0

    .line 60
    invoke-virtual/range {v4 .. v14}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 64
    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getDescription()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    .line 65
    const-string v7, "team_color_02"

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    const/4 v8, 0x1

    const/high16 v9, 0x43690000    # 233.0f

    .line 64
    invoke-direct/range {v4 .. v9}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 66
    .local v4, "descriptionLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 67
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v7, -0x3dcc0000    # -45.0f

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-virtual {v4, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 68
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 71
    new-instance v5, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;

    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;-><init>(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->mogaImage:Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;

    .line 72
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->mogaImage:Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v9, -0x3cf40000    # -140.0f

    const/high16 v11, 0x41c80000    # 25.0f

    invoke-virtual {v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 73
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->mogaImage:Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarityAssetName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    .line 76
    .local v6, "rarity":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/high16 v7, -0x3cf40000    # -140.0f

    const/high16 v8, -0x3de00000    # -40.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v5

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v37

    .line 81
    .local v37, "zodiacSign":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v37, :cond_0

    .line 82
    const-string v5, "sign.aries"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v37

    .line 85
    :cond_0
    const/high16 v38, -0x3ccc0000    # -180.0f

    .line 86
    .local v38, "zodiacSignPosX":F
    const/high16 v39, -0x3d500000    # -88.0f

    .line 87
    .local v39, "zodiacSignPosY":F
    const/high16 v35, -0x3ce00000    # -160.0f

    .line 88
    .local v35, "zodiacLabelPosX":F
    const/high16 v14, -0x3d560000    # -85.0f

    .line 90
    .local v14, "zodiacLabelPosY":F
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    const/high16 v39, -0x3d060000    # -125.0f

    .line 92
    const/high16 v36, -0x3d0c0000    # -122.0f

    .line 94
    .end local v14    # "zodiacLabelPosY":F
    .local v36, "zodiacLabelPosY":F
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Level "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x42e60000    # 115.0f

    const/high16 v10, 0x43110000    # 145.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v12, 0x0

    sget-object v13, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v14, 0x3f19999a    # 0.6f

    .line 95
    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v7, p0

    .line 94
    invoke-virtual/range {v7 .. v17}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 98
    const-string v5, "empty.bar.card"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v8

    const/high16 v9, -0x3cf30000    # -141.0f

    const/high16 v10, -0x3d740000    # -70.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v12, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 100
    new-instance v27, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const-string v5, "full.hp.bar.card"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 101
    .local v27, "healthBar":Lcom/gaiaonline/monstergalaxy/screen/LifeElement;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v7, -0x3caf0000    # -209.0f

    const/high16 v9, -0x3d780000    # -68.0f

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setMaxLife(I)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " HP"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "healthText":Ljava/lang/String;
    const/high16 v9, -0x3cf80000    # -136.0f

    const/high16 v10, -0x3d780000    # -68.0f

    const v11, 0x3ecccccd    # 0.4f

    sget-object v12, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v13, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 111
    const-string v5, "empty.bar.card"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    const/high16 v11, -0x3cf30000    # -141.0f

    const/high16 v12, -0x3d420000    # -95.0f

    sget-object v13, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v14, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 112
    new-instance v26, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const-string v5, "full.xp.bar.card"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 113
    .local v26, "experienceBar":Lcom/gaiaonline/monstergalaxy/screen/LifeElement;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v7, -0x3caf0000    # -209.0f

    const/high16 v9, -0x3d460000    # -93.0f

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCurrentXPForNextLevel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getNeededXPForNextLevel()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " XP"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, "experienceText":Ljava/lang/String;
    const/high16 v11, -0x3cf80000    # -136.0f

    const/high16 v12, -0x3d460000    # -93.0f

    const v13, 0x3ecccccd    # 0.4f

    sget-object v14, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v15, 0x1

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move/from16 v14, v36

    .line 121
    .end local v8    # "healthText":Ljava/lang/String;
    .end local v10    # "experienceText":Ljava/lang/String;
    .end local v26    # "experienceBar":Lcom/gaiaonline/monstergalaxy/screen/LifeElement;
    .end local v27    # "healthBar":Lcom/gaiaonline/monstergalaxy/screen/LifeElement;
    .end local v36    # "zodiacLabelPosY":F
    .restart local v14    # "zodiacLabelPosY":F
    :cond_1
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v7, v7, v38

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v39, v9

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 122
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v5, v1, v2, v7}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 123
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v12

    .line 126
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v16, 0x0

    sget-object v17, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v18, 0x3f000000    # 0.5f

    const-string v5, "team_color_02"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v11, p0

    move/from16 v13, v35

    .line 125
    invoke-virtual/range {v11 .. v21}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 128
    const-string v5, "team_color_02"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v40

    .line 131
    .local v40, "zodiacSignTextColor":Lcom/badlogic/gdx/graphics/Color;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, -0x3e100000    # -30.0f

    const/4 v9, 0x0

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 132
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->GOOD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, -0x3e100000    # -30.0f

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 133
    const/high16 v5, -0x3e100000    # -30.0f

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 134
    const-string v16, "Strong"

    const/high16 v17, -0x3db80000    # -50.0f

    const/high16 v18, -0x3ee00000    # -10.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v22, 0x3f000000    # 0.5f

    sget-object v23, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 136
    const-string v5, "zodiac.bg"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v33

    .line 138
    .local v33, "zodiacBg":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2

    .line 139
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v7, 0x41200000    # 10.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 140
    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v9, 0x41200000    # 10.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 141
    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x420c0000    # 35.0f

    const/high16 v18, 0x41880000    # 17.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 143
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v7, -0x3e900000    # -15.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 144
    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v9, -0x3e900000    # -15.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 145
    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x420c0000    # 35.0f

    const/high16 v18, -0x3f000000    # -8.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 147
    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v7, 0x41200000    # 10.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 148
    const/4 v5, 0x2

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v9, 0x41200000    # 10.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 149
    const/4 v5, 0x2

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x43070000    # 135.0f

    const/high16 v18, 0x41880000    # 17.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 151
    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v7, -0x3e900000    # -15.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 152
    const/4 v5, 0x3

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v9, -0x3e900000    # -15.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 153
    const/4 v5, 0x3

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x43070000    # 135.0f

    const/high16 v18, -0x3f000000    # -8.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 157
    :cond_2
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, -0x3e100000    # -30.0f

    const/high16 v9, -0x3d900000    # -60.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 158
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, -0x3e100000    # -30.0f

    const/high16 v9, -0x3d940000    # -59.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 159
    const/high16 v5, -0x3e100000    # -30.0f

    const/high16 v7, -0x3d940000    # -59.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 160
    const-string v16, "Normal"

    const/high16 v17, -0x3da80000    # -54.0f

    const/high16 v18, -0x3d780000    # -68.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v22, 0x3f000000    # 0.5f

    sget-object v23, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 162
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    .line 163
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v7, -0x3dc00000    # -48.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 164
    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v9, -0x3dc00000    # -48.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 165
    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x420c0000    # 35.0f

    const/high16 v18, -0x3dd80000    # -42.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 167
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v7, -0x3d6e0000    # -73.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 168
    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v9, -0x3d6e0000    # -73.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 169
    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x420c0000    # 35.0f

    const/high16 v18, -0x3d7a0000    # -67.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 171
    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v7, -0x3dc00000    # -48.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 172
    const/4 v5, 0x2

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v9, -0x3dc00000    # -48.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 173
    const/4 v5, 0x2

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x43070000    # 135.0f

    const/high16 v18, -0x3dd80000    # -42.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 175
    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v7, -0x3d6e0000    # -73.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 176
    const/4 v5, 0x3

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v9, -0x3d6e0000    # -73.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 177
    const/4 v5, 0x3

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x43070000    # 135.0f

    const/high16 v18, -0x3d7a0000    # -67.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 181
    :cond_3
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, -0x3e100000    # -30.0f

    const/high16 v9, -0x3d180000    # -116.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 182
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->BAD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, -0x3e100000    # -30.0f

    const/high16 v9, -0x3d1a0000    # -115.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 183
    const/high16 v5, -0x3e100000    # -30.0f

    const/high16 v7, -0x3d1a0000    # -115.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 184
    const-string v16, "Weak"

    const/high16 v17, -0x3db80000    # -50.0f

    const/high16 v18, -0x3d060000    # -125.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v22, 0x3f000000    # 0.5f

    sget-object v23, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 186
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_4

    .line 187
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v7, -0x3d280000    # -108.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 188
    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v9, -0x3d280000    # -108.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 189
    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x420c0000    # 35.0f

    const/high16 v18, -0x3d340000    # -102.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 191
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v7, -0x3cfb0000    # -133.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 192
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v9, -0x3cfb0000    # -133.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 193
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x420c0000    # 35.0f

    const/high16 v18, -0x3d020000    # -127.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 195
    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v7, -0x3d280000    # -108.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 196
    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v9, -0x3d280000    # -108.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 197
    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x43070000    # 135.0f

    const/high16 v18, -0x3d340000    # -102.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 199
    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v7, -0x3cfb0000    # -133.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5, v7, v9}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 200
    const/4 v5, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v9, -0x3cfb0000    # -133.0f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v9, v11}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 201
    const/4 v5, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getCamelCaseName()Ljava/lang/String;

    move-result-object v16

    const/high16 v17, 0x43070000    # 135.0f

    const/high16 v18, -0x3d020000    # -127.0f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v20, 0x0

    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v15, p0

    move-object/from16 v23, v40

    invoke-virtual/range {v15 .. v25}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 204
    :cond_4
    return-void

    .line 35
    .end local v4    # "descriptionLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .end local v6    # "rarity":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v14    # "zodiacLabelPosY":F
    .end local v33    # "zodiacBg":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v35    # "zodiacLabelPosX":F
    .end local v37    # "zodiacSign":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v38    # "zodiacSignPosX":F
    .end local v39    # "zodiacSignPosY":F
    .end local v40    # "zodiacSignTextColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_5
    aget-object v30, v7, v5

    .line 37
    .local v30, "sign":Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$ZodiacPowerType()[I

    move-result-object v11

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getPowerTypeAgainst(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 35
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 40
    :pswitch_0
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :pswitch_1
    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :pswitch_2
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2
    .param p1, "sign"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "team.sign."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public pause()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;->mogaImage:Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->dispose()V

    .line 213
    return-void
.end method
