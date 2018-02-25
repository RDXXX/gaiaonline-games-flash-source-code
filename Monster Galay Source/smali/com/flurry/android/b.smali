.class final Lcom/flurry/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/flurry/android/FlurryAgent;

.field private synthetic c:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/flurry/android/b;->b:Lcom/flurry/android/FlurryAgent;

    iput-boolean p2, p0, Lcom/flurry/android/b;->c:Z

    iput-object p3, p0, Lcom/flurry/android/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/flurry/android/b;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;)V

    .line 1207
    iget-object v0, p0, Lcom/flurry/android/b;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->c(Lcom/flurry/android/FlurryAgent;)V

    .line 1208
    iget-boolean v0, p0, Lcom/flurry/android/b;->c:Z

    if-nez v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/flurry/android/b;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->d(Lcom/flurry/android/FlurryAgent;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/l;

    invoke-direct {v1, p0}, Lcom/flurry/android/l;-><init>(Lcom/flurry/android/b;)V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1220
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/flurry/android/b;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->e(Lcom/flurry/android/FlurryAgent;)Lcom/flurry/android/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/u;->c()V

    .line 1224
    :cond_1
    return-void
.end method
