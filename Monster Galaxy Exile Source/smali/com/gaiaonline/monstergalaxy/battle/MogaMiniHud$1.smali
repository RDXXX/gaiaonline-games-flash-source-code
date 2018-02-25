.class Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$1;
.super Ljava/lang/Object;
.source "MogaMiniHud.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;-><init>(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;ILcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;)V
    .locals 2
    .param p1, "button"    # Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;)Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->access$1(Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;->onBlueCoffee(I)V

    .line 101
    return-void
.end method
