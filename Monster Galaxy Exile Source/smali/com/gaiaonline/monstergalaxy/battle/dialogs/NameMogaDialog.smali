.class public abstract Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "NameMogaDialog.java"


# instance fields
.field private button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field private screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 18
    .param p1, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 22
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ZZ)V

    .line 24
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 26
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 28
    new-instance v15, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;)V

    .line 36
    .local v15, "okButtonScreenListener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    const-string v3, "Name your Moga"

    const/high16 v4, 0x42f00000    # 120.0f

    const/high16 v5, 0x438c0000    # 280.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v7, 0x0

    .line 37
    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v9, 0x3f4ccccd    # 0.8f

    sget-object v10, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v2, p0

    .line 36
    invoke-virtual/range {v2 .. v12}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 39
    const/16 v3, 0xf

    const/16 v4, 0xf0

    const/16 v5, 0xd2

    const/16 v6, 0x30

    sget-object v7, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->NAME_MAX_CHARS:Ljava/lang/Integer;

    const-string v8, ""

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->addMogaNameTextField(IIIILjava/lang/Integer;Ljava/lang/String;)V

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->setMogaName(Ljava/lang/String;)V

    .line 42
    new-instance v16, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v2, 0x438c0000    # 280.0f

    const/high16 v3, 0x43700000    # 240.0f

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 43
    .local v16, "position":Lcom/badlogic/gdx/math/Vector2;
    const-string v2, "blue.btn.small"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v14

    .line 44
    .local v14, "normal":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "blue.btn.small.press"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v17

    .line 46
    .local v17, "selected":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DONE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object/from16 v0, v17

    invoke-direct {v2, v15, v3, v14, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v16

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 54
    new-instance v13, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v2, "Done"

    const v3, 0x3f333333    # 0.7f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x1

    invoke-direct {v13, v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 55
    .local v13, "label":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v13, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 56
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v16

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v4, v5

    invoke-virtual {v13, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 57
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->okPressed(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    return-void
.end method

.method public static newInstance(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;
    .locals 1
    .param p0, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 70
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AndroidNameMogaDialog;

    invoke-direct {v0, p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AndroidNameMogaDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;

    invoke-direct {v0, p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    goto :goto_0
.end method

.method private okPressed(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->getMogaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setName(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected abstract addMogaNameTextField(IIIILjava/lang/Integer;Ljava/lang/String;)V
.end method

.method protected abstract getMogaName()Ljava/lang/String;
.end method

.method protected abstract setMogaName(Ljava/lang/String;)V
.end method

.method public setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 0
    .param p1, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 93
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "deltaTime"    # F

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->update(F)V

    .line 99
    return-void
.end method
