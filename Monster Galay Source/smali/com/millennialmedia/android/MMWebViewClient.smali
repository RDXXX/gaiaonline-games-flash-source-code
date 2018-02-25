.class Lcom/millennialmedia/android/MMWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MMWebViewClient.java"


# instance fields
.field adUrl:Ljava/lang/String;

.field hasDoneMraidCalls:Z

.field settings:Lcom/millennialmedia/android/OverlaySettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 11
    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/android/OverlaySettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/millennialmedia/android/OverlaySettings;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebViewClient;->settings:Lcom/millennialmedia/android/OverlaySettings;

    .line 19
    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x6

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmsdk:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running JS bridge command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/millennialmedia/android/MMCommand;

    invoke-direct {v0, p1, p2}, Lcom/millennialmedia/android/MMCommand;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 28
    .local v0, "command":Lcom/millennialmedia/android/MMCommand;
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-object v2, v0, Lcom/millennialmedia/android/MMCommand;->settings:Lcom/millennialmedia/android/OverlaySettings;

    .line 29
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 31
    const/4 v2, 0x1

    .line 33
    .end local v0    # "command":Lcom/millennialmedia/android/MMCommand;
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_0
    return v2
.end method
