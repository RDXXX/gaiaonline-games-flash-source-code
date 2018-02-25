.class Lcom/sessionm/ui/ActivityController$17;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->handlePlayMessage(Lcom/sessionm/json/JSONObject;)V
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
    .line 954
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$17;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 957
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 958
    return-void
.end method
