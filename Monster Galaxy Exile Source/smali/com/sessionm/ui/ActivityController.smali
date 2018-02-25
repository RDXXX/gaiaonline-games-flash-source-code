.class public Lcom/sessionm/ui/ActivityController;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;,
        Lcom/sessionm/ui/ActivityController$PrepareListener;,
        Lcom/sessionm/ui/ActivityController$LoadWebViewListener;,
        Lcom/sessionm/ui/ActivityController$LoadContentListener;,
        Lcom/sessionm/ui/ActivityController$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityController"

.field private static controllerCounter:I

.field private static final xPosFlagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final yPosFlagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/app/Activity;

.field private activityData:Lcom/sessionm/json/JSONObject;

.field private activityType:Lcom/sessionm/api/SessionM$ActivityType;

.field private final controllerId:I

.field private defaultLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private loadWebViewListener:Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

.field private loadingProgressDlg:Landroid/app/Dialog;

.field private orientations:[Ljava/lang/String;

.field private presentedActivity:Lcom/sessionm/ui/SessionMActivity;

.field private session:Lcom/sessionm/core/Session;

.field private state:Lcom/sessionm/ui/ActivityController$State;

.field private view:Lcom/sessionm/ui/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sessionm/ui/ActivityController;->xPosFlagMap:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sessionm/ui/ActivityController;->yPosFlagMap:Ljava/util/Map;

    .line 94
    sget-object v0, Lcom/sessionm/ui/ActivityController;->xPosFlagMap:Ljava/util/Map;

    const-string v1, "left"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/sessionm/ui/ActivityController;->xPosFlagMap:Ljava/util/Map;

    const-string v1, "right"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/sessionm/ui/ActivityController;->xPosFlagMap:Ljava/util/Map;

    const-string v1, "center"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/sessionm/ui/ActivityController;->xPosFlagMap:Ljava/util/Map;

    const-string v1, "middle"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/sessionm/ui/ActivityController;->yPosFlagMap:Ljava/util/Map;

    const-string v1, "bottom"

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/sessionm/ui/ActivityController;->yPosFlagMap:Ljava/util/Map;

    const-string v1, "top"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/sessionm/ui/ActivityController;->yPosFlagMap:Ljava/util/Map;

    const-string v1, "center"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/sessionm/ui/ActivityController;->yPosFlagMap:Ljava/util/Map;

    const-string v1, "middle"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    sput v0, Lcom/sessionm/ui/ActivityController;->controllerCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/16 v3, 0x20

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-object v0, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->state:Lcom/sessionm/ui/ActivityController$State;

    .line 123
    sget v0, Lcom/sessionm/ui/ActivityController;->controllerCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sessionm/ui/ActivityController;->controllerCounter:I

    iput v0, p0, Lcom/sessionm/ui/ActivityController;->controllerId:I

    .line 127
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    .line 128
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->session:Lcom/sessionm/core/Session;

    .line 129
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x100

    const/high16 v2, 0x20000

    const/4 v4, -0x3

    const/16 v5, 0x3e8

    const/4 v7, 0x1

    move v6, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->defaultLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 133
    invoke-direct {p0}, Lcom/sessionm/ui/ActivityController;->initWebView()V

    .line 134
    return-void
.end method

.method static synthetic access$100(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$State;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sessionm/ui/ActivityController;->setState(Lcom/sessionm/ui/ActivityController$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sessionm/ui/ActivityController;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->loadingProgressDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sessionm/ui/ActivityController;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController;->loadingProgressDlg:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sessionm/ui/ActivityController;->getJSHandlerMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;Lcom/sessionm/json/JSONObject;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sessionm/ui/ActivityController;->finishMessageHandling(Lcom/sessionm/json/JSONObject;Lcom/sessionm/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sessionm/ui/ActivityController;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sessionm/ui/ActivityController;->setOrientations([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sessionm/ui/ActivityController;->launchActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sessionm/ui/ActivityController;->handleUpdateForecastMessage(Lcom/sessionm/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sessionm/ui/ActivityController;->handleListenForInstallsMessage(Lcom/sessionm/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/ActivityController$LoadWebViewListener;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->loadWebViewListener:Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$LoadWebViewListener;)Lcom/sessionm/ui/ActivityController$LoadWebViewListener;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController;->loadWebViewListener:Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadWebViewListener;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/sessionm/ui/ActivityController;->loadWebView(Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadWebViewListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/WebView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/WebView;)Lcom/sessionm/ui/WebView;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/core/Session;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->session:Lcom/sessionm/core/Session;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sessionm/ui/ActivityController;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sessionm/ui/ActivityController;->controllerId:I

    return v0
.end method

.method static synthetic access$700(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sessionm/ui/ActivityController;->updateActivityData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/SessionMActivity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->presentedActivity:Lcom/sessionm/ui/SessionMActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sessionm/ui/ActivityController;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sessionm/ui/ActivityController;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private finishMessageHandling(Lcom/sessionm/json/JSONObject;Lcom/sessionm/json/JSONObject;)V
    .locals 5

    .prologue
    .line 650
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;

    move-result-object v0

    .line 651
    if-nez v0, :cond_0

    .line 661
    :goto_0
    return-void

    .line 655
    :cond_0
    if-nez p2, :cond_1

    .line 656
    invoke-static {}, Lcom/sessionm/json/JSONObject;->create()Lcom/sessionm/json/JSONObject;

    move-result-object p2

    .line 658
    :cond_1
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v1, "%s(%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/sessionm/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-virtual {p0, v0}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getActivityData()Lcom/sessionm/json/JSONObject;
    .locals 5

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityData:Lcom/sessionm/json/JSONObject;

    if-nez v0, :cond_2

    .line 511
    invoke-static {}, Lcom/sessionm/json/JSONObject;->create()Lcom/sessionm/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityData:Lcom/sessionm/json/JSONObject;

    .line 513
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->session:Lcom/sessionm/core/Session;

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->getSessionData()Lcom/sessionm/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityData:Lcom/sessionm/json/JSONObject;

    const-string v1, "global_data"

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->session:Lcom/sessionm/core/Session;

    invoke-virtual {v2}, Lcom/sessionm/core/Session;->getSessionData()Lcom/sessionm/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->session:Lcom/sessionm/core/Session;

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->getMetaData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->session:Lcom/sessionm/core/Session;

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->getMetaData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 519
    iget-object v3, p0, Lcom/sessionm/ui/ActivityController;->activityData:Lcom/sessionm/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user[data]["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityData:Lcom/sessionm/json/JSONObject;

    const-string v1, "z"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityData:Lcom/sessionm/json/JSONObject;

    const-string v1, "orientation"

    sget v2, Lcom/sessionm/ui/WebView;->lastOrientationDegrees:I

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityData:Lcom/sessionm/json/JSONObject;

    return-object v0
.end method

.method private getFullscreenLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 194
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 199
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 200
    const/4 v0, 0x0

    .line 202
    if-lez v2, :cond_0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    .line 204
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 205
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 207
    const-string v4, "ActivityController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullscreenLayoutParams() r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", contentViewTop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", titleBarOffset: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", height: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-object v3
.end method

.method private getJSHandlerMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 641
    const-class v0, Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 642
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    :goto_1
    return-object v0

    .line 641
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 646
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleBrowserMessage(Lcom/sessionm/json/JSONObject;)V
    .locals 4

    .prologue
    .line 715
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    const-string v2, "open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 718
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    const-class v3, Lcom/sessionm/ui/SessionMActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 719
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 720
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v1, "type"

    const-string v3, "inlineBrowser"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 723
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 724
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 726
    :cond_0
    return-void
.end method

.method private handleCheckInstalledMessage(Lcom/sessionm/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 797
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/sessionm/a/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 799
    if-eqz v0, :cond_0

    .line 800
    const-string v0, "GreyhoundEventDispatcher.dispatch(\'packageInstalled\',{\'installed\':true});"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_0
    const-string v0, "GreyhoundEventDispatcher.dispatch(\'packageInstalled\',{\'installed\':false});"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleCloseMessage(Lcom/sessionm/json/JSONObject;)V
    .locals 0

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 670
    return-void
.end method

.method private handleDisplayMessage(Lcom/sessionm/json/JSONObject;)V
    .locals 8

    .prologue
    .line 873
    const-string v0, "vertical_alignment"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 874
    const-string v0, "horizontal_alignment"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 876
    :cond_0
    const-string v1, "center"

    .line 877
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 878
    :cond_2
    const-string v0, "center"

    .line 880
    :cond_3
    const-string v2, "display_type"

    invoke-virtual {p1, v2}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 881
    const-string v3, "horizontal_offset"

    invoke-virtual {p1, v3}, Lcom/sessionm/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 882
    const-string v4, "vertical_offset"

    invoke-virtual {p1, v4}, Lcom/sessionm/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 883
    sget-object v5, Lcom/sessionm/ui/ActivityController;->xPosFlagMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 884
    sget-object v0, Lcom/sessionm/ui/ActivityController;->yPosFlagMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 885
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    const-string v6, "width"

    invoke-virtual {p1, v6}, Lcom/sessionm/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v0, v6}, Lcom/sessionm/a/e;->a(Landroid/content/Context;I)I

    move-result v6

    .line 886
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    const-string v7, "height"

    invoke-virtual {p1, v7}, Lcom/sessionm/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v7}, Lcom/sessionm/a/e;->a(Landroid/content/Context;I)I

    move-result v7

    .line 890
    if-eqz v2, :cond_9

    const-string v0, "frame"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 891
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 892
    const/16 v2, 0x30

    if-ne v1, v2, :cond_7

    .line 893
    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/sessionm/a/e;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 898
    :cond_4
    :goto_0
    const/4 v2, 0x3

    if-ne v5, v2, :cond_8

    .line 899
    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/sessionm/a/e;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 904
    :cond_5
    :goto_1
    or-int/2addr v1, v5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 908
    :goto_2
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_6

    .line 911
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 914
    :cond_6
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 915
    const-string v0, "GreyhoundEventDispatcher.dispatch(\'show\', %s);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sessionm/ui/ActivityController;->getActivityData()Lcom/sessionm/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sessionm/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    .line 916
    return-void

    .line 895
    :cond_7
    const/16 v2, 0x50

    if-ne v1, v2, :cond_4

    .line 896
    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/sessionm/a/e;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 901
    :cond_8
    const/4 v2, 0x5

    if-ne v5, v2, :cond_5

    .line 902
    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/sessionm/a/e;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 906
    :cond_9
    invoke-direct {p0}, Lcom/sessionm/ui/ActivityController;->getFullscreenLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    goto :goto_2
.end method

.method private handleGetSystemIdentifierMessage(Lcom/sessionm/json/JSONObject;)V
    .locals 7

    .prologue
    .line 730
    const-string v3, "androidId"

    .line 731
    const-string v2, "none"

    .line 732
    const-string v4, "unavailable"

    .line 733
    const-string v1, ""

    .line 736
    :try_start_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 737
    const-string v0, "algorithm"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 738
    const-string v0, "androidimei"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 740
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 767
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "none"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 769
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 771
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 773
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :cond_0
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 784
    :goto_1
    invoke-static {}, Lcom/sessionm/json/JSONObject;->create()Lcom/sessionm/json/JSONObject;

    move-result-object v4

    .line 785
    const-string v5, "identifier"

    invoke-virtual {v4, v5, v1}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v1, "type"

    invoke-virtual {v4, v1, v3}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v1, "algorithm"

    invoke-virtual {v4, v1, v2}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 790
    const-string v1, "errors"

    invoke-virtual {v4, v1, v0}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_1
    const-string v0, "GreyhoundEventDispatcher.dispatch(\'deviceIdentifierCallback\', %s);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v4}, Lcom/sessionm/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    .line 793
    return-void

    .line 742
    :cond_2
    :try_start_2
    const-string v0, "hashedIdentifier"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 744
    new-instance v0, Lcom/sessionm/a/c;

    iget-object v5, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lcom/sessionm/a/c;-><init>(Landroid/content/Context;)V

    .line 746
    invoke-virtual {v0}, Lcom/sessionm/a/c;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_3
    const-string v0, "odin1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sessionm/cpi/ODIN;->getODIN1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 751
    :cond_4
    const-string v0, "androiddeviceid"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "android_id"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 753
    :cond_5
    const-string v0, "hashedandroidimei"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 755
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 756
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 758
    :try_start_3
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 760
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 762
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto/16 :goto_0

    .line 765
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "android_id"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 776
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 777
    :goto_2
    const-string v0, "ActivityController"

    const-string v4, "the permission android.permission.READ_PHONE_STATE has not been defined in the manifest. Can\'t grab device identifier..."

    invoke-static {v0, v4}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "permissionDenied"

    goto/16 :goto_1

    .line 779
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v4, v0

    .line 780
    :goto_3
    const-string v0, "noSuchAlgorithm"

    .line 781
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_1

    .line 779
    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    goto :goto_3

    .line 776
    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method private handleListenForInstallsMessage(Lcom/sessionm/json/JSONObject;)V
    .locals 3

    .prologue
    .line 709
    new-instance v0, Lcom/sessionm/cpi/PackageReceiver;

    invoke-direct {v0, p1}, Lcom/sessionm/cpi/PackageReceiver;-><init>(Lcom/sessionm/json/JSONObject;)V

    .line 710
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-static {}, Lcom/sessionm/a/e;->b()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 711
    return-void
.end method

.method private handleMakeRequestMessageAsync(Lcom/sessionm/json/JSONObject;)V
    .locals 4

    .prologue
    .line 808
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    const-string v1, "method"

    invoke-virtual {p1, v1}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 810
    const-string v2, "params"

    invoke-virtual {p1, v2}, Lcom/sessionm/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;

    move-result-object v2

    .line 811
    new-instance v3, Lcom/sessionm/net/Request;

    invoke-direct {v3, v0, v1, v2}, Lcom/sessionm/net/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 812
    new-instance v0, Lcom/sessionm/ui/ActivityController$14;

    invoke-direct {v0, p0, p1}, Lcom/sessionm/ui/ActivityController$14;-><init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;)V

    invoke-virtual {v3, v0}, Lcom/sessionm/net/Request;->setListener(Lcom/sessionm/net/RequestListener;)V

    .line 868
    invoke-virtual {v3}, Lcom/sessionm/net/Request;->send()V

    .line 869
    return-void
.end method

.method private handleOpenMessageAsync(Lcom/sessionm/json/JSONObject;)V
    .locals 3

    .prologue
    .line 674
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    if-nez v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 706
    :goto_0
    return-void

    .line 680
    :cond_0
    new-instance v1, Lcom/sessionm/ui/ActivityController;

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sessionm/ui/ActivityController;-><init>(Landroid/app/Activity;)V

    .line 681
    new-instance v2, Lcom/sessionm/ui/ActivityController$13;

    invoke-direct {v2, p0, p1, v1}, Lcom/sessionm/ui/ActivityController$13;-><init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;Lcom/sessionm/ui/ActivityController;)V

    invoke-direct {v1, v0, v2}, Lcom/sessionm/ui/ActivityController;->prepare(Ljava/lang/String;Lcom/sessionm/ui/ActivityController$PrepareListener;)V

    goto :goto_0
.end method

.method private handlePlayMessage(Lcom/sessionm/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 920
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    const-string v1, "ActivityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 924
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 925
    new-instance v2, Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 926
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 929
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 932
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 934
    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    .line 935
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setZOrderMediaOverlay(Z)V

    .line 937
    new-instance v0, Lcom/sessionm/ui/ActivityController$15;

    invoke-direct {v0, p0, v3}, Lcom/sessionm/ui/ActivityController$15;-><init>(Lcom/sessionm/ui/ActivityController;Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 945
    new-instance v0, Lcom/sessionm/ui/ActivityController$16;

    invoke-direct {v0, p0, v3}, Lcom/sessionm/ui/ActivityController$16;-><init>(Lcom/sessionm/ui/ActivityController;Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 954
    new-instance v0, Lcom/sessionm/ui/ActivityController$17;

    invoke-direct {v0, p0}, Lcom/sessionm/ui/ActivityController$17;-><init>(Lcom/sessionm/ui/ActivityController;)V

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 961
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 962
    return-void
.end method

.method private handleUpdateForecastMessage(Lcom/sessionm/json/JSONObject;)V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->session:Lcom/sessionm/core/Session;

    invoke-virtual {v0, p1}, Lcom/sessionm/core/Session;->updateSessionData(Lcom/sessionm/json/JSONObject;)Lcom/sessionm/json/JSONObject;

    .line 665
    return-void
.end method

.method private initWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    new-instance v0, Lcom/sessionm/ui/WebView;

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sessionm/ui/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    .line 138
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    invoke-virtual {v0}, Lcom/sessionm/ui/WebView;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    .line 139
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 140
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 141
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController;->defaultLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScrollBarStyle(I)V

    .line 143
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    invoke-virtual {v0}, Lcom/sessionm/ui/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 144
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    new-instance v1, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;-><init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$1;)V

    invoke-virtual {v0, v1}, Lcom/sessionm/ui/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 145
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    const-string v1, "Android"

    invoke-virtual {v0, p0, v1}, Lcom/sessionm/ui/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    invoke-virtual {v0, v4}, Lcom/sessionm/ui/WebView;->setFocusable(Z)V

    .line 147
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    invoke-virtual {v0}, Lcom/sessionm/ui/WebView;->requestFocusFromTouch()Z

    .line 148
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 149
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 150
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 151
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 152
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 153
    return-void
.end method

.method private launchActivity(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 339
    sget-object v0, Lcom/sessionm/api/SessionM$ActivityType;->PORTAL:Lcom/sessionm/api/SessionM$ActivityType;

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityType:Lcom/sessionm/api/SessionM$ActivityType;

    .line 340
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$3;

    invoke-direct {v1, p0, p1}, Lcom/sessionm/ui/ActivityController$3;-><init>(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method

.method private loadWebView(Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadWebViewListener;)V
    .locals 2

    .prologue
    .line 285
    iput-object p3, p0, Lcom/sessionm/ui/ActivityController;->loadWebViewListener:Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

    .line 287
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sessionm/ui/ActivityController$2;-><init>(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method private prepare(Ljava/lang/String;Lcom/sessionm/ui/ActivityController$PrepareListener;)V
    .locals 2

    .prologue
    .line 472
    sget-object v0, Lcom/sessionm/net/Request$Type;->CONTENT:Lcom/sessionm/net/Request$Type;

    new-instance v1, Lcom/sessionm/ui/ActivityController$8;

    invoke-direct {v1, p0, p2}, Lcom/sessionm/ui/ActivityController$8;-><init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$PrepareListener;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sessionm/ui/ActivityController;->loadContent(Lcom/sessionm/net/Request$Type;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadContentListener;)V

    .line 494
    return-void
.end method

.method private setOrientations([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController;->orientations:[Ljava/lang/String;

    .line 189
    return-void
.end method

.method private setState(Lcom/sessionm/ui/ActivityController$State;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->state:Lcom/sessionm/ui/ActivityController$State;

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->PRESENTED:Lcom/sessionm/ui/ActivityController$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    if-eq p1, v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController;->state:Lcom/sessionm/ui/ActivityController$State;

    goto :goto_0
.end method

.method private updateActivityData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/sessionm/ui/ActivityController;->getActivityData()Lcom/sessionm/json/JSONObject;

    move-result-object v0

    .line 531
    invoke-virtual {v0, p1, p2}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    return-void
.end method


# virtual methods
.method public bridgeAction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$12;

    invoke-direct {v1, p0, p1}, Lcom/sessionm/ui/ActivityController$12;-><init>(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 638
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$7;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/ActivityController$7;-><init>(Lcom/sessionm/ui/ActivityController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method dismissLoader()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$11;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/ActivityController$11;-><init>(Lcom/sessionm/ui/ActivityController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 590
    return-void
.end method

.method displayView()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 316
    const-string v2, "GreyhoundEventDispatcher.dispatch(\'load\',%s);"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sessionm/ui/ActivityController;->getActivityData()Lcom/sessionm/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sessionm/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    invoke-virtual {v2, v1}, Lcom/sessionm/ui/WebView;->setVisibility(I)V

    .line 319
    invoke-virtual {p0}, Lcom/sessionm/ui/ActivityController;->getState()Lcom/sessionm/ui/ActivityController$State;

    move-result-object v2

    sget-object v3, Lcom/sessionm/ui/ActivityController$State;->PRESENTED:Lcom/sessionm/ui/ActivityController$State;

    if-eq v2, v3, :cond_1

    .line 320
    :goto_0
    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->PRESENTED:Lcom/sessionm/ui/ActivityController$State;

    invoke-direct {p0, v1}, Lcom/sessionm/ui/ActivityController;->setState(Lcom/sessionm/ui/ActivityController$State;)V

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 324
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sessionm/api/SessionM;->getActivityListener()Lcom/sessionm/api/ActivityListener;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_0

    .line 327
    :try_start_0
    invoke-interface {v1, v0}, Lcom/sessionm/api/ActivityListener;->onPresented(Lcom/sessionm/api/SessionM;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 319
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    const-string v1, "ActivityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling ActivityListener.onPresented(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method executeJavascript(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$9;

    invoke-direct {v1, p0, p1}, Lcom/sessionm/ui/ActivityController$9;-><init>(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method

.method public getActivityContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    return-object v0
.end method

.method public getActivityType()Lcom/sessionm/api/SessionM$ActivityType;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityType:Lcom/sessionm/api/SessionM$ActivityType;

    return-object v0
.end method

.method getControllerId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/sessionm/ui/ActivityController;->controllerId:I

    return v0
.end method

.method getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getOrientations()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->session:Lcom/sessionm/core/Session;

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->isPortalOrientationLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "portrait"

    aput-object v2, v0, v1

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->orientations:[Ljava/lang/String;

    goto :goto_0
.end method

.method getState()Lcom/sessionm/ui/ActivityController$State;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->state:Lcom/sessionm/ui/ActivityController$State;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->view:Lcom/sessionm/ui/WebView;

    return-object v0
.end method

.method loadContent(Lcom/sessionm/net/Request$Type;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadContentListener;)V
    .locals 3

    .prologue
    .line 228
    const-string v0, "ActivityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loadding content, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/sessionm/ui/ActivityController$State;->LOADING_CONTENT:Lcom/sessionm/ui/ActivityController$State;

    invoke-direct {p0, v0}, Lcom/sessionm/ui/ActivityController;->setState(Lcom/sessionm/ui/ActivityController$State;)V

    .line 230
    new-instance v0, Lcom/sessionm/net/Request;

    invoke-direct {p0}, Lcom/sessionm/ui/ActivityController;->getActivityData()Lcom/sessionm/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p2, p1, v1}, Lcom/sessionm/net/Request;-><init>(Ljava/lang/String;Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V

    .line 231
    new-instance v1, Lcom/sessionm/ui/ActivityController$1;

    invoke-direct {v1, p0, p3}, Lcom/sessionm/ui/ActivityController$1;-><init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$LoadContentListener;)V

    invoke-virtual {v0, v1}, Lcom/sessionm/net/Request;->setListener(Lcom/sessionm/net/RequestListener;)V

    .line 269
    invoke-virtual {v0}, Lcom/sessionm/net/Request;->send()V

    .line 270
    return-void
.end method

.method public notifyApplicationInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 309
    const-string v0, "GreyhoundEventDispatcher.dispatch(\'packageInstalled\',{\'name\':\'%s\',\'referrer\':\'%s\'});"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public presentActivity(Lcom/sessionm/json/JSONObject;)V
    .locals 2

    .prologue
    .line 364
    sget-object v0, Lcom/sessionm/api/SessionM$ActivityType;->ACHIEVEMENT:Lcom/sessionm/api/SessionM$ActivityType;

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityType:Lcom/sessionm/api/SessionM$ActivityType;

    .line 365
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$4;

    invoke-direct {v1, p0, p1}, Lcom/sessionm/ui/ActivityController$4;-><init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public presentActivity(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 381
    sget-object v0, Lcom/sessionm/api/SessionM$ActivityType;->ACHIEVEMENT:Lcom/sessionm/api/SessionM$ActivityType;

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityType:Lcom/sessionm/api/SessionM$ActivityType;

    .line 382
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$5;

    invoke-direct {v1, p0, p1}, Lcom/sessionm/ui/ActivityController$5;-><init>(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method public presentIntroduction()V
    .locals 2

    .prologue
    .line 395
    sget-object v0, Lcom/sessionm/api/SessionM$ActivityType;->PORTAL:Lcom/sessionm/api/SessionM$ActivityType;

    iput-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityType:Lcom/sessionm/api/SessionM$ActivityType;

    .line 396
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$6;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/ActivityController$6;-><init>(Lcom/sessionm/ui/ActivityController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method presentLoader()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/ActivityController$10;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/ActivityController$10;-><init>(Lcom/sessionm/ui/ActivityController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method

.method public presentPortal(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 357
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController;->session:Lcom/sessionm/core/Session;

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 358
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "apps/%s/portal"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v3

    const-string v4, "portal.server.url"

    invoke-virtual {v3, v4}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-direct {p0, v0}, Lcom/sessionm/ui/ActivityController;->launchActivity(Ljava/lang/String;)V

    .line 361
    return-void

    .line 358
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method setPresentedActivity(Lcom/sessionm/ui/SessionMActivity;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController;->presentedActivity:Lcom/sessionm/ui/SessionMActivity;

    .line 213
    return-void
.end method
