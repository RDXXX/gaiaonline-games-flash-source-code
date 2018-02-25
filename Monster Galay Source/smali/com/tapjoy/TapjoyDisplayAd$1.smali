.class Lcom/tapjoy/TapjoyDisplayAd$1;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyDisplayAd;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$1;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "returnValue":Z
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$1()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v2

    const-string v3, "https://ws.tapjoyads.com/display_ad?"

    sget-object v4, Lcom/tapjoy/TapjoyDisplayAd;->displayAdURLParams:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "response":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 137
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$0()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v2

    const-string v3, "Network error."

    invoke-interface {v2, v3}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$1;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyDisplayAd;->access$2(Lcom/tapjoy/TapjoyDisplayAd;Ljava/lang/String;)Z

    move-result v1

    .line 144
    if-nez v1, :cond_1

    .line 145
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$0()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v2

    const-string v3, "No ad to display."

    invoke-interface {v2, v3}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
