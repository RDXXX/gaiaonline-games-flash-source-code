.class public Lcom/gaiaonline/monstergalaxy/team/TeamScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "TeamScreen.java"


# static fields
.field protected static final DISTANCE_BETWEEN_PORTRAITS:I = 0xb2

.field protected static final GALLERY_MARGIN:I = 0x19


# instance fields
.field private inhibitClick:Z

.field private mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaiaonline/monstergalaxy/screen/Gallery",
            "<",
            "Lcom/gaiaonline/monstergalaxy/team/Portrait;",
            ">;"
        }
    .end annotation
.end field

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 55
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 44
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->inhibitClick:Z

    .line 57
    new-instance v1, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V

    .line 70
    .local v1, "doneListener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    new-instance v4, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;

    invoke-direct {v4, v1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 72
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 73
    invoke-direct {v3, v4, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 72
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 75
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 80
    new-instance v3, Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    invoke-direct {v3}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;-><init>()V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    .line 81
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v3, v4, v6, v6}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 82
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    const/high16 v4, 0x43f00000    # 480.0f

    const/high16 v5, 0x436e0000    # 238.0f

    invoke-virtual {v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setSize(FF)V

    .line 83
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 84
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    new-instance v4, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;

    invoke-direct {v4, p0}, Lcom/gaiaonline/monstergalaxy/team/TeamGalleryAdapter;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setAdapter(Lcom/gaiaonline/monstergalaxy/screen/GalleryAdapter;)V

    .line 85
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    const/16 v4, 0xb2

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setDistance(I)V

    .line 86
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setMargin(F)V

    .line 88
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v4, "team.bg"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 89
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 91
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 92
    const-string v3, "blue.coffee.icon"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 91
    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 93
    .local v0, "bluecoffe":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x42be0000    # 95.0f

    const/high16 v5, -0x3dfc0000    # -33.0f

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 94
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 98
    const-string v3, "knockedOutTutorialShown"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 100
    .local v2, "knockedOutTutorialShown":Z
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->hasHealtyMogas()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showSleepTutorial()V

    .line 102
    const-string v3, "knockedOutTutorialShown"

    invoke-static {v3, v7}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setValue(Ljava/lang/String;Z)V

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)Z
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->hasUndeployedTiredMogas()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showNapDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->putUndeployedTiredMogasToSleep()V

    return-void
.end method

.method private hasUndeployedTiredMogas()Z
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    .line 144
    .local v1, "team":Lcom/gaiaonline/monstergalaxy/model/trainer/Team;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 144
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 146
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->canGoToSleep()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private playMusic()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 137
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method private putUndeployedTiredMogasToSleep()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    .line 163
    .local v1, "team":Lcom/gaiaonline/monstergalaxy/model/trainer/Team;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->save()Z

    .line 175
    return-void

    .line 163
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 165
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->canGoToSleep()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->startNap()V

    goto :goto_0
.end method

.method private showNapDialog()V
    .locals 6

    .prologue
    .line 199
    new-instance v1, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$3;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V

    .line 213
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    const-string v2, "Some of your Mogas are tired! Would you like to nap all your tired Mogas?"

    .line 214
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Nap All"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 215
    return-void
.end method

.method private showSleepTutorial()V
    .locals 7

    .prologue
    .line 219
    new-instance v2, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$4;

    invoke-direct {v2, p0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$4;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V

    .line 251
    .local v2, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    const-string v3, "If your Mogas are tired, try putting them to \n sleep by tapping the Nap button. You can \n also use a Blue Coffee to immediately \n recharge them."

    .line 252
    .local v3, "message":Ljava/lang/String;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1MyAlertDialog;

    const-string v4, "Keep Playing"

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1MyAlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 254
    .local v0, "dialog":Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1MyAlertDialog;
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 255
    return-void
.end method


# virtual methods
.method public hideDialog()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->hideDialog()V

    .line 287
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->getInputProcessor()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 288
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setScrollEnabled(Z)V

    .line 289
    return-void
.end method

.method public isInhibitClick()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->inhibitClick:Z

    return v0
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->playMusic()V

    .line 121
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->pause()V

    .line 111
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->hide()V

    .line 114
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setScrollEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->resume()V

    .line 129
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->show()V

    .line 132
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->getInputProcessor()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 133
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInhibitClick(Z)V
    .locals 0
    .param p1, "inhibitClick"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->inhibitClick:Z

    .line 49
    return-void
.end method

.method protected showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->setScrollEnabled(Z)V

    .line 279
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 280
    return-void
.end method

.method public showShopDialog()V
    .locals 6

    .prologue
    .line 179
    new-instance v1, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$2;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V

    .line 193
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    const-string v2, "Your Mogas are tired but you don\'t have any Blue Coffee! Visit the Shop to get more."

    .line 194
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Visit Shop"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 195
    return-void
.end method

.method public update(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 260
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->mogaGallery:Lcom/gaiaonline/monstergalaxy/screen/Gallery;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Gallery;->getDeltaScroll()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->inhibitClick:Z

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->update(F)V

    .line 268
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->update(F)V

    .line 274
    :cond_1
    return-void

    .line 263
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->inhibitClick:Z

    goto :goto_0
.end method
