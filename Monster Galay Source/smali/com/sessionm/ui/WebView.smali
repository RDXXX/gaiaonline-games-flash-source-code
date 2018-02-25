.class public Lcom/sessionm/ui/WebView;
.super Landroid/webkit/WebView;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/ui/WebView$MyWebChromeClient;
    }
.end annotation


# static fields
.field static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field protected static final TAG:Ljava/lang/String; = "WebView"

.field static lastOrientationDegrees:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mInlineVideoInterface:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

.field private mLayout:Landroid/widget/FrameLayout;

.field private mOrientationListener:Landroid/hardware/SensorEventListener;

.field private mWebChromeClient:Lcom/sessionm/ui/WebView$MyWebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 36
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/sessionm/ui/WebView;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/sessionm/ui/WebView;->lastOrientationDegrees:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/sessionm/ui/WebView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/sessionm/ui/WebView;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0, p1}, Lcom/sessionm/ui/WebView;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/sessionm/ui/WebView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sessionm/ui/WebView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private addOrientationListener()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 279
    iget-object v0, p0, Lcom/sessionm/ui/WebView;->mOrientationListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/sessionm/ui/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 282
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 283
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 284
    const-string v0, "WebView"

    const-string v1, "no orientation sensors"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 289
    new-instance v2, Lcom/sessionm/ui/WebView$3;

    invoke-direct {v2, p0}, Lcom/sessionm/ui/WebView$3;-><init>(Lcom/sessionm/ui/WebView;)V

    iput-object v2, p0, Lcom/sessionm/ui/WebView;->mOrientationListener:Landroid/hardware/SensorEventListener;

    .line 325
    iget-object v2, p0, Lcom/sessionm/ui/WebView;->mOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 326
    const-string v0, "WebView"

    const-string v1, "added orientation listener"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeActivityView()V
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 224
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 66
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sessionm/ui/WebView;->mActivity:Landroid/app/Activity;

    .line 68
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sessionm/ui/WebView;->mLayout:Landroid/widget/FrameLayout;

    .line 70
    new-instance v0, Lcom/sessionm/ui/WebView$MyWebChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sessionm/ui/WebView$MyWebChromeClient;-><init>(Lcom/sessionm/ui/WebView;Lcom/sessionm/ui/WebView$1;)V

    iput-object v0, p0, Lcom/sessionm/ui/WebView;->mWebChromeClient:Lcom/sessionm/ui/WebView$MyWebChromeClient;

    .line 71
    iget-object v0, p0, Lcom/sessionm/ui/WebView;->mWebChromeClient:Lcom/sessionm/ui/WebView$MyWebChromeClient;

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 73
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/WebView;->setScrollBarStyle(I)V

    .line 76
    invoke-virtual {p0}, Lcom/sessionm/ui/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 78
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 80
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 88
    const/16 v1, 0x4e20

    invoke-virtual {p0, v1}, Lcom/sessionm/ui/WebView;->setId(I)V

    .line 90
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 95
    const-string v1, "/data/data/com.sessionm.sdk/databases/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 101
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 103
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 111
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 115
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 117
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 119
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 121
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 123
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/sessionm/ui/WebView;->requestDisallowInterceptTouchEvent(Z)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/sessionm/ui/WebView;->setFocusable(Z)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/sessionm/ui/WebView;->setFocusableInTouchMode(Z)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/sessionm/ui/WebView;->setClickable(Z)V

    .line 136
    invoke-virtual {p0, v2}, Lcom/sessionm/ui/WebView;->setEnabled(Z)V

    .line 138
    invoke-virtual {p0, v3}, Lcom/sessionm/ui/WebView;->setBackgroundColor(I)V

    .line 140
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 142
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/WebView;->requestFocus(I)Z

    .line 144
    new-instance v0, Lcom/sessionm/ui/WebView$1;

    invoke-direct {v0, p0}, Lcom/sessionm/ui/WebView$1;-><init>(Lcom/sessionm/ui/WebView;)V

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    new-instance v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/sessionm/ui/WebView;->mInlineVideoInterface:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    .line 160
    iget-object v0, p0, Lcom/sessionm/ui/WebView;->mInlineVideoInterface:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const-string v1, "AndroidVideo"

    invoke-virtual {p0, v0, v1}, Lcom/sessionm/ui/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 164
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sessionm/ui/WebView;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0}, Lcom/sessionm/ui/WebView;->requestFocus()Z

    .line 177
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, "WebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeOrientationListener()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sessionm/ui/WebView;->mOrientationListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/sessionm/ui/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sessionm/ui/WebView;->mOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/ui/WebView;->mOrientationListener:Landroid/hardware/SensorEventListener;

    .line 275
    const-string v0, "WebView"

    const-string v1, "removed orientation listener"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sessionm/ui/WebView;->mInlineVideoInterface:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sessionm/ui/WebView;->mInlineVideoInterface:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-virtual {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->destroy()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/ui/WebView;->mInlineVideoInterface:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/sessionm/ui/WebView;->removeOrientationListener()V

    .line 190
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 191
    return-void
.end method

.method public executeJavascript(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lcom/sessionm/ui/WebView$2;

    invoke-direct {v0, p0, p1}, Lcom/sessionm/ui/WebView$2;-><init>(Lcom/sessionm/ui/WebView;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/sessionm/ui/WebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sessionm/ui/WebView;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 196
    packed-switch p1, :pswitch_data_0

    .line 212
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 216
    :cond_0
    :goto_0
    return v3

    .line 199
    :pswitch_0
    invoke-virtual {p0}, Lcom/sessionm/ui/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 200
    invoke-virtual {p0}, Lcom/sessionm/ui/WebView;->requestFocus()Z

    .line 202
    invoke-virtual {p0}, Lcom/sessionm/ui/WebView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 204
    iget-object v1, p0, Lcom/sessionm/ui/WebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/sessionm/ui/WebView;->closeActivityView()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sessionm/ui/WebView;->removeOrientationListener()V

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    if-nez p2, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/sessionm/ui/WebView;->requestLayout()V

    .line 250
    invoke-virtual {p0}, Lcom/sessionm/ui/WebView;->requestFocus()Z

    .line 251
    invoke-direct {p0}, Lcom/sessionm/ui/WebView;->addOrientationListener()V

    goto :goto_0
.end method
