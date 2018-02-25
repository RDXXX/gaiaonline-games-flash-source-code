.class Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;
.super Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;
.source "BackpackMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlueCoffeeMenuItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)V
    .locals 3

    .prologue
    .line 255
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    .line 252
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;)V

    .line 253
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v1, "blueCoffee"

    const-string v2, "blue.coffee.portrait.on"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 254
    .local v0, "button":Lcom/badlogic/gdx/scenes/scene2d/actors/Button;
    const/4 v1, 0x1

    const/16 v2, 0x3e7

    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->init(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;II)V

    return-void
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v0

    return v0
.end method
