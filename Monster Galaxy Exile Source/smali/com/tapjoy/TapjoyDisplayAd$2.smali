.class Lcom/tapjoy/TapjoyDisplayAd$2;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyDisplayAd;->buildResponse(Ljava/lang/String;)Z
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
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$2;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    const-string v1, "Display Ad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening URL in new browser = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$2;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v1}, Lcom/tapjoy/TapjoyDisplayAd;->access$4(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DISPLAY_AD_URL"

    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$2;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v1}, Lcom/tapjoy/TapjoyDisplayAd;->access$4(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method
