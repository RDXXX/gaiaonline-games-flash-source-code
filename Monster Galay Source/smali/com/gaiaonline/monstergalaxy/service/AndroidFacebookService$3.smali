.class Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;
.super Ljava/lang/Object;
.source "AndroidFacebookService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->postMessage(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

.field private final synthetic val$bundle:Landroid/os/Bundle;

.field private final synthetic val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Landroid/os/Bundle;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;)Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Lcom/facebook/android/Facebook;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$1(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v1

    const-string v2, "feed"

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->val$bundle:Landroid/os/Bundle;

    .line 184
    new-instance v4, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    invoke-direct {v4, p0, v5}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V

    .line 183
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 208
    return-void
.end method
