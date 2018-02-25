.class final Lcom/sessionm/a/e$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/a/e;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aa:Landroid/content/Context;

.field final synthetic ab:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/sessionm/a/e$3;->aa:Landroid/content/Context;

    iput-object p2, p0, Lcom/sessionm/a/e$3;->ab:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplyReceived(Lcom/sessionm/net/Request;)V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sessionm/a/e$3;->aa:Landroid/content/Context;

    const-string v1, "smInstallsFile"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 379
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/a/e$3;->ab:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    return-void
.end method

.method public onRequestSent(Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 373
    return-void
.end method
