.class public Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "BattleEndedDialog.java"


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V
    .locals 1
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "playerWon"    # Z

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ZLcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;->keepAnimation:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ZLcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 12
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "playerWon"    # Z
    .param p3, "lastCapturedMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V

    .line 25
    if-eqz p2, :cond_0

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;->keepAnimation:Z

    .line 30
    :cond_0
    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v0, 0x43700000    # 240.0f

    const/high16 v1, 0x43520000    # 210.0f

    invoke-direct {v9, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 31
    .local v9, "position":Lcom/badlogic/gdx/math/Vector2;
    if-eqz p2, :cond_1

    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->congrazzles:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :goto_0
    const/4 v1, 0x0

    .line 32
    iget v2, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 31
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 35
    if-eqz p2, :cond_3

    .line 36
    if-eqz p3, :cond_2

    .line 38
    iget v0, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 39
    const-string v1, "You\'ve caught"

    const/4 v2, 0x0

    iget v3, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 40
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v5, 0x3f4ccccd    # 0.8f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    .line 39
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 43
    iget v0, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x41b00000    # 22.0f

    sub-float/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 45
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v5, 0x3f666666    # 0.9f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    .line 44
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 48
    new-instance v11, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 49
    const-string v0, "starseed.big"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 48
    invoke-direct {v11, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 50
    .local v11, "starseedBig":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v11, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 51
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v11, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 52
    const/high16 v0, 0x42f00000    # 120.0f

    .line 53
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    .line 52
    mul-float v10, v0, v1

    .line 54
    .local v10, "proportionalOffset":F
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v1, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 55
    add-float/2addr v1, v10

    iget v2, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x41d00000    # 26.0f

    sub-float/2addr v2, v3

    .line 54
    invoke-virtual {v11, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 56
    invoke-virtual {p0, v11}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 62
    .end local v10    # "proportionalOffset":F
    .end local v11    # "starseedBig":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    :goto_1
    const-string v0, "m_b_win.mp3"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;)V

    .line 68
    :goto_2
    iget v0, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x42f00000    # 120.0f

    sub-float/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 69
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DONE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->blueBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->bluePressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 70
    const/4 v4, 0x0

    iget v5, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    .line 69
    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 71
    const-string v1, "Done"

    const/4 v2, 0x0

    iget v0, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v3, v0

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v5, 0x3f4ccccd    # 0.8f

    .line 72
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    move-object v0, p0

    .line 71
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 73
    return-void

    .line 31
    :cond_1
    const-string v0, "you.lose"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    goto/16 :goto_0

    .line 58
    :cond_2
    iget v0, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 59
    const-string v1, "You Won!"

    const/4 v2, 0x0

    iget v3, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 60
    const v5, 0x3f4ccccd    # 0.8f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    .line 59
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    goto :goto_1

    .line 64
    :cond_3
    const-string v0, "b_lose"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    goto :goto_2
.end method
