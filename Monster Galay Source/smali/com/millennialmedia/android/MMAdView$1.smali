.class Lcom/millennialmedia/android/MMAdView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 412
    .local v0, "dx":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 414
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    .line 416
    sget v2, Lcom/millennialmedia/android/MMAdViewSDK;->logLevel:I

    if-nez v2, :cond_1

    .line 418
    const-string v1, "Enabling debug and verbose logging."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x2

    sput v1, Lcom/millennialmedia/android/MMAdViewSDK;->logLevel:I

    .line 431
    :goto_0
    const/4 v1, 0x1

    .line 433
    :cond_0
    return v1

    .line 423
    :cond_1
    const-string v2, "Disabling debug and verbose logging."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 424
    sput v1, Lcom/millennialmedia/android/MMAdViewSDK;->logLevel:I

    goto :goto_0

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdView;->access$000(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0
.end method
