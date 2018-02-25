.class Lcom/ansca/corona/AudioRecorder$3;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/AudioRecorder;->postStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AudioRecorder;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/AudioRecorder;I)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$3;->this$0:Lcom/ansca/corona/AudioRecorder;

    iput p2, p0, Lcom/ansca/corona/AudioRecorder$3;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/ansca/corona/AudioRecorder$3;->val$status:I

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$3;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v1}, Lcom/ansca/corona/AudioRecorder;->access$200(Lcom/ansca/corona/AudioRecorder;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->recordCallback(II)V

    .line 269
    return-void
.end method
