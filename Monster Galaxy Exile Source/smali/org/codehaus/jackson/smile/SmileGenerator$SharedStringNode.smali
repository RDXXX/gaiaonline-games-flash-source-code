.class public final Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
.super Ljava/lang/Object;
.source "SmileGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/smile/SmileGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SharedStringNode"
.end annotation


# instance fields
.field public final index:I

.field public next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "next"    # Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 127
    iput p2, p0, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    .line 128
    iput-object p3, p0, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 129
    return-void
.end method
