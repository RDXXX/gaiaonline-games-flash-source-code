.class Lcom/ansca/corona/Controller$15;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->facebookRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;)V
    .locals 0

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/ansca/corona/Controller$15;->this$0:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onThrowable(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1541
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 1542
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/events/EventManager;->fbConnectRequestEvent(Ljava/lang/String;Z)V

    .line 1545
    :cond_0
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1523
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 1524
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1525
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ansca/corona/events/EventManager;->fbConnectRequestEvent(Ljava/lang/String;Z)V

    .line 1527
    :cond_0
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/FacebookError;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1538
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller$15;->onThrowable(Ljava/lang/Throwable;)V

    .line 1539
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller$15;->onThrowable(Ljava/lang/Throwable;)V

    .line 1533
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1529
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller$15;->onThrowable(Ljava/lang/Throwable;)V

    .line 1530
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1535
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller$15;->onThrowable(Ljava/lang/Throwable;)V

    .line 1536
    return-void
.end method
