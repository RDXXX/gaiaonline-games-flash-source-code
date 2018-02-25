.class Lcom/gaiaonline/monstergalaxy/map/WorldScreen$1;
.super Ljava/lang/Object;
.source "WorldScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/WorldScreen;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorldMenuToggled(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;Z)V

    .line 168
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->access$1(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->access$2(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 171
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;Z)V

    goto :goto_0
.end method
