.class public Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;
.super Landroid/app/Dialog;
.source "MogaProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget v0, Lcom/gaiaonline/monstergalaxy/R$style;->NewDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 21
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 26
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 33
    const-class v4, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    monitor-enter v4

    :try_start_0
    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;-><init>(Landroid/content/Context;)V

    .line 34
    .local v1, "dialog":Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;
    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v1, p4}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;->setCancelable(Z)V

    .line 36
    invoke-virtual {v1, p5}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "aImg":Landroid/widget/ImageView;
    sget v3, Lcom/gaiaonline/monstergalaxy/R$drawable;->starseed:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    sget v3, Lcom/gaiaonline/monstergalaxy/R$anim;->progressanimation:I

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 41
    .local v2, "progressAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 44
    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {v1, v0, v3}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v4

    return-object v1

    .line 33
    .end local v0    # "aImg":Landroid/widget/ImageView;
    .end local v1    # "dialog":Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;
    .end local v2    # "progressAnimation":Landroid/view/animation/Animation;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
