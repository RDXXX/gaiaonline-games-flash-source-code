.class Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "WorldMenu.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;


# instance fields
.field private isOpen:Z

.field private menuConnector:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private optionsItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

.field private questItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

.field private scaleFactor:F

.field private shopItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

.field private tamerItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->scaleFactor:F

    .line 129
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addMenuConnector()V

    .line 130
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addQuestButton()V

    .line 131
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addTamerButton()V

    .line 132
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addShopButton()V

    .line 133
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addOptionsButton()V

    .line 135
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->tamerItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->scaleFactor:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->x:F

    .line 136
    const/high16 v0, 0x41700000    # 15.0f

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->scaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->y:F

    .line 138
    const-string v0, "ui_menu_slide"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private addMenuConnector()V
    .locals 4

    .prologue
    .line 193
    const-string v1, "menu.connector"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 195
    .local v0, "connector":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v2, "connector"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->menuConnector:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 196
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->menuConnector:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/high16 v2, 0x42aa0000    # 85.0f

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->scaleFactor:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 197
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->menuConnector:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/high16 v2, 0x42200000    # 40.0f

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->scaleFactor:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 199
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->menuConnector:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 201
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->menuConnector:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 202
    return-void
.end method

.method private addOptionsButton()V
    .locals 4

    .prologue
    .line 181
    const-string v2, "options.off"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 182
    .local v0, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "options.on"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 184
    .local v1, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v3, "options"

    invoke-direct {v2, v3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->optionsItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .line 185
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->optionsItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    iput-object p0, v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    .line 187
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->optionsItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 189
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->optionsItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 190
    return-void
.end method

.method private addQuestButton()V
    .locals 4

    .prologue
    .line 143
    const-string v2, "quest.off"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 144
    .local v0, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "quest.on"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 146
    .local v1, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v3, "quest"

    invoke-direct {v2, v3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->questItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .line 147
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->questItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    iput-object p0, v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    .line 149
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->questItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 151
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->questItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 152
    return-void
.end method

.method private addShopButton()V
    .locals 4

    .prologue
    .line 169
    const-string v2, "shop.off"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 170
    .local v0, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "shop.on"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 172
    .local v1, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v3, "shop"

    invoke-direct {v2, v3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->shopItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .line 173
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->shopItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    iput-object p0, v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    .line 175
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->shopItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 177
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->shopItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 178
    return-void
.end method

.method private addTamerButton()V
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getGender()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->MALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    if-ne v0, v1, :cond_0

    .line 157
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v1, "tamer"

    const-string v2, "trainer.male.off"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    const-string v3, "trainer.male.on"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->tamerItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->tamerItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    iput-object p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    .line 163
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->tamerItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 165
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->tamerItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 166
    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v1, "tamer"

    const-string v2, "trainer.female.off"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    const-string v3, "trainer.female.on"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->tamerItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    goto :goto_0
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;)V
    .locals 4
    .param p1, "button"    # Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->close()V

    .line 271
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->name:Ljava/lang/String;

    const-string v1, "tamer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0, v2, v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 274
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playScreenChangeSound()V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->name:Ljava/lang/String;

    const-string v1, "quest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->QUEST:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0, v2, v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 279
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playScreenChangeSound()V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->name:Ljava/lang/String;

    const-string v1, "shop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHOP:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0, v2, v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 284
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playScreenChangeSound()V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->name:Ljava/lang/String;

    const-string v1, "options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SETTINGS:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0, v2, v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 290
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playScreenChangeSound()V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->isOpen:Z

    .line 223
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->menuConnector:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->visible:Z

    .line 225
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->questItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->getCloseAction()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 226
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->tamerItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->getCloseAction()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 227
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->shopItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->getCloseAction()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 228
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->optionsItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->getCloseAction()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 229
    return-void
.end method

.method public getCloseAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->clearActions()V

    .line 247
    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->touchable:Z

    .line 249
    invoke-static {v2, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v1

    .line 250
    .local v1, "itemMove":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v0

    .line 252
    .local v0, "itemFadeOut":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    aput-object v1, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v2

    return-object v2
.end method

.method public getMenuConnectorOpenAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->clearActions()V

    .line 258
    iput-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->touchable:Z

    .line 260
    invoke-static {v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;

    move-result-object v2

    .line 261
    .local v2, "fadeOut":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;

    move-result-object v1

    .line 262
    .local v1, "fadeIn":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;
    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v0

    .line 264
    .local v0, "delay":Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v3

    return-object v3
.end method

.method public getOpenAction(I)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 233
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->clearActions()V

    .line 234
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->touchable:Z

    .line 236
    add-int/lit8 v4, p1, 0x1

    mul-int/lit8 v4, v4, 0x30

    int-to-float v4, v4

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->scaleFactor:F

    mul-float v3, v4, v5

    .line 238
    .local v3, "openedPositionY":F
    invoke-static {v7, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v2

    .line 239
    .local v2, "itemMove":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v1

    .line 240
    .local v1, "itemFadeOut":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    move-result-object v0

    .line 242
    .local v0, "itemFadeIn":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;
    new-array v4, v10, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    aput-object v1, v4, v9

    new-array v5, v10, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    aput-object v0, v5, v9

    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v4

    return-object v4
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->isOpen:Z

    return v0
.end method

.method public open()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    iput-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->isOpen:Z

    .line 211
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->questItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->getOpenAction(I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 212
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->tamerItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->getOpenAction(I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 213
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->shopItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->getOpenAction(I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 214
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->optionsItem:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->getOpenAction(I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 216
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->menuConnector:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iput-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->visible:Z

    .line 217
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->menuConnector:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->getMenuConnectorOpenAction()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 218
    return-void
.end method
