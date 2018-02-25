.class Lcom/ansca/corona/Controller$9;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showImagePickerWindow(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$destinationFilePath:Ljava/lang/String;

.field final synthetic val$imageSourceType:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Lcom/ansca/corona/Controller$9;->this$0:Lcom/ansca/corona/Controller;

    iput p2, p0, Lcom/ansca/corona/Controller$9;->val$imageSourceType:I

    iput-object p3, p0, Lcom/ansca/corona/Controller$9;->val$destinationFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 886
    monitor-enter p0

    .line 888
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    monitor-exit p0

    .line 908
    :goto_0
    return-void

    .line 893
    :cond_0
    iget v0, p0, Lcom/ansca/corona/Controller$9;->val$imageSourceType:I

    packed-switch v0, :pswitch_data_0

    .line 904
    const-string v0, "Corona"

    const-string v1, "media.show() does not support the given image source."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    monitor-exit p0

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 896
    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/Controller$9;->val$destinationFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->showSelectImageWindowUsing(Ljava/lang/String;)V

    .line 907
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 900
    :pswitch_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/Controller$9;->val$destinationFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->showCameraWindowUsing(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 893
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
