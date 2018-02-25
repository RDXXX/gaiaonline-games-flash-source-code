.class final Lcom/flurry/android/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/android/ak;


# direct methods
.method constructor <init>(Lcom/flurry/android/ak;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/flurry/android/m;->b:Lcom/flurry/android/ak;

    iput-object p2, p0, Lcom/flurry/android/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 331
    iget-object v0, p0, Lcom/flurry/android/m;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/flurry/android/m;->b:Lcom/flurry/android/ak;

    iget-object v0, v0, Lcom/flurry/android/ak;->d:Lcom/flurry/android/u;

    iget-object v1, p0, Lcom/flurry/android/m;->b:Lcom/flurry/android/ak;

    iget-object v1, v1, Lcom/flurry/android/ak;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/m;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/u;->a(Lcom/flurry/android/u;Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/flurry/android/m;->b:Lcom/flurry/android/ak;

    iget-object v0, v0, Lcom/flurry/android/ak;->c:Lcom/flurry/android/p;

    new-instance v1, Lcom/flurry/android/f;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/flurry/android/m;->b:Lcom/flurry/android/ak;

    iget-object v3, v3, Lcom/flurry/android/ak;->d:Lcom/flurry/android/u;

    invoke-virtual {v3}, Lcom/flurry/android/u;->j()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/f;-><init>(BJ)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/p;->a(Lcom/flurry/android/f;)V

    .line 343
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch in app market: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/m;->b:Lcom/flurry/android/ak;

    iget-object v1, v1, Lcom/flurry/android/ak;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    sget-object v1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/flurry/android/m;->b:Lcom/flurry/android/ak;

    iget-object v1, v1, Lcom/flurry/android/ak;->d:Lcom/flurry/android/u;

    invoke-static {v1, v0}, Lcom/flurry/android/u;->b(Lcom/flurry/android/u;Ljava/lang/String;)V

    goto :goto_0
.end method
