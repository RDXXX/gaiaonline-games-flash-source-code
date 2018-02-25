.class Lnetwork/NetworkRequest$CoronaFileSpec;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaFileSpec"
.end annotation


# instance fields
.field public baseDirectory:Ljava/lang/Object;

.field public filename:Ljava/lang/String;

.field public fullPath:Ljava/lang/String;

.field public isResourceFile:Ljava/lang/Boolean;

.field final synthetic this$0:Lnetwork/NetworkRequest;


# direct methods
.method public constructor <init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "baseDirectory"    # Ljava/lang/Object;
    .param p4, "fullPath"    # Ljava/lang/String;
    .param p5, "isResourceFile"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 287
    iput-object p1, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object v0, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->filename:Ljava/lang/String;

    .line 282
    iput-object v0, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->baseDirectory:Ljava/lang/Object;

    .line 283
    iput-object v0, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->isResourceFile:Ljava/lang/Boolean;

    .line 288
    iput-object p2, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->filename:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->baseDirectory:Ljava/lang/Object;

    .line 290
    iput-object p4, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    .line 291
    iput-object p5, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->isResourceFile:Ljava/lang/Boolean;

    .line 292
    return-void
.end method


# virtual methods
.method public getFileSize()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    const-wide/16 v1, -0x1

    .line 320
    .local v1, "length":J
    iget-object v3, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->isResourceFile:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 331
    :goto_0
    return-wide v1

    .line 326
    :cond_0
    invoke-virtual {p0}, Lnetwork/NetworkRequest$CoronaFileSpec;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 327
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-long v1, v3

    .line 328
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 298
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->isResourceFile:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    iget-object v2, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 313
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 309
    :cond_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lnetwork/NetworkRequest$CoronaFileSpec;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method
