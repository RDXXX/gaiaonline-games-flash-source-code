.class Lcom/sessionm/ui/WebView$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/ui/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/WebView;


# direct methods
.method private constructor <init>(Lcom/sessionm/ui/WebView;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sessionm/ui/WebView$MyWebChromeClient;->this$0:Lcom/sessionm/ui/WebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sessionm/ui/WebView;Lcom/sessionm/ui/WebView$1;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/sessionm/ui/WebView$MyWebChromeClient;-><init>(Lcom/sessionm/ui/WebView;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 229
    const-string v0, "WebView"

    const-string v1, "line : %s  message %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v5
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 241
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sessionm/ui/WebView$MyWebChromeClient;->this$0:Lcom/sessionm/ui/WebView;

    invoke-static {v0}, Lcom/sessionm/ui/WebView;->access$100(Lcom/sessionm/ui/WebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    mul-int/lit8 v2, p2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 236
    return-void
.end method
