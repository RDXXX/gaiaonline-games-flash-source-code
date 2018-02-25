.class public Lorg/codehaus/jackson/JsonParseException;
.super Lorg/codehaus/jackson/JsonProcessingException;
.source "JsonParseException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lorg/codehaus/jackson/JsonLocation;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lorg/codehaus/jackson/JsonLocation;
    .param p3, "root"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
