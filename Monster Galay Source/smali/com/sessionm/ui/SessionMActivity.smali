.class public Lcom/sessionm/ui/SessionMActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/ui/SessionMActivity$BrowserWebViewClient;
    }
.end annotation


# static fields
.field private static final ID_BACK_ImageButton:I = 0x1

.field private static final ID_CLOSE_ImageButton:I = 0x4

.field private static final ID_FORWARD_ImageButton:I = 0x2

.field private static final ID_RELOAD_ImageButton:I = 0x3

.field public static final INTENT_PARAM_CONTROLLER_ID:Ljava/lang/String; = "controllerId"

.field public static final INTENT_PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final INTENT_PARAM_URL:Ljava/lang/String; = "url"


# instance fields
.field private activityController:Lcom/sessionm/ui/ActivityController;

.field private backBtn:Landroid/widget/ImageButton;

.field private browserLayout:Landroid/widget/LinearLayout;

.field private browserWebView:Landroid/webkit/WebView;

.field private closeBtn:Landroid/widget/ImageButton;

.field private controlLayout:Landroid/widget/RelativeLayout;

.field private forwardBtn:Landroid/widget/ImageButton;

.field private isInlineBrowser:Z

.field private reloadBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->activityController:Lcom/sessionm/ui/ActivityController;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sessionm/ui/SessionMActivity;Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/ActivityController;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sessionm/ui/SessionMActivity;->activityController:Lcom/sessionm/ui/ActivityController;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sessionm/ui/SessionMActivity;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sessionm/ui/SessionMActivity;->isInlineBrowser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sessionm/ui/SessionMActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sessionm/ui/SessionMActivity;->initializeInlineBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sessionm/ui/SessionMActivity;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sessionm/ui/SessionMActivity;->getAndroidOrientationSdk10(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sessionm/ui/SessionMActivity;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sessionm/ui/SessionMActivity;->getAndroidOrientation(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sessionm/ui/SessionMActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sessionm/ui/SessionMActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sessionm/ui/SessionMActivity;->handleCloseCommand()V

    return-void
.end method

.method static synthetic access$800(Lcom/sessionm/ui/SessionMActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private createBrowserControlLayout()V
    .locals 11

    .prologue
    .line 240
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    .line 241
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 243
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScrollBarStyle(I)V

    .line 248
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 252
    const/4 v1, 0x1

    const v2, -0xbfde00

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 253
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 254
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 259
    invoke-virtual {p0}, Lcom/sessionm/ui/SessionMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080024

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Lcom/sessionm/ui/SessionMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080038

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 261
    invoke-virtual {p0}, Lcom/sessionm/ui/SessionMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108007c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 262
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 264
    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    const/16 v8, 0xa

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/sessionm/ui/SessionMActivity;->getControlImageButton(IILandroid/graphics/Bitmap;IIII)Landroid/widget/ImageButton;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->backBtn:Landroid/widget/ImageButton;

    .line 265
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->backBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 266
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sessionm/ui/SessionMActivity;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 268
    iget-object v2, p0, Lcom/sessionm/ui/SessionMActivity;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sessionm/ui/SessionMActivity;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 272
    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    const/16 v8, 0xa

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lcom/sessionm/ui/SessionMActivity;->getControlImageButton(IILandroid/graphics/Bitmap;IIII)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->forwardBtn:Landroid/widget/ImageButton;

    .line 273
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->forwardBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 274
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->forwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 277
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->forwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->forwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 281
    const/16 v1, 0x32

    const/16 v2, 0x32

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    move-object v0, p0

    move-object v3, v10

    invoke-direct/range {v0 .. v7}, Lcom/sessionm/ui/SessionMActivity;->getControlImageButton(IILandroid/graphics/Bitmap;IIII)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->reloadBtn:Landroid/widget/ImageButton;

    .line 282
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->reloadBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 283
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->reloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 285
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->reloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->reloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 289
    const/16 v1, 0x32

    const/16 v2, 0x32

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    move-object v0, p0

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/sessionm/ui/SessionMActivity;->getControlImageButton(IILandroid/graphics/Bitmap;IIII)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->closeBtn:Landroid/widget/ImageButton;

    .line 290
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->closeBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 291
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sessionm/ui/SessionMActivity;->closeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 296
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->reloadBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sessionm/ui/SessionMActivity$3;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/SessionMActivity$3;-><init>(Lcom/sessionm/ui/SessionMActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->closeBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sessionm/ui/SessionMActivity$4;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/SessionMActivity$4;-><init>(Lcom/sessionm/ui/SessionMActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->backBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sessionm/ui/SessionMActivity$5;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/SessionMActivity$5;-><init>(Lcom/sessionm/ui/SessionMActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->forwardBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sessionm/ui/SessionMActivity$6;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/SessionMActivity$6;-><init>(Lcom/sessionm/ui/SessionMActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->controlLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 327
    return-void

    .line 250
    nop

    :array_0
    .array-data 4
        -0x9090a
        -0x1e1e1f
        -0x1
    .end array-data
.end method

.method private createBrowserMainLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 231
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    .line 232
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 235
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/SessionMActivity;->setContentView(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method private createBrowserWebview()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 330
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    .line 331
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 333
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    const-string v1, "Android"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 339
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 340
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 344
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 345
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 346
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 347
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 350
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sessionm/ui/SessionMActivity$BrowserWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sessionm/ui/SessionMActivity$BrowserWebViewClient;-><init>(Lcom/sessionm/ui/SessionMActivity;Lcom/sessionm/ui/SessionMActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 351
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 353
    return-void
.end method

.method private getAndroidOrientation(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    const/4 v1, 0x4

    .line 188
    if-eqz p1, :cond_4

    const-string v2, "dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    const-string v2, "portrait"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "portrait-upside-down"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_3
    const-string v2, "landscape"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    const-string v2, "landscape-right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "landscape-left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private getAndroidOrientationSdk10(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    const/4 v1, 0x4

    .line 201
    if-eqz p1, :cond_4

    const-string v2, "dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const-string v2, "portrait"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :cond_2
    const-string v2, "landscape"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    const-string v2, "landscape-right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    const-string v0, "landscape-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    .line 211
    :cond_3
    const-string v0, "portrait-upside-down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private getControlImageButton(IILandroid/graphics/Bitmap;IIII)Landroid/widget/ImageButton;
    .locals 4

    .prologue
    .line 356
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 358
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0, p1}, Lcom/sessionm/a/e;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, p2}, Lcom/sessionm/a/e;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 361
    return-object v0
.end method

.method private handleCloseCommand()V
    .locals 2

    .prologue
    .line 393
    new-instance v0, Lcom/sessionm/ui/SessionMActivity$7;

    invoke-direct {v0, p0}, Lcom/sessionm/ui/SessionMActivity$7;-><init>(Lcom/sessionm/ui/SessionMActivity;)V

    .line 419
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method

.method private initializeInlineBrowser(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sessionm/ui/SessionMActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 150
    invoke-direct {p0}, Lcom/sessionm/ui/SessionMActivity;->createBrowserMainLayout()V

    .line 151
    invoke-direct {p0}, Lcom/sessionm/ui/SessionMActivity;->createBrowserControlLayout()V

    .line 152
    invoke-direct {p0}, Lcom/sessionm/ui/SessionMActivity;->createBrowserWebview()V

    .line 153
    invoke-direct {p0}, Lcom/sessionm/ui/SessionMActivity;->startBrowserAnimation()V

    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->browserWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method private startBrowserAnimation()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 161
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 162
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 163
    const v2, 0x10a000b

    invoke-virtual {v0, p0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 164
    new-instance v2, Lcom/sessionm/ui/SessionMActivity$2;

    invoke-direct {v2, p0}, Lcom/sessionm/ui/SessionMActivity$2;-><init>(Lcom/sessionm/ui/SessionMActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 181
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity;->browserLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    return-void
.end method


# virtual methods
.method public bridgeAction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 380
    :try_start_0
    invoke-static {p1}, Lcom/sessionm/json/JSONObject;->create(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;

    move-result-object v0

    .line 381
    const-string v1, "handler"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/sessionm/ui/SessionMActivity;->handleCloseCommand()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Lcom/sessionm/ui/SessionMActivity$1;

    invoke-direct {v0, p0}, Lcom/sessionm/ui/SessionMActivity$1;-><init>(Lcom/sessionm/ui/SessionMActivity;)V

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/SessionMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 366
    packed-switch p1, :pswitch_data_0

    .line 375
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 369
    :pswitch_0
    invoke-virtual {p0}, Lcom/sessionm/ui/SessionMActivity;->finish()V

    .line 370
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 142
    iget-boolean v0, p0, Lcom/sessionm/ui/SessionMActivity;->isInlineBrowser:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->activityController:Lcom/sessionm/ui/ActivityController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sessionm/ui/ActivityController;->setPresentedActivity(Lcom/sessionm/ui/SessionMActivity;)V

    .line 144
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity;->activityController:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismissLoader()V

    .line 146
    :cond_0
    return-void
.end method
