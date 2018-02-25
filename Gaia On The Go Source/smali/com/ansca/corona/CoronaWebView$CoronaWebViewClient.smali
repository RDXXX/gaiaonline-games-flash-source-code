.class Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CoronaWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaWebView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaWebView;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaWebView;Lcom/ansca/corona/CoronaWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/CoronaWebView;
    .param p2, "x1"    # Lcom/ansca/corona/CoronaWebView$1;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;-><init>(Lcom/ansca/corona/CoronaWebView;)V

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaWebView;->access$102(Lcom/ansca/corona/CoronaWebView;I)I

    .line 322
    if-eqz p3, :cond_0

    .line 323
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 325
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v2}, Lcom/ansca/corona/CoronaWebView;->access$200(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;

    .line 372
    .local v0, "errorEvent":Lcom/ansca/corona/events/DidFailLoadUrlEvent;
    iget-object v2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v2}, Lcom/ansca/corona/CoronaWebView;->access$200(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 375
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 376
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v1, :cond_0

    .line 378
    iget-object v2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaWebView;->canGoBack()Z

    move-result v3

    iget-object v4, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v4}, Lcom/ansca/corona/CoronaWebView;->canGoForward()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ansca/corona/events/EventManager;->webHistoryUpdatedEvent(IZZ)V

    .line 382
    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {v1, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/ansca/corona/events/EventManager;->finishedLoadUrlEvent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 339
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 343
    iget-object v2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v2}, Lcom/ansca/corona/CoronaWebView;->access$100(Lcom/ansca/corona/CoronaWebView;)I

    move-result v1

    .line 344
    .local v1, "sourceType":I
    iget-object v2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/ansca/corona/CoronaWebView;->access$102(Lcom/ansca/corona/CoronaWebView;I)I

    .line 349
    iget-object v2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v2}, Lcom/ansca/corona/CoronaWebView;->access$200(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 351
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 352
    iget-object v2, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p2, v1}, Lcom/ansca/corona/events/EventManager;->shouldLoadUrlEvent(ILjava/lang/String;I)V

    .line 355
    .end local v0    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaWebView;->access$102(Lcom/ansca/corona/CoronaWebView;I)I

    .line 409
    new-instance v0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;

    iget-object v1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v1

    invoke-direct {v0, v1, p4, p3, p2}, Lcom/ansca/corona/events/DidFailLoadUrlEvent;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 410
    .local v0, "errorEvent":Lcom/ansca/corona/events/DidFailLoadUrlEvent;
    iget-object v1, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v1}, Lcom/ansca/corona/CoronaWebView;->access$200(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaWebView;->access$102(Lcom/ansca/corona/CoronaWebView;I)I

    .line 308
    return v1
.end method
