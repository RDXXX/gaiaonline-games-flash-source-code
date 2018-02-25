.class Lcom/ansca/corona/AdManager$2;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/AdManager;->hideInMobiAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AdManager;


# direct methods
.method constructor <init>(Lcom/ansca/corona/AdManager;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$300(Lcom/ansca/corona/AdManager;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$300(Lcom/ansca/corona/AdManager;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 370
    iget-object v1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$300(Lcom/ansca/corona/AdManager;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 371
    iget-object v1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1, v2}, Lcom/ansca/corona/AdManager;->access$302(Lcom/ansca/corona/AdManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->stopReceivingNotifications()V

    .line 375
    iget-object v1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 376
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 377
    iget-object v1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 380
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/AdManager$2;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1, v2}, Lcom/ansca/corona/AdManager;->access$202(Lcom/ansca/corona/AdManager;Lcom/inmobi/androidsdk/impl/InMobiAdView;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .line 381
    return-void
.end method
