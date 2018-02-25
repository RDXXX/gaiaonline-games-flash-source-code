.class Lcom/ansca/corona/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CameraActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CameraActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    array-length v7, p1

    if-lez v7, :cond_0

    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v7

    if-nez v7, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v4, 0x0

    .line 64
    .local v4, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {v7}, Lcom/ansca/corona/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 66
    iget-object v7, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {v7}, Lcom/ansca/corona/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 67
    if-nez v4, :cond_2

    .line 69
    iget-object v7, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {v7}, Lcom/ansca/corona/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 70
    iget-object v7, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {v7}, Lcom/ansca/corona/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "output"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "uri":Landroid/net/Uri;
    check-cast v4, Landroid/net/Uri;

    .line 74
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v5, 0x1

    .line 75
    .local v5, "wasFileNameProvided":Z
    if-nez v4, :cond_3

    .line 78
    iget-object v7, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-static {}, Lcom/ansca/corona/CameraActivity;->access$000()I

    move-result v8

    invoke-static {v7, v8}, Lcom/ansca/corona/CameraActivity;->access$100(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 79
    .local v1, "imageFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 80
    const/4 v5, 0x0

    .line 84
    .end local v1    # "imageFile":Ljava/io/File;
    :cond_3
    const/4 v6, 0x0

    .line 86
    .local v6, "wasSaved":Z
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 88
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 89
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 90
    const/4 v6, 0x1

    .line 91
    if-nez v5, :cond_4

    .line 93
    invoke-static {}, Lcom/ansca/corona/CameraActivity;->access$008()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    if-eqz v6, :cond_0

    .line 106
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    iget-object v7, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v2}, Lcom/ansca/corona/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 111
    iget-object v7, p0, Lcom/ansca/corona/CameraActivity$1;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-virtual {v7}, Lcom/ansca/corona/CameraActivity;->finish()V

    goto :goto_0

    .line 96
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
