.class Lcom/ansca/corona/VideoActivity$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/VideoActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/VideoActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ansca/corona/VideoActivity$1;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 48
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/VideoActivity$1;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-static {v1}, Lcom/ansca/corona/VideoActivity;->access$000(Lcom/ansca/corona/VideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->videoEnded(I)V

    .line 49
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->resumeAll()V

    .line 50
    iget-object v0, p0, Lcom/ansca/corona/VideoActivity$1;->this$0:Lcom/ansca/corona/VideoActivity;

    invoke-virtual {v0}, Lcom/ansca/corona/VideoActivity;->finish()V

    .line 51
    return-void
.end method
