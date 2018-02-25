.class Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$3;
.super Ljava/lang/Object;
.source "AndroidTwitterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->closeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 228
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$1(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;Landroid/webkit/WebView;)V

    .line 230
    return-void
.end method
