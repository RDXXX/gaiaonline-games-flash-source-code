.class Lcom/gaiaonline/monstergalaxy/map/WorldScreen$3;
.super Ljava/lang/Object;
.source "WorldScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->createAlertDialog(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->hideDialog()V

    .line 497
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;Z)V

    .line 498
    return-void
.end method
