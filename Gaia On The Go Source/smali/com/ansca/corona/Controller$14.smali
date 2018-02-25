.class Lcom/ansca/corona/Controller$14;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->facebookLogout()V
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
    .line 1449
    iput-object p1, p0, Lcom/ansca/corona/Controller$14;->this$0:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onThrowable(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1469
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 1470
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEventError(Ljava/lang/String;)V

    .line 1473
    :cond_0
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1451
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 1452
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1453
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEvent(I)V

    .line 1455
    :cond_0
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/FacebookError;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1466
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller$14;->onThrowable(Ljava/lang/Throwable;)V

    .line 1467
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1460
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller$14;->onThrowable(Ljava/lang/Throwable;)V

    .line 1461
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1457
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller$14;->onThrowable(Ljava/lang/Throwable;)V

    .line 1458
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1463
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller$14;->onThrowable(Ljava/lang/Throwable;)V

    .line 1464
    return-void
.end method
