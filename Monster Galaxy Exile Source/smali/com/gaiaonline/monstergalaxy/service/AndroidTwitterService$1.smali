.class Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;
.super Ljava/lang/Object;
.source "AndroidTwitterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->loadPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->val$url:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;)Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$1(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;Landroid/webkit/WebView;)V

    .line 135
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 136
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 140
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1$2;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1$2;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 167
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    return-void
.end method
