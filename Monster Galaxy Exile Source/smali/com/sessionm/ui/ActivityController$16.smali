.class Lcom/sessionm/ui/ActivityController$16;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

.field final synthetic val$videoDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$16;->this$0:Lcom/sessionm/ui/ActivityController;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$16;->val$videoDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$16;->this$0:Lcom/sessionm/ui/ActivityController;

    const-string v1, "GreyhoundEventDispatcher.dispatch(\'videoisdone\',{});"

    invoke-virtual {v0, v1}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$16;->val$videoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 950
    const/4 v0, 0x0

    return v0
.end method
