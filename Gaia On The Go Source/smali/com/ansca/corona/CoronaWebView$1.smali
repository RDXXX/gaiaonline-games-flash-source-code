.class Lcom/ansca/corona/CoronaWebView$1;
.super Landroid/webkit/WebChromeClient;
.source "CoronaWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaWebView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaWebView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ansca/corona/CoronaWebView$1;->this$0:Lcom/ansca/corona/CoronaWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 81
    if-eqz p2, :cond_0

    .line 82
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 84
    :cond_0
    return-void
.end method
