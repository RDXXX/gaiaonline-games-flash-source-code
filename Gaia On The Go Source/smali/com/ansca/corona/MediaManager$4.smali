.class Lcom/ansca/corona/MediaManager$4;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MediaManager;->onUsingAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MediaManager;


# direct methods
.method constructor <init>(Lcom/ansca/corona/MediaManager;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/ansca/corona/MediaManager$4;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 340
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 341
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->setVolumeControlStream(I)V

    .line 343
    :cond_0
    return-void
.end method
