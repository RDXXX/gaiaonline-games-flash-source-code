.class final Lcom/flurry/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/FlurryAgent;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/flurry/android/b;->a:Lcom/flurry/android/FlurryAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/flurry/android/b;->a:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryAgent;->a()V

    .line 1102
    return-void
.end method
