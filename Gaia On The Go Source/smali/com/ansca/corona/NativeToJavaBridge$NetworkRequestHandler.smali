.class Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "NativeToJavaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/NativeToJavaBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestHandler"
.end annotation


# instance fields
.field private fFilePath:Ljava/lang/String;

.field private fHasErrorOccurred:Z

.field private fListenerId:I

.field private fResponseMessage:Ljava/lang/String;

.field private fStatusCode:I

.field private fUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/ansca/corona/NativeToJavaBridge;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/NativeToJavaBridge;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "listenerId"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->this$0:Lcom/ansca/corona/NativeToJavaBridge;

    .line 1204
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 1205
    iput p2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fListenerId:I

    .line 1206
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fFilePath:Ljava/lang/String;

    .line 1207
    const/4 v0, -0x1

    iput v0, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fStatusCode:I

    .line 1208
    iput-object p4, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fUrl:Ljava/lang/String;

    .line 1209
    return-void

    .line 1206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 1261
    iget-boolean v0, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fHasErrorOccurred:Z

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fResponseMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->onFailure(Ljava/lang/String;)V

    .line 1268
    :goto_0
    return-void

    .line 1265
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fStatusCode:I

    .line 1266
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fResponseMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 1302
    iget v1, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fListenerId:I

    if-eqz v1, :cond_1

    .line 1303
    if-nez p1, :cond_0

    .line 1304
    const-string p1, ""

    .line 1306
    :cond_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 1307
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_1

    .line 1308
    iget v1, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fListenerId:I

    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/ansca/corona/events/EventManager;->networkRequestEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 1311
    .end local v0    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_1
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 1292
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "errorMessage":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->onFailure(Ljava/lang/String;)V

    .line 1294
    return-void

    .line 1292
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fHasErrorOccurred:Z

    .line 1215
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fResponseMessage:Ljava/lang/String;

    .line 1216
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 1277
    iget v1, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fListenerId:I

    if-eqz v1, :cond_0

    .line 1278
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 1279
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 1280
    iget v1, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fListenerId:I

    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fUrl:Ljava/lang/String;

    iget v3, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fStatusCode:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ansca/corona/events/EventManager;->networkRequestEvent(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1283
    .end local v0    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_0
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 1227
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1228
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fFilePath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1230
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1231
    .local v1, "stream":Ljava/io/FileOutputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 1232
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1233
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1234
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fFilePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fResponseMessage:Ljava/lang/String;

    .line 1241
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fHasErrorOccurred:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :goto_1
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 1250
    return-void

    .line 1238
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->getResponseBody(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fResponseMessage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fResponseMessage:Ljava/lang/String;

    .line 1245
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ansca/corona/NativeToJavaBridge$NetworkRequestHandler;->fHasErrorOccurred:Z

    goto :goto_1
.end method
