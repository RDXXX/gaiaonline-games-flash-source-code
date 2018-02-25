.class Lcom/gaiaonline/monstergalaxy/map/IslandScreen$2;
.super Ljava/lang/Object;
.source "IslandScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->addNodes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

.field private final synthetic val$node:Lcom/gaiaonline/monstergalaxy/model/map/Node;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/map/Node;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$2;->val$node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$2;->val$node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$11(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    .line 272
    return-void
.end method
