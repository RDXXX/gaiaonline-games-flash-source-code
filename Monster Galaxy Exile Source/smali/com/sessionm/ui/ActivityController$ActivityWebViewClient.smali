.class Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/ui/ActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;


# direct methods
.method private constructor <init>(Lcom/sessionm/ui/ActivityController;)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$1;)V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0, p1}, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;-><init>(Lcom/sessionm/ui/ActivityController;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;-><init>(Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1008
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$1;-><init>(Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 978
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1017
    const-string v0, "ActivityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load activity content, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1700(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 1025
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1700(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sessionm/ui/ActivityController$LoadWebViewListener;->onFailure(Ljava/lang/Throwable;)V

    .line 1023
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sessionm/ui/ActivityController;->access$1702(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$LoadWebViewListener;)Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 1012
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 1013
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/high16 v5, 0x2000000

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1029
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1030
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1031
    const-string v4, "external"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1032
    const-string v3, "http:%s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1035
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1036
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1047
    :goto_0
    return v0

    .line 1039
    :cond_0
    const-string v2, "sip"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "geo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "tel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "market"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mailto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1040
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1042
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1047
    goto :goto_0
.end method
