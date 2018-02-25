.class Lcom/millennialmedia/android/MMAdView$Request;
.super Ljava/lang/Object;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Request"
.end annotation


# instance fields
.field apid:Ljava/lang/String;

.field fetch:Z

.field requestListener:Lcom/millennialmedia/android/MMAdView$RequestListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView$RequestListener;Z)V
    .locals 0
    .param p1, "apid"    # Ljava/lang/String;
    .param p2, "requestListener"    # Lcom/millennialmedia/android/MMAdView$RequestListener;
    .param p3, "fetch"    # Z

    .prologue
    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$Request;->apid:Ljava/lang/String;

    .line 1335
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$Request;->requestListener:Lcom/millennialmedia/android/MMAdView$RequestListener;

    .line 1336
    iput-boolean p3, p0, Lcom/millennialmedia/android/MMAdView$Request;->fetch:Z

    .line 1337
    return-void
.end method
