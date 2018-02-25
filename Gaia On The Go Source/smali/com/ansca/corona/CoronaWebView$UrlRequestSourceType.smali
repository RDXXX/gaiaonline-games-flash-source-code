.class Lcom/ansca/corona/CoronaWebView$UrlRequestSourceType;
.super Ljava/lang/Object;
.source "CoronaWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UrlRequestSourceType"
.end annotation


# static fields
.field public static final FORM:I = 0x1

.field public static final HISTORY:I = 0x2

.field public static final LINK:I = 0x0

.field public static final OTHER:I = 0x5

.field public static final RELOAD:I = 0x3

.field public static final RESUBMITTED:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
