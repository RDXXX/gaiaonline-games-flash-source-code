.class public Lcom/ansca/corona/MapView;
.super Landroid/widget/FrameLayout;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/MapView$LocationBounds;,
        Lcom/ansca/corona/MapView$WebViewEventHandler;,
        Lcom/ansca/corona/MapView$JavaScriptInterface;
    }
.end annotation


# instance fields
.field private fCurrentLocation:Landroid/location/Location;

.field private fIsCurrentLocationTrackingEnabled:Z

.field private fIsMapLoaded:Z

.field private fIsScrollEnabled:Z

.field private fIsZoomEnabled:Z

.field private fLoadingIndicatorView:Landroid/widget/ProgressBar;

.field private fMapLocationBounds:Lcom/ansca/corona/MapView$LocationBounds;

.field private fMapType:Lcom/ansca/corona/MapType;

.field private fOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

.field private fWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v9, "android.permission.INTERNET"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, p0, Lcom/ansca/corona/MapView;->fOperationQueue:Ljava/util/LinkedList;

    .line 67
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/ansca/corona/MapView;->fIsMapLoaded:Z

    .line 68
    sget-object v9, Lcom/ansca/corona/MapType;->STANDARD:Lcom/ansca/corona/MapType;

    iput-object v9, p0, Lcom/ansca/corona/MapView;->fMapType:Lcom/ansca/corona/MapType;

    .line 69
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/ansca/corona/MapView;->fIsCurrentLocationTrackingEnabled:Z

    .line 70
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ansca/corona/MapView;->fIsZoomEnabled:Z

    .line 71
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ansca/corona/MapView;->fIsScrollEnabled:Z

    .line 72
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ansca/corona/MapView;->fCurrentLocation:Landroid/location/Location;

    .line 73
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ansca/corona/MapView;->fMapLocationBounds:Lcom/ansca/corona/MapView$LocationBounds;

    .line 77
    const v9, -0xbbbbbc

    invoke-virtual {p0, v9}, Lcom/ansca/corona/MapView;->setBackgroundColor(I)V

    .line 81
    new-instance v9, Landroid/widget/ProgressBar;

    invoke-direct {v9, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/ansca/corona/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    .line 82
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x11

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v9}, Lcom/ansca/corona/MapView;->addView(Landroid/view/View;)V

    .line 89
    new-instance v9, Lcom/ansca/corona/MapView$1;

    invoke-direct {v9, p0, p1}, Lcom/ansca/corona/MapView$1;-><init>(Lcom/ansca/corona/MapView;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    .line 103
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 107
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 108
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 109
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v9}, Lcom/ansca/corona/MapView;->addView(Landroid/view/View;)V

    .line 112
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    .line 113
    .local v8, "settings":Landroid/webkit/WebSettings;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 115
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 116
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 117
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 119
    sget-object v9, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 120
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 121
    invoke-static {p1}, Lcom/ansca/corona/CoronaEnvironment;->getInternalWebCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 122
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 123
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 124
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_0

    .line 127
    :try_start_0
    const-class v9, Landroid/webkit/WebSettings;

    const-string v10, "setEnableSmoothTransition"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 129
    .local v7, "setEnableSmoothTransitionMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v7    # "setEnableSmoothTransitionMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/ansca/corona/MapView$WebViewEventHandler;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/ansca/corona/MapView$WebViewEventHandler;-><init>(Lcom/ansca/corona/MapView;Lcom/ansca/corona/MapView$1;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/ansca/corona/MapView$2;

    invoke-direct {v10, p0}, Lcom/ansca/corona/MapView$2;-><init>(Lcom/ansca/corona/MapView;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 150
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/ansca/corona/MapView$JavaScriptInterface;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/ansca/corona/MapView$JavaScriptInterface;-><init>(Lcom/ansca/corona/MapView;Lcom/ansca/corona/MapView$1;)V

    const-string v11, "corona"

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/ansca/corona/MapView$3;

    invoke-direct {v10, p0}, Lcom/ansca/corona/MapView$3;-><init>(Lcom/ansca/corona/MapView;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-ge v9, v10, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/ansca/corona/MapView;->disableHardwareAcceleration()V

    .line 186
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/ansca/corona/CoronaEnvironment;->getInternalResourceCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    const-string v10, "corona_map_view.html"

    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9

    .line 189
    const/4 v4, 0x0

    .line 190
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 192
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f030007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 193
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 196
    .local v0, "byteBuffer":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 197
    .local v1, "bytesRead":I
    if-gtz v1, :cond_5

    .line 202
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    if-eqz v4, :cond_2

    .line 210
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 213
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 214
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 218
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9

    .line 248
    .end local v0    # "byteBuffer":[B
    .end local v1    # "bytesRead":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    :cond_4
    :goto_4
    return-void

    .line 131
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "byteBuffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :cond_5
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v6, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 204
    .end local v0    # "byteBuffer":[B
    .end local v1    # "bytesRead":I
    :catch_1
    move-exception v2

    move-object v5, v6

    .line 205
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "ex":Ljava/lang/Exception;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 209
    if-eqz v4, :cond_6

    .line 210
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 213
    :cond_6
    :goto_6
    if-eqz v5, :cond_4

    .line 214
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 215
    :catch_2
    move-exception v9

    goto :goto_4

    .line 209
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v4, :cond_7

    .line 210
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 213
    :cond_7
    :goto_8
    if-eqz v5, :cond_8

    .line 214
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 215
    :cond_8
    :goto_9
    throw v9

    .line 224
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    :cond_9
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 229
    new-instance v9, Lcom/ansca/corona/MessageBasedTimer;

    invoke-direct {v9}, Lcom/ansca/corona/MessageBasedTimer;-><init>()V

    iput-object v9, p0, Lcom/ansca/corona/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    .line 230
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v9, v10}, Lcom/ansca/corona/MessageBasedTimer;->setHandler(Landroid/os/Handler;)V

    .line 231
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    const-wide/16 v10, 0x1e

    invoke-static {v10, v11}, Lcom/ansca/corona/TimeSpan;->fromSeconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ansca/corona/MessageBasedTimer;->setInterval(Lcom/ansca/corona/TimeSpan;)V

    .line 232
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    new-instance v10, Lcom/ansca/corona/MapView$4;

    invoke-direct {v10, p0}, Lcom/ansca/corona/MapView$4;-><init>(Lcom/ansca/corona/MapView;)V

    invoke-virtual {v9, v10}, Lcom/ansca/corona/MessageBasedTimer;->setListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    .line 247
    iget-object v9, p0, Lcom/ansca/corona/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v9}, Lcom/ansca/corona/MessageBasedTimer;->start()V

    goto :goto_4

    .line 211
    .restart local v0    # "byteBuffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v9

    goto :goto_2

    .line 215
    :catch_4
    move-exception v9

    goto :goto_3

    .line 211
    .end local v0    # "byteBuffer":[B
    .end local v1    # "bytesRead":I
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "ex":Ljava/lang/Exception;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v9

    goto :goto_6

    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v10

    goto :goto_8

    .line 215
    :catch_7
    move-exception v10

    goto :goto_9

    .line 209
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 204
    :catch_8
    move-exception v2

    goto :goto_5
.end method

.method static synthetic access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/MapView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ansca/corona/MapView;)Lcom/ansca/corona/MessageBasedTimer;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/MapView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ansca/corona/MapView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/MapView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/ansca/corona/MapView;->createHtmlTextFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/ansca/corona/MapView;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/MapView;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ansca/corona/MapView;->fCurrentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$602(Lcom/ansca/corona/MapView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/MapView;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/ansca/corona/MapView;->fIsMapLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ansca/corona/MapView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/MapView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ansca/corona/MapView;)V
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/MapView;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ansca/corona/MapView;->requestExecuteQueuedOperations()V

    return-void
.end method

.method static synthetic access$902(Lcom/ansca/corona/MapView;Lcom/ansca/corona/MapView$LocationBounds;)Lcom/ansca/corona/MapView$LocationBounds;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/MapView;
    .param p1, "x1"    # Lcom/ansca/corona/MapView$LocationBounds;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ansca/corona/MapView;->fMapLocationBounds:Lcom/ansca/corona/MapView$LocationBounds;

    return-object p1
.end method

.method private createHtmlTextFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 616
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    move-object v0, p1

    .line 626
    .end local p1    # "text":Ljava/lang/String;
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 621
    .end local v0    # "text":Ljava/lang/String;
    .restart local p1    # "text":Ljava/lang/String;
    :cond_1
    const-string v1, "&"

    const-string v2, "&amp;"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 622
    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 623
    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 624
    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 625
    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 626
    .end local p1    # "text":Ljava/lang/String;
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private requestExecuteQueuedOperations()V
    .locals 2

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/ansca/corona/MapView;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 604
    :cond_0
    return-void

    .line 598
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/MapView;->fOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/ansca/corona/MapView;->fOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 600
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 601
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public addMarker(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v8, p0, Lcom/ansca/corona/MapView;->fOperationQueue:Ljava/util/LinkedList;

    new-instance v0, Lcom/ansca/corona/MapView$7;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ansca/corona/MapView$7;-><init>(Lcom/ansca/corona/MapView;DDLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-direct {p0}, Lcom/ansca/corona/MapView;->requestExecuteQueuedOperations()V

    .line 572
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 287
    :cond_1
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ansca/corona/MapView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 271
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fCurrentLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMapType()Lcom/ansca/corona/MapType;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fMapType:Lcom/ansca/corona/MapType;

    return-object v0
.end method

.method public isCurrentLocationTrackingEnabled()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/ansca/corona/MapView;->fIsCurrentLocationTrackingEnabled:Z

    return v0
.end method

.method public isCurrentLocationVisible()Z
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fCurrentLocation:Landroid/location/Location;

    .line 422
    .local v0, "currentLocation":Landroid/location/Location;
    iget-object v1, p0, Lcom/ansca/corona/MapView;->fMapLocationBounds:Lcom/ansca/corona/MapView$LocationBounds;

    .line 423
    .local v1, "mapBounds":Lcom/ansca/corona/MapView$LocationBounds;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 424
    :cond_0
    const/4 v2, 0x0

    .line 428
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1, v0}, Lcom/ansca/corona/MapView$LocationBounds;->contains(Landroid/location/Location;)Z

    move-result v2

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ansca/corona/MapView;->fIsMapLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/ansca/corona/MapView;->fIsScrollEnabled:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/ansca/corona/MapView;->fIsZoomEnabled:Z

    return v0
.end method

.method public removeAllMarkers()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fOperationQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/ansca/corona/MapView$8;

    invoke-direct {v1, p0}, Lcom/ansca/corona/MapView$8;-><init>(Lcom/ansca/corona/MapView;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-direct {p0}, Lcom/ansca/corona/MapView;->requestExecuteQueuedOperations()V

    .line 585
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 320
    return-void
.end method

.method public setCenter(DDZ)V
    .locals 8
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "isAnimated"    # Z

    .prologue
    .line 477
    iget-object v7, p0, Lcom/ansca/corona/MapView;->fOperationQueue:Ljava/util/LinkedList;

    new-instance v0, Lcom/ansca/corona/MapView$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/MapView$5;-><init>(Lcom/ansca/corona/MapView;DDZ)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-direct {p0}, Lcom/ansca/corona/MapView;->requestExecuteQueuedOperations()V

    .line 492
    return-void
.end method

.method public setCurrentLocationTrackingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/ansca/corona/MapView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:setCurrentLocationTrackingEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 392
    :cond_0
    iput-boolean p1, p0, Lcom/ansca/corona/MapView;->fIsCurrentLocationTrackingEnabled:Z

    .line 393
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 6
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 258
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 260
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 262
    .local v0, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setMapType(Lcom/ansca/corona/MapType;)V
    .locals 2
    .param p1, "mapType"    # Lcom/ansca/corona/MapType;

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/MapView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    sget-object v0, Lcom/ansca/corona/MapType;->STANDARD:Lcom/ansca/corona/MapType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:showRoadmapView()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 373
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/ansca/corona/MapView;->fMapType:Lcom/ansca/corona/MapType;

    goto :goto_0

    .line 364
    :cond_2
    sget-object v0, Lcom/ansca/corona/MapType;->SATELLITE:Lcom/ansca/corona/MapType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:showSatelliteView()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_3
    sget-object v0, Lcom/ansca/corona/MapType;->HYBRID:Lcom/ansca/corona/MapType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:showHybridView()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setRegion(DDDDZ)V
    .locals 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "latitudeSpan"    # D
    .param p7, "longitudeSpan"    # D
    .param p9, "isAnimated"    # Z

    .prologue
    .line 507
    iget-object v11, p0, Lcom/ansca/corona/MapView;->fOperationQueue:Ljava/util/LinkedList;

    new-instance v0, Lcom/ansca/corona/MapView$6;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/ansca/corona/MapView$6;-><init>(Lcom/ansca/corona/MapView;DDDDZ)V

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-direct {p0}, Lcom/ansca/corona/MapView;->requestExecuteQueuedOperations()V

    .line 526
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/ansca/corona/MapView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:setPanningEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 458
    :cond_0
    iput-boolean p1, p0, Lcom/ansca/corona/MapView;->fIsScrollEnabled:Z

    .line 459
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ansca/corona/MapView;->fIsMapLoaded:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 303
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/ansca/corona/MapView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:setZoomingEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 439
    :cond_0
    iput-boolean p1, p0, Lcom/ansca/corona/MapView;->fIsZoomEnabled:Z

    .line 440
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MapView;->fLoadingIndicatorView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    return-void
.end method
