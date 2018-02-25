.class Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;
.super Ljava/lang/Object;
.source "WorldScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->addIslands(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

.field private final synthetic val$island:Lcom/gaiaonline/monstergalaxy/model/map/Island;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;Lcom/gaiaonline/monstergalaxy/model/map/Island;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;->val$island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "releasePoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->access$3(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->access$4(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->access$4(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->toggleMenu()V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;->val$island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->access$5(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    goto :goto_0
.end method
