.class public Lcom/ansca/corona/CoronaWebView;
.super Landroid/webkit/WebView;
.source "CoronaWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;,
        Lcom/ansca/corona/CoronaWebView$UrlRequestSourceType;
    }
.end annotation


# instance fields
.field private fAutoCloseEnabled:Z

.field private fBackKeySupported:Z

.field private fReceivedErrorEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ansca/corona/events/DidFailLoadUrlEvent;",
            ">;"
        }
    .end annotation
.end field

.field private fUrlRequestSourceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v5, p0, Lcom/ansca/corona/CoronaWebView;->fBackKeySupported:Z

    .line 68
    iput-boolean v5, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    .line 69
    const/4 v3, 0x5

    iput v3, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ansca/corona/CoronaWebView;->fReceivedErrorEvents:Ljava/util/HashMap;

    .line 73
    new-instance v3, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/ansca/corona/CoronaWebView$CoronaWebViewClient;-><init>(Lcom/ansca/corona/CoronaWebView;Lcom/ansca/corona/CoronaWebView$1;)V

    invoke-virtual {p0, v3}, Lcom/ansca/corona/CoronaWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 76
    new-instance v3, Lcom/ansca/corona/CoronaWebView$1;

    invoke-direct {v3, p0}, Lcom/ansca/corona/CoronaWebView$1;-><init>(Lcom/ansca/corona/CoronaWebView;)V

    invoke-virtual {p0, v3}, Lcom/ansca/corona/CoronaWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 88
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 89
    .local v2, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 90
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 91
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 92
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 93
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 94
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 95
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 96
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 99
    :try_start_0
    const-class v3, Landroid/webkit/WebSettings;

    const-string v4, "setEnableSmoothTransition"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 101
    .local v1, "setEnableSmoothTransitionMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "setEnableSmoothTransitionMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    new-instance v3, Lcom/ansca/corona/CoronaWebView$2;

    invoke-direct {v3, p0}, Lcom/ansca/corona/CoronaWebView$2;-><init>(Lcom/ansca/corona/CoronaWebView;)V

    invoke-virtual {p0, v3}, Lcom/ansca/corona/CoronaWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    return-void

    .line 103
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaWebView;

    .prologue
    .line 11
    iget v0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    return v0
.end method

.method static synthetic access$102(Lcom/ansca/corona/CoronaWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaWebView;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    return p1
.end method

.method static synthetic access$200(Lcom/ansca/corona/CoronaWebView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaWebView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ansca/corona/CoronaWebView;->fReceivedErrorEvents:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getBackgroundColorFrom(Landroid/webkit/WebView;)I
    .locals 4
    .param p0, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 143
    :cond_0
    const/4 v1, -0x1

    .line 145
    .local v1, "color":I
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "mBackgroundColor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 146
    .local v0, "backgroundColorField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    .end local v0    # "backgroundColorField":Ljava/lang/reflect/Field;
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Lcom/ansca/corona/CoronaWebView;->getBackgroundColorFrom(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 159
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->canGoBack()Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    iget-boolean v2, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    if-eqz v2, :cond_1

    .line 162
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v1

    .line 163
    .local v1, "viewManager":Lcom/ansca/corona/ViewManager;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/ViewManager;->destroyDisplayObject(I)V

    .line 182
    .end local v1    # "viewManager":Lcom/ansca/corona/ViewManager;
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 171
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->getId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/ansca/corona/events/EventManager;->shouldLoadUrlEvent(ILjava/lang/String;I)V

    goto :goto_0

    .line 179
    .end local v0    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_2
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    .line 180
    iput v4, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 181
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 190
    invoke-super {p0}, Landroid/webkit/WebView;->goForward()V

    .line 192
    :cond_0
    return-void
.end method

.method public isAutoCloseEnabled()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    return v0
.end method

.method public isBackKeySupported()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaWebView;->fBackKeySupported:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const-string p1, ""

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    .line 215
    const/4 v0, 0x5

    iput v0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 216
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 276
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 278
    iget-boolean v1, p0, Lcom/ansca/corona/CoronaWebView;->fBackKeySupported:Z

    if-nez v1, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->goBack()V

    .line 286
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 287
    .local v0, "shouldOverrideKey":Z
    :goto_1
    goto :goto_0

    .line 286
    .end local v0    # "shouldOverrideKey":Z
    :cond_1
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    goto :goto_1

    .line 291
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    .line 227
    const/4 v0, 0x1

    iput v0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 228
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 229
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaWebView;->stopLoading()V

    .line 198
    const/4 v0, 0x3

    iput v0, p0, Lcom/ansca/corona/CoronaWebView;->fUrlRequestSourceType:I

    .line 199
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    .line 200
    return-void
.end method

.method public setAutoCloseEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaWebView;->fAutoCloseEnabled:Z

    .line 255
    return-void
.end method

.method public setBackKeySupported(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaWebView;->fBackKeySupported:Z

    .line 238
    return-void
.end method
