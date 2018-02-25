.class public Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "PlayerHUD.java"


# instance fields
.field private energyText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field private tamerEnergyProgressBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

.field private teamBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

.field private trainerEnergyTimer:Lcom/gaiaonline/monstergalaxy/screen/TextElement;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 35
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 36
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->setStretchable(Z)V

    .line 37
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->size:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 38
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->size:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 40
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 43
    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v5, "playerhud.topleft.hud"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->teamBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 44
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->teamBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 45
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->teamBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5, v7, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 46
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->teamBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {p0, v4}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 48
    new-instance v2, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD$1;

    invoke-direct {v2, p0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD$1;-><init>(Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;)V

    .line 55
    .local v2, "teamButtonListener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 56
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->MANAGE_TEAM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 57
    const-string v5, "playerhud.team.off"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .line 58
    const-string v6, "playerhud.team.on"

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    .line 55
    invoke-direct {v1, v2, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 59
    .local v1, "teamButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 60
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v6, -0x3dfc0000    # -33.0f

    invoke-virtual {v1, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 63
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->addTeamMogasPortraits()V

    .line 66
    new-instance v3, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v4, "playerhud.topright.hud"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 67
    .local v3, "trainerBg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 68
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v3, v4, v7, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 71
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->addTrainerEnergy()V

    .line 75
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;-><init>()V

    .line 76
    .local v0, "inventoryBar":Lcom/gaiaonline/monstergalaxy/map/InventoryBar;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 77
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v5, -0x3f800000    # -4.0f

    const/high16 v6, -0x3dd00000    # -44.0f

    invoke-virtual {v0, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 83
    return-void
.end method

.method private addMogaPortrait(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;I)V
    .locals 8
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p2, "index"    # I

    .prologue
    .line 143
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    mul-int/lit8 v4, p2, 0x2a

    add-int/lit8 v4, v4, 0x60

    int-to-float v4, v4

    const/high16 v5, -0x3e300000    # -26.0f

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 145
    .local v3, "position":Lcom/badlogic/gdx/math/Vector2;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v4, "playerhud.moga.bg.small"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 146
    .local v1, "mogaBg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 147
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortrait()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 153
    .local v2, "portrait":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 154
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 155
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 158
    new-instance v0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;-><init>()V

    .line 159
    .local v0, "healthBarElement":Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 160
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v7, 0x41b00000    # 22.0f

    sub-float/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 161
    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 165
    .end local v0    # "healthBarElement":Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;
    .end local v2    # "portrait":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    :cond_0
    return-void
.end method

.method private addTeamMogasPortraits()V
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "mogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    .line 139
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 135
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 137
    .restart local v1    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->addMogaPortrait(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;I)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addTrainerEnergy()V
    .locals 12

    .prologue
    .line 86
    new-instance v11, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v1, "trainer.energybar.empty"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 87
    .local v11, "progressBarBg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v11, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 88
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3d680000    # -76.0f

    const/high16 v3, -0x3e780000    # -17.0f

    invoke-virtual {v11, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 90
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    const-string v2, "trainer.energybar.full"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->tamerEnergyProgressBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    .line 91
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->tamerEnergyProgressBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    sget v2, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setMaxValue(F)V

    .line 92
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->tamerEnergyProgressBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setValue(F)V

    .line 93
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->tamerEnergyProgressBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 94
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->tamerEnergyProgressBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, -0x3d680000    # -76.0f

    const/high16 v4, -0x3e780000    # -17.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 96
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 97
    const-string v1, "100"

    const v2, 0x3f19999a    # 0.6f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->ENERGY_TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 96
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->energyText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 98
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->energyText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 99
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->energyText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, -0x3d600000    # -80.0f

    const/high16 v4, -0x3e900000    # -15.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 101
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    sget v2, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 103
    const/4 v5, 0x1

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 104
    .local v0, "maxEnergyText":Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 105
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3dc00000    # -48.0f

    const/high16 v3, -0x3e900000    # -15.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 107
    new-instance v10, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 108
    const-string v1, "island.energy.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 107
    invoke-direct {v10, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 109
    .local v10, "energyIcon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v10, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 110
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3d340000    # -102.0f

    const/high16 v3, -0x3e780000    # -17.0f

    invoke-virtual {v10, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 112
    invoke-virtual {p0, v11}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 113
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->tamerEnergyProgressBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 114
    invoke-virtual {p0, v10}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 115
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->energyText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 118
    const-string v2, "0:00"

    const/high16 v3, -0x3cea0000    # -150.0f

    const/high16 v4, -0x3f200000    # -7.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v6, 0x3f19999a    # 0.6f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainerEnergyTimer:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 119
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainerEnergyTimer:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 121
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->updateTamerEnergy()V

    .line 122
    return-void
.end method

.method private updateTamerEnergy()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->tamerEnergyProgressBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setValue(F)V

    .line 127
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->energyText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setText(Ljava/lang/String;)V

    .line 128
    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 3
    .param p1, "deltaTime"    # F

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->update(F)V

    .line 171
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isEnergyFullyCharged()Z

    move-result v0

    .line 173
    .local v0, "trainerIsFullyCharged":Z
    if-nez v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainerEnergyTimer:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergyTimerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->updateTamerEnergy()V

    .line 179
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->trainerEnergyTimer:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 180
    return-void

    .line 179
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
