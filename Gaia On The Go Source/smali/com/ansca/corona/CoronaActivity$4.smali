.class Lcom/ansca/corona/CoronaActivity$4;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$finalCameraShotDestinationFile:Ljava/io/File;

.field final synthetic val$finalCameraShotSourceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$4;->this$0:Lcom/ansca/corona/CoronaActivity;

    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$4;->val$finalCameraShotSourceFile:Ljava/io/File;

    iput-object p3, p0, Lcom/ansca/corona/CoronaActivity$4;->val$finalCameraShotDestinationFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1376
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/CoronaActivity$4;->val$finalCameraShotSourceFile:Ljava/io/File;

    iget-object v4, p0, Lcom/ansca/corona/CoronaActivity$4;->val$finalCameraShotDestinationFile:Ljava/io/File;

    invoke-static {v2, v3, v4}, Lcom/ansca/corona/FileServices;->moveFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 1379
    .local v1, "hasSucceeded":Z
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 1380
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 1381
    if-eqz v1, :cond_1

    .line 1382
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity$4;->val$finalCameraShotDestinationFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ansca/corona/events/EventManager;->imagePickerEvent(Ljava/lang/String;)V

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/ansca/corona/events/EventManager;->imagePickerEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
