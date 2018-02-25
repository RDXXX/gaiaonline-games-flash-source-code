.class public Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "InputTextDialog.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# static fields
.field private static final FIELD_NAME:Ljava/lang/String; = "inputText"


# instance fields
.field private defaultText:Ljava/lang/String;

.field private externalScreenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

.field private maxChars:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "defaultText"    # Ljava/lang/String;
    .param p3, "okButtonText"    # Ljava/lang/String;
    .param p4, "maxChars"    # I

    .prologue
    .line 23
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V

    .line 25
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->externalScreenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 26
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->defaultText:Ljava/lang/String;

    .line 27
    move/from16 v0, p4

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->maxChars:I

    .line 29
    invoke-virtual {p0, p0}, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 30
    const-string v1, "node.info.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 32
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ACCEPT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 33
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnLarge:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnLargePress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    .line 34
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v1, p0

    .line 32
    invoke-virtual/range {v1 .. v7}, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v6

    .line 35
    .local v6, "okBtn":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const/4 v3, 0x0

    const/high16 v4, -0x3e100000    # -30.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 36
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v8, 0x3f333333    # 0.7f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object/from16 v2, p3

    .line 35
    invoke-virtual/range {v1 .. v11}, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 38
    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v10, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 39
    const/high16 v11, 0x43440000    # 196.0f

    const/high16 v12, 0x437e0000    # 254.0f

    sget-object v13, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v7, p0

    .line 38
    invoke-virtual/range {v7 .. v13}, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 40
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    .line 70
    const-string v1, "inputText"

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->getTextfieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->text:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    const-string v1, "inputText"

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextField(Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->hide()V

    .line 74
    return-void
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 78
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    .line 80
    const-string v1, "inputText"

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->getTextfieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->text:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->externalScreenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 83
    return-void
.end method

.method public show()V
    .locals 21

    .prologue
    .line 44
    invoke-super/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->show()V

    .line 46
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/16 v18, 0x140

    .line 48
    .local v18, "width":I
    const/16 v13, 0x6e

    .line 49
    .local v13, "height":I
    const/high16 v1, 0x43f00000    # 480.0f

    move/from16 v0, v18

    int-to-float v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v19, v0

    .line 50
    .local v19, "x":I
    const/16 v20, 0xb9

    .line 52
    .local v20, "y":I
    move/from16 v0, v19

    int-to-float v1, v0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v2

    mul-float v16, v1, v2

    .line 53
    .local v16, "screenX":F
    const/high16 v1, 0x43a00000    # 320.0f

    move/from16 v0, v20

    int-to-float v2, v0

    sub-float/2addr v1, v2

    const/16 v2, 0x37

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 54
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v2

    .line 53
    mul-float v17, v1, v2

    .line 55
    .local v17, "screenY":F
    move/from16 v0, v18

    int-to-float v1, v0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v2

    mul-float v15, v1, v2

    .line 56
    .local v15, "screenW":F
    int-to-float v1, v13

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v2

    mul-float v14, v1, v2

    .line 58
    .local v14, "screenH":F
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v1

    const-string v2, "inputText"

    .line 59
    move/from16 v0, v16

    float-to-int v3, v0

    move/from16 v0, v17

    float-to-int v4, v0

    float-to-int v5, v15

    float-to-int v6, v14

    .line 60
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->maxChars:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 58
    invoke-interface/range {v1 .. v12}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->addTextField(Ljava/lang/String;IIIIZZLjava/lang/Integer;Ljava/lang/String;ZZ)V

    .line 61
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v1

    const-string v2, "inputText"

    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;->defaultText:Ljava/lang/String;

    .line 61
    invoke-interface {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->setTextfieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v13    # "height":I
    .end local v14    # "screenH":F
    .end local v15    # "screenW":F
    .end local v16    # "screenX":F
    .end local v17    # "screenY":F
    .end local v18    # "width":I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_0
    return-void
.end method
