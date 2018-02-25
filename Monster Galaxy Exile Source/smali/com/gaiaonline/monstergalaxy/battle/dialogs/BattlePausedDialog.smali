.class public Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "BattlePausedDialog.java"


# instance fields
.field private runAwayButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V
    .locals 21
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .prologue
    .line 16
    invoke-direct/range {p0 .. p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 19
    const-string v2, "PAUSED"

    const/4 v3, 0x0

    const/high16 v4, 0x43610000    # 225.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v6, 0x0

    .line 20
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v8, 0x3fc00000    # 1.5f

    .line 21
    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    .line 19
    invoke-virtual/range {v1 .. v11}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 24
    const-string v1, "shop.button.off"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 25
    .local v3, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v1, "shop.button.on"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 27
    .local v4, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKY_SHOP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 28
    const/4 v5, 0x0

    const/high16 v6, 0x432e0000    # 174.0f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v1, p0

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v10

    .line 31
    .local v10, "skyShopButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const-string v6, "Sky Shop"

    const/high16 v7, 0x432b0000    # 171.0f

    const/high16 v8, -0x3e000000    # -32.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 32
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v12, 0x3f333333    # 0.7f

    .line 33
    sget-object v13, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    .line 31
    invoke-virtual/range {v5 .. v15}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 36
    const-string v1, "red.btn"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 37
    const-string v1, "red.btn.press"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 39
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RUN_AWAY_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 40
    const/high16 v5, -0x3d500000    # -88.0f

    const/high16 v6, 0x42c80000    # 100.0f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v1, p0

    .line 39
    invoke-virtual/range {v1 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->runAwayButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 43
    const-string v12, "Run Away"

    const/high16 v13, 0x429e0000    # 79.0f

    const/high16 v14, -0x3e600000    # -20.0f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->runAwayButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object/from16 v16, v0

    const v17, 0x3f333333    # 0.7f

    .line 44
    sget-object v18, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, p0

    .line 43
    invoke-virtual/range {v11 .. v20}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 47
    const-string v1, "green.btn"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 48
    const-string v1, "green.btn.press"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 50
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 51
    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x42c80000    # 100.0f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v1, p0

    .line 50
    invoke-virtual/range {v1 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v16

    .line 54
    .local v16, "resumeButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const-string v12, "Resume"

    const/high16 v13, 0x429e0000    # 79.0f

    const/high16 v14, -0x3e600000    # -20.0f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v17, 0x3f333333    # 0.7f

    .line 55
    sget-object v18, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, p0

    .line 54
    invoke-virtual/range {v11 .. v20}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 56
    return-void
.end method


# virtual methods
.method public setRunawayEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->runAwayButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setEnabled(Z)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->runAwayButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->runAwayButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->RUNNAWAY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method
