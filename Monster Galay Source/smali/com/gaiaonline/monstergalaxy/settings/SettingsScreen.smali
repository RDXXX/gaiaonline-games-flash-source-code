.class public Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "SettingsScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# instance fields
.field doneListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

.field private showNativeUICountDown:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->showNativeUICountDown:I

    .line 36
    new-instance v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$1;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->doneListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 28
    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 27
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 29
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 31
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->makeUI()V

    .line 33
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;)Lcom/gaiaonline/monstergalaxy/screen/Dialog;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    return-object v0
.end method

.method private makeUI()V
    .locals 25

    .prologue
    .line 48
    new-instance v20, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 49
    const-string v3, "startup.choosezodiacmoga.bg"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 48
    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 51
    .local v20, "bg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v4

    div-float/2addr v3, v4

    .line 52
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v5

    div-float/2addr v4, v5

    .line 50
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setSize(FF)V

    .line 53
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 54
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 57
    new-instance v23, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 58
    const-string v3, "options"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 57
    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 59
    .local v23, "optionsLabel":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 60
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v4, 0x0

    const/high16 v5, -0x3ee00000    # -10.0f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 65
    const-string v3, "blue.btn.small"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v22

    .line 67
    .local v22, "normalAddButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v3, "blue.btn.small.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v24

    .line 69
    .local v24, "selectedAddButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v14, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->doneListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 70
    const/4 v4, 0x0

    .line 69
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v14, v3, v4, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 72
    .local v14, "doneButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v14, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 73
    const/high16 v3, 0x42b00000    # 88.0f

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v14, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setSize(FF)V

    .line 74
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, -0x3ec00000    # -12.0f

    const/high16 v5, -0x3f200000    # -7.0f

    invoke-virtual {v14, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 75
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v14, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScale(F)V

    .line 77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v14}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 102
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->hasReimbursement()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    new-instance v21, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;)V

    .line 132
    .local v21, "claimListener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 133
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLAIM_PRIZE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 132
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v8, v0, v3, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 135
    .local v8, "claimButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v8, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 136
    const/high16 v3, 0x42b00000    # 88.0f

    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v8, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setSize(FF)V

    .line 137
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, -0x3f200000    # -7.0f

    invoke-virtual {v8, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 138
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v8, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScale(F)V

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v4, "Claim"

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 143
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v10, 0x3f333333    # 0.7f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 142
    invoke-virtual/range {v3 .. v13}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 148
    .end local v8    # "claimButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .end local v21    # "claimListener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v10, "Done"

    const/4 v11, 0x0

    const/high16 v12, 0x40a00000    # 5.0f

    sget-object v13, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 149
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v16, 0x3f333333    # 0.7f

    sget-object v17, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v18, 0x1

    const/16 v19, 0x0

    .line 148
    invoke-virtual/range {v9 .. v19}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 150
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeOptionsView()V

    .line 157
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->showNativeUICountDown:I

    .line 162
    return-void
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->hideDialog()V

    .line 195
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getDeviceUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->addOptionsView(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 168
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->update(F)V

    .line 172
    :cond_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->showNativeUICountDown:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 173
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->showNativeUICountDown:I

    if-nez v0, :cond_1

    .line 174
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->getDeviceUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->addOptionsView(Ljava/lang/String;)V

    .line 179
    :cond_1
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->showNativeUICountDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->showNativeUICountDown:I

    .line 181
    :cond_2
    return-void
.end method
