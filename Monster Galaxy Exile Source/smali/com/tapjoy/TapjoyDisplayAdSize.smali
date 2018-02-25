.class public Lcom/tapjoy/TapjoyDisplayAdSize;
.super Ljava/lang/Object;
.source "TapjoyDisplayAdSize.java"


# static fields
.field public static TJC_AD_BANNERSIZE_320X50:Ljava/lang/String;

.field public static TJC_AD_BANNERSIZE_640X100:Ljava/lang/String;

.field public static TJC_AD_BANNERSIZE_768X90:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "320x50"

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAdSize;->TJC_AD_BANNERSIZE_320X50:Ljava/lang/String;

    .line 22
    const-string v0, "640x100"

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAdSize;->TJC_AD_BANNERSIZE_640X100:Ljava/lang/String;

    .line 25
    const-string v0, "768x90"

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAdSize;->TJC_AD_BANNERSIZE_768X90:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
