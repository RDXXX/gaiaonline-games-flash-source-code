.class Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2$1;
.super Ljava/lang/Object;
.source "TamerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2$1;->this$1:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2$1;->this$1:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;->access$0(Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;)Lcom/gaiaonline/monstergalaxy/map/TamerScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->access$2(Lcom/gaiaonline/monstergalaxy/map/TamerScreen;)V

    .line 552
    return-void
.end method
