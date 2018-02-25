.class Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;
.super Ljava/util/TimerTask;
.source "InMobiAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/impl/InMobiAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationRefreshTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;


# direct methods
.method private constructor <init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;)V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->access$0(Lcom/inmobi/androidsdk/impl/InMobiAdView;)Lcom/inmobi/androidsdk/impl/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setValidGeoInfo(Z)V

    .line 705
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->access$0(Lcom/inmobi/androidsdk/impl/InMobiAdView;)Lcom/inmobi/androidsdk/impl/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->switchOnLocUpdate()V

    .line 706
    return-void
.end method
