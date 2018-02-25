.class Lcom/gaiaonline/monstergalaxy/map/IslandScreen$1;
.super Ljava/lang/Object;
.source "IslandScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/IslandScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorldMenuToggled(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$10(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 108
    return-void
.end method
