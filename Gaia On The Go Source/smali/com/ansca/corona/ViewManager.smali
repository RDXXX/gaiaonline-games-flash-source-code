.class public Lcom/ansca/corona/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/ViewManager$StringObjectHashMap;
    }
.end annotation


# static fields
.field private static ourViewManager:Lcom/ansca/corona/ViewManager;


# instance fields
.field private myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

.field private myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

.field private myActivity:Lcom/ansca/corona/CoronaActivity;

.field private myContentView:Landroid/view/ViewGroup;

.field private myDisplayObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private myOverlayView:Landroid/widget/FrameLayout;

.field private myVideoView:Lcom/ansca/corona/CoronaVideoView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    .line 37
    iput-object v1, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    .line 38
    iput-object v1, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    .line 39
    iput-object v1, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    .line 40
    iput-object v1, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    .line 41
    iput-object v1, p0, Lcom/ansca/corona/ViewManager;->myVideoView:Lcom/ansca/corona/CoronaVideoView;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/ViewManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/ViewManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/ViewManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ansca/corona/ViewManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/ViewManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ansca/corona/ViewManager;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/ViewManager;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->setHardwareAccelerationEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/ViewManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myVideoView:Lcom/ansca/corona/CoronaVideoView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/CoronaVideoView;)Lcom/ansca/corona/CoronaVideoView;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/ViewManager;
    .param p1, "x1"    # Lcom/ansca/corona/CoronaVideoView;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ansca/corona/ViewManager;->myVideoView:Lcom/ansca/corona/CoronaVideoView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/ViewManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/ansca/corona/ViewManager;->ourViewManager:Lcom/ansca/corona/ViewManager;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/ansca/corona/ViewManager;->ourViewManager:Lcom/ansca/corona/ViewManager;

    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->destroyAllDisplayObjects()V

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/ansca/corona/ViewManager;->ourViewManager:Lcom/ansca/corona/ViewManager;

    .line 100
    :cond_0
    return-void
.end method

.method public static getViewManager()Lcom/ansca/corona/ViewManager;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/ansca/corona/ViewManager;->ourViewManager:Lcom/ansca/corona/ViewManager;

    return-object v0
.end method

.method public static initialize(Lcom/ansca/corona/CoronaActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 87
    sget-object v0, Lcom/ansca/corona/ViewManager;->ourViewManager:Lcom/ansca/corona/ViewManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/ansca/corona/ViewManager;

    invoke-direct {v0, p0}, Lcom/ansca/corona/ViewManager;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    sput-object v0, Lcom/ansca/corona/ViewManager;->ourViewManager:Lcom/ansca/corona/ViewManager;

    .line 91
    :cond_0
    return-void
.end method

.method private postOnUiThread(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 166
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 174
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 178
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    goto :goto_0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 195
    if-nez p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 203
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setHardwareAccelerationEnabled(Landroid/view/View;Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 828
    if-nez p1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 835
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "setLayerType"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/graphics/Paint;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 837
    .local v1, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    if-eqz p2, :cond_2

    .line 838
    .local v0, "layerType":I
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 840
    .end local v0    # "layerType":I
    .end local v1    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    goto :goto_0

    .restart local v1    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :cond_2
    move v0, v2

    .line 837
    goto :goto_1
.end method


# virtual methods
.method public addMapMarker(IDDLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 1142
    new-instance v0, Lcom/ansca/corona/ViewManager$28;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ansca/corona/ViewManager$28;-><init>(Lcom/ansca/corona/ViewManager;IDDLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 1150
    return-void
.end method

.method public addMapView(IIIII)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 994
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 995
    .local v7, "context":Landroid/content/Context;
    if-eqz v7, :cond_0

    .line 996
    const-string v0, "android.permission.INTERNET"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_0
    new-instance v0, Lcom/ansca/corona/ViewManager$24;

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/ViewManager$24;-><init>(Lcom/ansca/corona/ViewManager;IIIII)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 1024
    return-void
.end method

.method public addTextView(IIIIIZ)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isSingleLine"    # Z

    .prologue
    .line 263
    new-instance v0, Lcom/ansca/corona/ViewManager$1;

    move-object v1, p0

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move v6, p1

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ansca/corona/ViewManager$1;-><init>(Lcom/ansca/corona/ViewManager;IIIIIZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public addWebView(IIIIIZZ)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isPopup"    # Z
    .param p7, "autoCloseEnabled"    # Z

    .prologue
    .line 891
    new-instance v0, Lcom/ansca/corona/ViewManager$18;

    move-object v1, p0

    move v2, p6

    move v3, p1

    move/from16 v4, p7

    move v5, p4

    move v6, p5

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/ansca/corona/ViewManager$18;-><init>(Lcom/ansca/corona/ViewManager;ZIZIIII)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 931
    return-void
.end method

.method public createVideoView()Lcom/ansca/corona/CoronaVideoView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 852
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    if-nez v1, :cond_1

    .line 853
    :cond_0
    const/4 v1, 0x0

    .line 863
    :goto_0
    return-object v1

    .line 857
    :cond_1
    new-instance v1, Lcom/ansca/corona/CoronaVideoView;

    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v1, v2}, Lcom/ansca/corona/CoronaVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ansca/corona/ViewManager;->myVideoView:Lcom/ansca/corona/CoronaVideoView;

    .line 858
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 859
    .local v0, "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 860
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myVideoView:Lcom/ansca/corona/CoronaVideoView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getGLView()Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->setVisibility(I)V

    .line 863
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myVideoView:Lcom/ansca/corona/CoronaVideoView;

    goto :goto_0
.end method

.method public destroyAllDisplayObjects()V
    .locals 4

    .prologue
    .line 564
    :cond_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    const/4 v0, 0x0

    .line 571
    .local v0, "view":Landroid/view/View;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ansca/corona/ViewManager;->destroyDisplayObject(I)V

    .line 577
    :cond_1
    if-nez v0, :cond_0

    .line 578
    return-void

    .line 569
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 571
    .end local v0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public destroyDisplayObject(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v0

    .line 583
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    new-instance v1, Lcom/ansca/corona/ViewManager$12;

    invoke-direct {v1, p0, v0}, Lcom/ansca/corona/ViewManager$12;-><init>(Lcom/ansca/corona/ViewManager;Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/ansca/corona/ViewManager;->runOnUiThread(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public destroyVideoView()V
    .locals 1

    .prologue
    .line 868
    new-instance v0, Lcom/ansca/corona/ViewManager$17;

    invoke-direct {v0, p0}, Lcom/ansca/corona/ViewManager$17;-><init>(Lcom/ansca/corona/ViewManager;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 885
    return-void
.end method

.method public displayObjectUpdateScreenBounds(IIIII)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 637
    new-instance v0, Lcom/ansca/corona/ViewManager$14;

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/ViewManager$14;-><init>(Lcom/ansca/corona/ViewManager;IIIII)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 646
    return-void
.end method

.method public getAbsolutePopupLayout()Landroid/widget/AbsoluteLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method public getAbsoluteViewLayout()Landroid/widget/AbsoluteLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDisplayObjectAlpha(I)F
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 659
    const/high16 v0, 0x3f800000    # 1.0f

    .line 661
    .local v0, "alpha":F
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v3

    .line 662
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 663
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 664
    .local v1, "tag":Ljava/lang/Object;
    instance-of v4, v1, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    if-eqz v4, :cond_0

    .line 665
    check-cast v1, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    .end local v1    # "tag":Ljava/lang/Object;
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 666
    .local v2, "value":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Float;

    if-eqz v4, :cond_0

    .line 667
    check-cast v2, Ljava/lang/Float;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 671
    :cond_0
    return v0
.end method

.method public getDisplayObjectBackground(I)Z
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 788
    const/4 v2, 0x0

    .line 791
    .local v2, "hasBackground":Z
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v4

    .line 792
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 823
    .end local v4    # "view":Landroid/view/View;
    :goto_0
    return v6

    .line 797
    .restart local v4    # "view":Landroid/view/View;
    :cond_0
    instance-of v7, v4, Lcom/ansca/corona/MapView;

    if-eqz v7, :cond_2

    .line 799
    const/4 v2, 0x1

    .end local v4    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    move v6, v2

    .line 823
    goto :goto_0

    .line 801
    .restart local v4    # "view":Landroid/view/View;
    :cond_2
    instance-of v7, v4, Landroid/webkit/WebView;

    if-eqz v7, :cond_4

    .line 804
    check-cast v4, Landroid/webkit/WebView;

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4}, Lcom/ansca/corona/CoronaWebView;->getBackgroundColorFrom(Landroid/webkit/WebView;)I

    move-result v1

    .line 805
    .local v1, "color":I
    if-eqz v1, :cond_3

    move v2, v5

    .line 806
    :goto_2
    goto :goto_1

    :cond_3
    move v2, v6

    .line 805
    goto :goto_2

    .line 809
    .end local v1    # "color":I
    .restart local v4    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 810
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v7, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_6

    .line 811
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v7

    if-lez v7, :cond_5

    move v2, v5

    :goto_3
    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_3

    .line 813
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v7, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v7, :cond_8

    .line 814
    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 815
    .local v3, "paint":Landroid/graphics/Paint;
    if-eqz v3, :cond_1

    .line 816
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eqz v7, :cond_7

    move v2, v5

    :goto_4
    goto :goto_1

    :cond_7
    move v2, v6

    goto :goto_4

    .line 819
    .end local v3    # "paint":Landroid/graphics/Paint;
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_8
    if-eqz v0, :cond_1

    .line 820
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getDisplayObjectById(I)Landroid/view/View;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 113
    iget-object v3, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v3

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 115
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 116
    monitor-exit v3

    .line 120
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    .line 119
    :cond_1
    monitor-exit v3

    .line 120
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v3

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 132
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 133
    monitor-exit v3

    .line 137
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    .line 136
    :cond_1
    monitor-exit v3

    .line 137
    const/4 v1, 0x0

    goto :goto_0

    .line 136
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDisplayObjectVisible(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v1

    .line 652
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 655
    :cond_0
    :goto_0
    return v0

    .line 653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMapType(I)Lcom/ansca/corona/MapType;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1121
    const-class v1, Lcom/ansca/corona/MapView;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/MapView;

    .line 1122
    .local v0, "view":Lcom/ansca/corona/MapView;
    if-nez v0, :cond_0

    .line 1123
    sget-object v1, Lcom/ansca/corona/MapType;->STANDARD:Lcom/ansca/corona/MapType;

    .line 1125
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/MapView;->getMapType()Lcom/ansca/corona/MapType;

    move-result-object v1

    goto :goto_0
.end method

.method public getOverlayView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTextViewAlign(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 400
    const-class v1, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 401
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 402
    const-string v1, ""

    .line 404
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getTextViewAlign()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextViewColor(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 421
    const-class v1, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 422
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 423
    const/4 v1, 0x0

    .line 424
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getTextViewColor()I

    move-result v1

    goto :goto_0
.end method

.method public getTextViewInputType(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 315
    const-class v1, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 316
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 317
    const-string v1, "error"

    .line 319
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getTextViewInputType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextViewPassword(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 378
    const-class v1, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 379
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 380
    const/4 v1, 0x0

    .line 382
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getTextViewPassword()Z

    move-result v1

    goto :goto_0
.end method

.method public getTextViewSize(I)F
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 441
    const-class v1, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 442
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 443
    const/4 v1, 0x0

    .line 444
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getTextViewSize()F

    move-result v1

    goto :goto_0
.end method

.method public getTextViewText(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 523
    const-class v1, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 524
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 525
    const-string v1, ""

    .line 528
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getTextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public goBack()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v4, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 257
    :goto_0
    return v3

    .line 244
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 246
    .local v0, "backKeyEvent":Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v4

    .line 247
    :try_start_0
    iget-object v5, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 248
    .local v2, "view":Landroid/view/View;
    instance-of v5, v2, Lcom/ansca/corona/CoronaWebView;

    if-eqz v5, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v5, v0}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    .line 254
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "view":Landroid/view/View;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hasDisplayObjectWithId(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayObjectWithId(Ljava/lang/Class;I)Z
    .locals 1
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentLocationVisibleInMap(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1075
    const-class v1, Lcom/ansca/corona/MapView;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/MapView;

    .line 1076
    .local v0, "view":Lcom/ansca/corona/MapView;
    if-nez v0, :cond_0

    .line 1077
    const/4 v1, 0x0

    .line 1079
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/MapView;->isCurrentLocationVisible()Z

    move-result v1

    goto :goto_0
.end method

.method public isMapScrollEnabled(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1083
    const-class v1, Lcom/ansca/corona/MapView;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/MapView;

    .line 1084
    .local v0, "view":Lcom/ansca/corona/MapView;
    if-nez v0, :cond_0

    .line 1085
    const/4 v1, 0x0

    .line 1087
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/MapView;->isScrollEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public isMapZoomEnabled(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1102
    const-class v1, Lcom/ansca/corona/MapView;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/MapView;

    .line 1103
    .local v0, "view":Lcom/ansca/corona/MapView;
    if-nez v0, :cond_0

    .line 1104
    const/4 v1, 0x0

    .line 1106
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/MapView;->isZoomEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public isTextViewEditable(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 356
    const-class v1, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v1, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 357
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 358
    const/4 v1, 0x1

    .line 360
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public isTextViewSingleLine(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 335
    const-class v2, Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p0, v2, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 336
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getInputType()I

    move-result v2

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pushMapCurrentLocationToLua(IJ)I
    .locals 9
    .param p1, "id"    # I
    .param p2, "luaStateMemoryAddress"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1028
    invoke-static {p2, p3}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaRuntimeByLuaState(J)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v3

    .line 1029
    .local v3, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-nez v3, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return v5

    .line 1032
    :cond_1
    invoke-virtual {v3}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    .line 1033
    .local v1, "luaState":Lcom/naef/jnlua/LuaState;
    if-eqz v1, :cond_0

    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "currentLocation":Landroid/location/Location;
    const-class v7, Lcom/ansca/corona/MapView;

    invoke-virtual {p0, v7, p1}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/MapView;

    .line 1040
    .local v4, "view":Lcom/ansca/corona/MapView;
    if-eqz v4, :cond_2

    .line 1041
    invoke-virtual {v4}, Lcom/ansca/corona/MapView;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1045
    :cond_2
    invoke-virtual {v1, v5, v5}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 1046
    invoke-virtual {v1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v2

    .line 1047
    .local v2, "luaTableStackIndex":I
    if-eqz v0, :cond_3

    .line 1048
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 1049
    const-string v5, "latitude"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1050
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 1051
    const-string v5, "longitude"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1052
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 1053
    const-string v5, "altitude"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1054
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-double v7, v5

    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 1055
    const-string v5, "accuracy"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1056
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v5

    float-to-double v7, v5

    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 1057
    const-string v5, "speed"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1058
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v5

    float-to-double v7, v5

    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 1059
    const-string v5, "direction"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1060
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {v1, v7, v8}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 1061
    const-string v5, "time"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1062
    invoke-virtual {v1, v6}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 1063
    const-string v5, "isUpdating"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :goto_1
    move v5, v6

    .line 1071
    goto :goto_0

    .line 1066
    :cond_3
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    .line 1067
    const-string v5, "errorCode"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 1068
    const-string v5, "Current location is unknown."

    invoke-virtual {v1, v5}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 1069
    const-string v5, "errorMessage"

    invoke-virtual {v1, v2, v5}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public removeAllMapViewMarkers(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1153
    new-instance v0, Lcom/ansca/corona/ViewManager$29;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$29;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 1161
    return-void
.end method

.method public requestWebViewGoBack(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 969
    new-instance v0, Lcom/ansca/corona/ViewManager$22;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$22;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method public requestWebViewGoForward(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 981
    new-instance v0, Lcom/ansca/corona/ViewManager$23;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$23;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 990
    return-void
.end method

.method public requestWebViewLoadUrl(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 934
    new-instance v0, Lcom/ansca/corona/ViewManager$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$19;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 943
    return-void
.end method

.method public requestWebViewReload(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 946
    new-instance v0, Lcom/ansca/corona/ViewManager$20;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$20;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 955
    return-void
.end method

.method public requestWebViewStop(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 958
    new-instance v0, Lcom/ansca/corona/ViewManager$21;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/ViewManager$21;-><init>(Lcom/ansca/corona/ViewManager;I)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 966
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 227
    iget-object v3, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 229
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/ansca/corona/MapView;

    if-eqz v2, :cond_0

    .line 231
    check-cast v1, Lcom/ansca/corona/MapView;

    .end local v1    # "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ansca/corona/MapView;->setCurrentLocationTrackingEnabled(Z)V

    goto :goto_0

    .line 234
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    return-void
.end method

.method public setDisplayObjectAlpha(IF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 675
    new-instance v0, Lcom/ansca/corona/ViewManager$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$15;-><init>(Lcom/ansca/corona/ViewManager;IF)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 713
    return-void
.end method

.method public setDisplayObjectBackground(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isVisible"    # Z

    .prologue
    .line 716
    new-instance v0, Lcom/ansca/corona/ViewManager$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$16;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 785
    return-void
.end method

.method public setDisplayObjectVisible(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 618
    new-instance v0, Lcom/ansca/corona/ViewManager$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$13;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 632
    return-void
.end method

.method public setGLView(Landroid/view/View;)V
    .locals 3
    .param p1, "glView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 536
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    .line 537
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 538
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 542
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 547
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    .line 548
    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    .line 549
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myAbsoluteViewLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myOverlayView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 554
    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    .line 555
    iget-object v0, p0, Lcom/ansca/corona/ViewManager;->myContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ansca/corona/ViewManager;->myAbsolutePopupLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 556
    return-void
.end method

.method public setMapCenter(IDDZ)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "isAnimated"    # Z

    .prologue
    .line 1164
    new-instance v0, Lcom/ansca/corona/ViewManager$30;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ansca/corona/ViewManager$30;-><init>(Lcom/ansca/corona/ViewManager;IDDZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 1172
    return-void
.end method

.method public setMapRegion(IDDDDZ)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "latitudeSpan"    # D
    .param p8, "longitudeSpan"    # D
    .param p10, "isAnimated"    # Z

    .prologue
    .line 1178
    new-instance v0, Lcom/ansca/corona/ViewManager$31;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/ansca/corona/ViewManager$31;-><init>(Lcom/ansca/corona/ViewManager;IDDDDZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 1186
    return-void
.end method

.method public setMapScrollEnabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1091
    new-instance v0, Lcom/ansca/corona/ViewManager$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$25;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 1099
    return-void
.end method

.method public setMapType(ILcom/ansca/corona/MapType;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "mapType"    # Lcom/ansca/corona/MapType;

    .prologue
    .line 1129
    new-instance v0, Lcom/ansca/corona/ViewManager$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$27;-><init>(Lcom/ansca/corona/ViewManager;ILcom/ansca/corona/MapType;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 1137
    return-void
.end method

.method public setMapZoomEnabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1110
    new-instance v0, Lcom/ansca/corona/ViewManager$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$26;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 1118
    return-void
.end method

.method public setTextViewAlign(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "align"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Lcom/ansca/corona/ViewManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$6;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method public setTextViewColor(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "color"    # I

    .prologue
    .line 409
    new-instance v0, Lcom/ansca/corona/ViewManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$7;-><init>(Lcom/ansca/corona/ViewManager;II)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method public setTextViewEditable(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isEditable"    # Z

    .prologue
    .line 343
    new-instance v0, Lcom/ansca/corona/ViewManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$4;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 353
    return-void
.end method

.method public setTextViewFocus(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "focus"    # Z

    .prologue
    .line 449
    new-instance v0, Lcom/ansca/corona/ViewManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$9;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 477
    return-void
.end method

.method public setTextViewFont(ILjava/lang/String;FLcom/ansca/corona/CoronaActivity;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "fontSize"    # F
    .param p4, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 510
    new-instance v0, Lcom/ansca/corona/ViewManager$11;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/ViewManager$11;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;FLcom/ansca/corona/CoronaActivity;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 519
    return-void
.end method

.method public setTextViewInputType(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "inputType"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v0, Lcom/ansca/corona/ViewManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$2;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public setTextViewPassword(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isPassword"    # Z

    .prologue
    .line 365
    new-instance v0, Lcom/ansca/corona/ViewManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$5;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method public setTextViewSingleLine(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isSingleLine"    # Z

    .prologue
    .line 324
    new-instance v0, Lcom/ansca/corona/ViewManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$3;-><init>(Lcom/ansca/corona/ViewManager;IZ)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method public setTextViewSize(IF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "size"    # F

    .prologue
    .line 429
    new-instance v0, Lcom/ansca/corona/ViewManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$8;-><init>(Lcom/ansca/corona/ViewManager;IF)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 437
    return-void
.end method

.method public setTextViewText(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 480
    new-instance v0, Lcom/ansca/corona/ViewManager$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/ViewManager$10;-><init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ansca/corona/ViewManager;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method

.method public suspend()V
    .locals 4

    .prologue
    .line 215
    iget-object v3, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    monitor-enter v3

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager;->myDisplayObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 217
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/ansca/corona/MapView;

    if-eqz v2, :cond_0

    .line 219
    check-cast v1, Lcom/ansca/corona/MapView;

    .end local v1    # "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ansca/corona/MapView;->setCurrentLocationTrackingEnabled(Z)V

    goto :goto_0

    .line 222
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    return-void
.end method
