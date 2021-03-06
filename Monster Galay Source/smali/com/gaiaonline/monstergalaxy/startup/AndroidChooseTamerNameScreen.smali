.class public Lcom/gaiaonline/monstergalaxy/startup/AndroidChooseTamerNameScreen;
.super Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerNameScreen;
.source "AndroidChooseTamerNameScreen.java"


# static fields
.field private static final FIELD_NAME:Ljava/lang/String; = "TamerNameTextField"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerNameScreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected addTamerNameTextField(IIIILjava/lang/Integer;Ljava/lang/String;)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxChars"    # Ljava/lang/Integer;
    .param p6, "disallowedChars"    # Ljava/lang/String;

    .prologue
    .line 13
    move/from16 v0, p1

    int-to-float v1, v0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v2

    mul-float v15, v1, v2

    .line 14
    .local v15, "screenX":F
    const/high16 v1, 0x43a00000    # 320.0f

    move/from16 v0, p2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v2

    mul-float v16, v1, v2

    .line 15
    .local v16, "screenY":F
    move/from16 v0, p3

    int-to-float v1, v0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v2

    mul-float v14, v1, v2

    .line 16
    .local v14, "screenW":F
    move/from16 v0, p4

    int-to-float v1, v0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v2

    mul-float v13, v1, v2

    .line 17
    .local v13, "screenH":F
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v1

    const-string v2, "TamerNameTextField"

    float-to-int v3, v15

    .line 18
    move/from16 v0, v16

    float-to-int v4, v0

    float-to-int v5, v14

    float-to-int v6, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 19
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 17
    invoke-interface/range {v1 .. v12}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->addTextField(Ljava/lang/String;IIIIZZLjava/lang/Integer;Ljava/lang/String;ZZ)V

    .line 20
    return-void
.end method

.method protected getTamerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    const-string v1, "TamerNameTextField"

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->getTextfieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected removeTamerNameTextField()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    const-string v1, "TamerNameTextField"

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextField(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->switchKeyboard(Z)V

    .line 26
    return-void
.end method

.method protected setTamerName(Ljava/lang/String;)V
    .locals 2
    .param p1, "tamerName"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    const-string v1, "TamerNameTextField"

    invoke-interface {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->setTextfieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
