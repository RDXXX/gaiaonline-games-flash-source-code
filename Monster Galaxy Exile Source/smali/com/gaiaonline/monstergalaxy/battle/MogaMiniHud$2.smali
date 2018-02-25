.class Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$2;
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;)V
    .locals 1
    .param p1, "button"    # Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->access$2(Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;)V

    .line 113
    return-void
.end method
