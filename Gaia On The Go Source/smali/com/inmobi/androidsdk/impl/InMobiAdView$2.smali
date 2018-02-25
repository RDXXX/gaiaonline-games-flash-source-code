.class Lcom/inmobi/androidsdk/impl/InMobiAdView$2;
.super Ljava/lang/Thread;
.source "InMobiAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/InMobiAdView;->setupAdRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

.field private final synthetic val$adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->val$adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .line 319
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/inmobi/androidsdk/impl/InMobiAdView$2;)Lcom/inmobi/androidsdk/impl/InMobiAdView;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "status":Z
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->access$2(Lcom/inmobi/androidsdk/impl/InMobiAdView;)Z

    move-result v0

    .line 344
    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->val$adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/inmobi/androidsdk/impl/InMobiAdView$2$1;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView$2$1;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->val$adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/inmobi/androidsdk/impl/InMobiAdView$2$2;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView$2$2;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
