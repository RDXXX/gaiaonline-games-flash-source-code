.class Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;
.super Ljava/lang/Object;
.source "AndroidFacebookService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->authorize(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

.field private final synthetic val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;)Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Lcom/facebook/android/Facebook;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$1(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v1

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$2()[Ljava/lang/String;

    move-result-object v2

    .line 66
    new-instance v3, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    invoke-direct {v3, p0, v4}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 97
    return-void
.end method
