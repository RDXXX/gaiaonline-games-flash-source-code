.class Lcom/inmobi/androidsdk/impl/InMobiAdView$3;
.super Ljava/lang/Object;
.source "InMobiAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/InMobiAdView;->scheduleDeviceInfoUpload(Lcom/inmobi/androidsdk/impl/AdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

.field private final synthetic val$uploadURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$3;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$3;->val$uploadURL:Ljava/lang/String;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$3;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$3;->val$uploadURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->startDeviceInfoUpload(Ljava/lang/String;)V

    .line 396
    return-void
.end method
