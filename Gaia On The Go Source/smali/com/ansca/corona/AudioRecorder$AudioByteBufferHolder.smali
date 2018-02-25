.class public Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioByteBufferHolder"
.end annotation


# instance fields
.field myBuffer:Ljava/nio/ByteBuffer;

.field myValidBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myValidBytes:I

    .line 142
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myBuffer:Ljava/nio/ByteBuffer;

    .line 143
    return-void
.end method
