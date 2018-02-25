.class Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1$2;
.super Ljava/lang/Object;
.source "TamerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1$2;->this$1:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1$2;->this$1:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1;->access$0(Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1;)Lcom/gaiaonline/monstergalaxy/map/TamerScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->access$1(Lcom/gaiaonline/monstergalaxy/map/TamerScreen;)V

    .line 370
    return-void
.end method
