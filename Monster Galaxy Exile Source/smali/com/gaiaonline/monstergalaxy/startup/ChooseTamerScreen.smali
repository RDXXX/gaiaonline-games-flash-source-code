.class public Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;
.super Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;
.source "ChooseTamerScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 18
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "startup.choosetamer.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 21
    const-string v0, "Choose your Tamer"

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;->addTitle(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->MALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    const-string v1, "pc.guy"

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, -0x3d560000    # -85.0f

    invoke-direct {v2, v3, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3, v5, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;->addTamer(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 24
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->FEMALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    const-string v1, "pc.girl"

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x42aa0000    # 85.0f

    invoke-direct {v2, v3, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v4, -0x3f600000    # -5.0f

    invoke-direct {v3, v5, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;->addTamer(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;->chooseGender(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;)V

    return-void
.end method

.method private addTamer(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 8
    .param p1, "gender"    # Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;
    .param p2, "tamerAssetName"    # Ljava/lang/String;
    .param p3, "buttonPosition"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "relativeTamerPosition"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 29
    const-string v5, "startup.btn.tamer"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 30
    .local v2, "normal":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v5, "startup.btn.tamer.press"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 32
    .local v3, "selected":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    new-instance v5, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen$1;

    invoke-direct {v5, p0, p1}, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;)V

    .line 37
    const/4 v6, 0x0

    .line 32
    invoke-direct {v1, v5, v6, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 39
    .local v1, "button":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 40
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 41
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 43
    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 45
    .local v0, "absoluteTamerPosition":Lcom/badlogic/gdx/math/Vector2;
    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-static {p2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 46
    .local v4, "tamer":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->flip()V

    .line 47
    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 48
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 49
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 50
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v5, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 51
    return-void
.end method

.method private chooseGender(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;)V
    .locals 7
    .param p1, "gender"    # Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    .prologue
    .line 54
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "acquisition"

    const-string v2, ""

    const-string v3, ""

    const-string v4, "complete_choose_tamer"

    const-string v5, ""

    const-string v6, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setGender(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;)V

    .line 57
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_TAMER_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 62
    return-void
.end method
