.class Lcom/inmobi/androidsdk/impl/InMobiAdView$2$2;
.super Ljava/lang/Object;
.source "InMobiAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/inmobi/androidsdk/impl/InMobiAdView$2;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/InMobiAdView$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$2$2;->this$1:Lcom/inmobi/androidsdk/impl/InMobiAdView$2;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$2$2;->this$1:Lcom/inmobi/androidsdk/impl/InMobiAdView$2;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->access$0(Lcom/inmobi/androidsdk/impl/InMobiAdView$2;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->access$5(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V

    .line 356
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$2$2;->this$1:Lcom/inmobi/androidsdk/impl/InMobiAdView$2;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->access$0(Lcom/inmobi/androidsdk/impl/InMobiAdView$2;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setDownloadingNewAd(Z)V

    .line 357
    return-void
.end method
