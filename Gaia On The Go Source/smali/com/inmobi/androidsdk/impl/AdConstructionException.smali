.class public final Lcom/inmobi/androidsdk/impl/AdConstructionException;
.super Ljava/lang/Exception;
.source "AdConstructionException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "parseException"    # Lorg/xmlpull/v1/XmlPullParserException;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method
