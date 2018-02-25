.class final Lcom/flurry/android/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/flurry/android/u;


# direct methods
.method constructor <init>(Lcom/flurry/android/u;I)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/flurry/android/ad;->b:Lcom/flurry/android/u;

    iput p2, p0, Lcom/flurry/android/ad;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 838
    new-instance v0, Lcom/flurry/android/CallbackEvent;

    iget v1, p0, Lcom/flurry/android/ad;->a:I

    invoke-direct {v0, v1}, Lcom/flurry/android/CallbackEvent;-><init>(I)V

    .line 839
    iget-object v1, p0, Lcom/flurry/android/ad;->b:Lcom/flurry/android/u;

    invoke-static {v1}, Lcom/flurry/android/u;->a(Lcom/flurry/android/u;)Lcom/flurry/android/AppCircleCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flurry/android/AppCircleCallback;->onAdsUpdated(Lcom/flurry/android/CallbackEvent;)V

    .line 840
    return-void
.end method
