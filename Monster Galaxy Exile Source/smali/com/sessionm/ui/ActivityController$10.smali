.class Lcom/sessionm/ui/ActivityController$10;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->presentLoader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1000(Lcom/sessionm/ui/ActivityController;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1000(Lcom/sessionm/ui/ActivityController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v2}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030059

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/sessionm/ui/ActivityController;->access$1002(Lcom/sessionm/ui/ActivityController;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 543
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v1}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 544
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 545
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 546
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v2}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 547
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 549
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 550
    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 551
    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 552
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v1}, Lcom/sessionm/ui/ActivityController;->access$1000(Lcom/sessionm/ui/ActivityController;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 554
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1000(Lcom/sessionm/ui/ActivityController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 555
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1000(Lcom/sessionm/ui/ActivityController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 556
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1000(Lcom/sessionm/ui/ActivityController;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/sessionm/ui/ActivityController$10$1;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/ActivityController$10$1;-><init>(Lcom/sessionm/ui/ActivityController$10;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 562
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1000(Lcom/sessionm/ui/ActivityController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 566
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
