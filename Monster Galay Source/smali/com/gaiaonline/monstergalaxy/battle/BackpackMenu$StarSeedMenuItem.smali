.class Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;
.super Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;
.source "BackpackMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StarSeedMenuItem"
.end annotation


# instance fields
.field private button:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)V
    .locals 3

    .prologue
    .line 227
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;)V

    .line 224
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v1, "starSeed"

    const-string v2, "starseed.button.on"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->button:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .line 225
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->button:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const/4 v1, 0x2

    const/16 v2, 0x3e7

    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->init(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;II)V

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->setGreyed(Z)V

    return-void
.end method

.method private setGreyed(Z)V
    .locals 2
    .param p1, "greyed"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->button:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->color:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 232
    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_GRAYED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 236
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->visible:Z

    if-nez v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    .line 239
    .local v0, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canCaptureMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->setGreyed(Z)V

    .line 241
    invoke-super {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0
.end method

.method protected getValue()I
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getStarSeeds()I

    move-result v0

    return v0
.end method
