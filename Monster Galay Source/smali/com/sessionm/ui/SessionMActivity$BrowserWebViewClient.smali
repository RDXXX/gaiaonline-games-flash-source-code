.class Lcom/sessionm/ui/SessionMActivity$BrowserWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/ui/SessionMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/SessionMActivity;


# direct methods
.method private constructor <init>(Lcom/sessionm/ui/SessionMActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sessionm/ui/SessionMActivity$BrowserWebViewClient;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sessionm/ui/SessionMActivity;Lcom/sessionm/ui/SessionMActivity$1;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/sessionm/ui/SessionMActivity$BrowserWebViewClient;-><init>(Lcom/sessionm/ui/SessionMActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 227
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 220
    return-void
.end method
