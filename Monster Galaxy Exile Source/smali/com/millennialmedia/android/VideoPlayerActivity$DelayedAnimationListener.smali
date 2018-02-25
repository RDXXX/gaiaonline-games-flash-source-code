.class Lcom/millennialmedia/android/VideoPlayerActivity$DelayedAnimationListener;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedAnimationListener"
.end annotation


# instance fields
.field private button:Landroid/widget/ImageButton;

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .param p2, "b"    # Landroid/widget/ImageButton;
    .param p3, "lp"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$DelayedAnimationListener;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$DelayedAnimationListener;->button:Landroid/widget/ImageButton;

    .line 415
    iput-object p3, p0, Lcom/millennialmedia/android/VideoPlayerActivity$DelayedAnimationListener;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 416
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 426
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 430
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 422
    return-void
.end method
