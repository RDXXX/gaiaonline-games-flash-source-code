.class final Lcom/flurry/android/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/ag;


# direct methods
.method constructor <init>(Lcom/flurry/android/ag;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/flurry/android/k;->a:Lcom/flurry/android/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/android/k;->a:Lcom/flurry/android/ag;

    invoke-static {v0}, Lcom/flurry/android/ag;->a(Lcom/flurry/android/ag;)V

    .line 32
    return-void
.end method
