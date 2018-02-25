.class public Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "CaptureDialog.java"


# static fields
.field private static final STARSEED_CAPTURE_COST:I = 0x1


# instance fields
.field private captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;FI)V
    .locals 29
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "cpuMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p3, "captureRate"    # F
    .param p4, "currentEncounterId"    # I

    .prologue
    .line 32
    invoke-direct/range {p0 .. p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 34
    const-string v1, "capture.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Capture "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x438c0000    # 280.0f

    .line 38
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v6, 0x3f333333    # 0.7f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    .line 37
    invoke-virtual/range {v1 .. v9}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarityAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x437c0000    # 252.0f

    .line 43
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 42
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 45
    const/4 v10, 0x0

    .line 47
    .local v10, "color":Lcom/badlogic/gdx/graphics/Color;
    const/16 v1, 0x1c8

    move/from16 v0, p4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1ca

    move/from16 v0, p4

    if-eq v0, v1, :cond_2

    const/16 v28, 0x0

    .line 50
    .local v28, "showHintArrow":Z
    :goto_0
    if-eqz v28, :cond_0

    .line 51
    sget-object v10, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->HINT_ARROW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 55
    :cond_0
    const/4 v2, 0x0

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->THROW_MASTERSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/16 v4, 0x64

    const-string v5, "Master"

    .line 56
    const-string v6, "Starseed"

    const-string v1, "capture.mcash"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    const-string v1, "capture.masterseed"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v8

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getCaptureCost()I

    move-result v9

    move-object/from16 v1, p0

    .line 55
    invoke-direct/range {v1 .. v10}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addCaptureButton(ZLcom/gaiaonline/monstergalaxy/screen/UIEvent;ILjava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ILcom/badlogic/gdx/graphics/Color;)V

    .line 60
    const/4 v12, 0x1

    sget-object v13, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->THROW_STARSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 61
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    const-string v15, "Starseed"

    const/16 v16, 0x0

    .line 62
    const-string v1, "capture.starseed.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v17

    const-string v1, "capture.starseed"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v18

    .line 63
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v11, p0

    .line 60
    invoke-direct/range {v11 .. v20}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addCaptureButton(ZLcom/gaiaonline/monstergalaxy/screen/UIEvent;ILjava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ILcom/badlogic/gdx/graphics/Color;)V

    .line 67
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 68
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->redBtnSmall:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->redBtnSmallPressed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v5, -0x3d1c0000    # -114.0f

    const/high16 v6, 0x42700000    # 60.0f

    .line 69
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v1, p0

    .line 67
    invoke-virtual/range {v1 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v16

    .line 71
    .local v16, "cancelButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const-string v12, "Cancel"

    const/4 v13, 0x0

    const/high16 v14, 0x40e00000    # 7.0f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 72
    sget-object v17, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v18, 0x3f333333    # 0.7f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v11, p0

    .line 71
    invoke-virtual/range {v11 .. v21}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 77
    const-string v18, "You have:"

    const/high16 v19, 0x40a00000    # 5.0f

    const/high16 v20, 0x42500000    # 52.0f

    .line 78
    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v22, 0x0

    sget-object v23, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v24, 0x3f0ccccd    # 0.55f

    .line 79
    sget-object v25, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v17, p0

    .line 77
    invoke-virtual/range {v17 .. v27}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v6

    .line 83
    .local v6, "youHaveLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    const-string v1, "capture.mcash"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v4, 0x40800000    # 4.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 88
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCoins()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const/high16 v19, 0x428c0000    # 70.0f

    const/16 v20, 0x0

    .line 89
    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v23, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 90
    const v24, 0x3f0ccccd    # 0.55f

    sget-object v25, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v17, p0

    move-object/from16 v22, v6

    .line 88
    invoke-virtual/range {v17 .. v27}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 94
    const-string v1, "capture.starseed.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    const/high16 v3, 0x42e60000    # 115.0f

    const/high16 v4, 0x40800000    # 4.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 100
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getStarSeeds()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const/high16 v19, 0x43000000    # 128.0f

    const/16 v20, 0x0

    .line 101
    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v23, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 102
    const v24, 0x3f0ccccd    # 0.55f

    sget-object v25, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v17, p0

    move-object/from16 v22, v6

    .line 100
    invoke-virtual/range {v17 .. v27}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 104
    if-eqz v28, :cond_1

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addArrow()V

    .line 108
    :cond_1
    return-void

    .line 47
    .end local v6    # "youHaveLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .end local v16    # "cancelButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .end local v28    # "showHintArrow":Z
    :cond_2
    const/16 v28, 0x1

    goto/16 :goto_0
.end method

.method private addArrow()V
    .locals 9

    .prologue
    const v8, 0x3f99999a    # 1.2f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 111
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v4, "arrow.left"

    const-string v5, "arrow.left"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 113
    .local v0, "arrow":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static {v8, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v3

    .line 114
    .local v3, "scaleUp":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    invoke-static {v7, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v2

    .line 116
    .local v2, "scaleDown":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 118
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 120
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 121
    .local v1, "arrowElement":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 123
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 124
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 125
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 128
    return-void
.end method

.method private addCaptureButton(ZLcom/gaiaonline/monstergalaxy/screen/UIEvent;ILjava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ILcom/badlogic/gdx/graphics/Color;)V
    .locals 16
    .param p1, "isAtRight"    # Z
    .param p2, "captureEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p3, "successRate"    # I
    .param p4, "textLine1"    # Ljava/lang/String;
    .param p5, "textLine2"    # Ljava/lang/String;
    .param p6, "icon"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p7, "starseed"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p8, "captureCost"    # I
    .param p9, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 135
    .line 136
    const-string v1, "capture.seed.btn"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const-string v1, "capture.seed.btn.press"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    if-eqz p1, :cond_2

    const/16 v1, 0x5a

    .line 137
    :goto_0
    int-to-float v5, v1

    const/high16 v6, 0x43160000    # 150.0f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 135
    invoke-virtual/range {v1 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 141
    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x42480000    # 50.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-virtual/range {v1 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v15

    .line 145
    .local v15, "starseedElement":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41c80000    # 25.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-virtual/range {v1 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v12

    .line 149
    .local v12, "iconElement":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v4, 0x41b00000    # 22.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 150
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v8, 0x3f0ccccd    # 0.55f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x1

    .line 151
    const/4 v11, 0x1

    move-object/from16 v1, p0

    .line 149
    invoke-virtual/range {v1 .. v11}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 155
    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x42be0000    # 95.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 156
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v8, 0x3f19999a    # 0.6f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 155
    invoke-virtual/range {v1 .. v11}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 157
    if-eqz p5, :cond_0

    .line 159
    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x42a00000    # 80.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 160
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v8, 0x3f19999a    # 0.6f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    .line 159
    invoke-virtual/range {v1 .. v11}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 165
    :cond_0
    const-string v1, "capture.percent.circle"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    const/high16 v3, 0x42340000    # 45.0f

    const/high16 v4, 0x42960000    # 75.0f

    .line 166
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object/from16 v1, p0

    .line 165
    invoke-virtual/range {v1 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v13

    .line 168
    .local v13, "percenCircleElement":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    new-instance v14, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    const/high16 v1, 0x427c0000    # 63.0f

    .line 169
    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "data/capture.100percent.png"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 168
    invoke-direct {v14, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;-><init>(FLcom/badlogic/gdx/graphics/Texture;)V

    .line 170
    .local v14, "pie":Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;
    move/from16 v0, p3

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v14, v1}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setCompletionRate(F)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v14, v1}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 172
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x42960000    # 75.0f

    invoke-virtual {v14, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x42340000    # 45.0f

    const/high16 v4, 0x42aa0000    # 85.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 178
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v8, 0x3f4ccccd    # 0.8f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v1, p0

    .line 177
    invoke-virtual/range {v1 .. v11}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 181
    const-string v2, "Success"

    const/high16 v3, 0x42340000    # 45.0f

    const/high16 v4, 0x427c0000    # 63.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 182
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v8, 0x3f000000    # 0.5f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v1, p0

    .line 181
    invoke-virtual/range {v1 .. v11}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 184
    if-eqz p9, :cond_1

    .line 185
    move-object/from16 v0, p9

    invoke-virtual {v15, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 186
    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 187
    move-object/from16 v0, p9

    invoke-virtual {v13, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setEnabled(Z)V

    .line 192
    :cond_1
    return-void

    .line 137
    .end local v12    # "iconElement":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .end local v13    # "percenCircleElement":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .end local v14    # "pie":Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;
    .end local v15    # "starseedElement":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    :cond_2
    const/16 v1, -0x5a

    goto/16 :goto_0
.end method
