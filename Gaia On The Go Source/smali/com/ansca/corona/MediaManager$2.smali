.class Lcom/ansca/corona/MediaManager$2;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MediaManager;->loadSound(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MediaManager;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/MediaManager;I)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ansca/corona/MediaManager$2;->this$0:Lcom/ansca/corona/MediaManager;

    iput p2, p0, Lcom/ansca/corona/MediaManager$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 107
    iget-object v0, p0, Lcom/ansca/corona/MediaManager$2;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {v0}, Lcom/ansca/corona/MediaManager;->access$000(Lcom/ansca/corona/MediaManager;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/ansca/corona/MediaManager$2;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {v0}, Lcom/ansca/corona/MediaManager;->access$000(Lcom/ansca/corona/MediaManager;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/ansca/corona/MediaManager$2;->val$id:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    iget v1, p0, Lcom/ansca/corona/MediaManager$2;->val$id:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->soundEnded(I)V

    .line 114
    :cond_1
    return-void
.end method
