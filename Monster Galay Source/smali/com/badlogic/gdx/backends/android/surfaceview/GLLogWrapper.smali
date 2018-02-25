.class Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLWrapperBase;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;
    }
.end annotation


# static fields
.field private static final FORMAT_FIXED:I = 0x2

.field private static final FORMAT_FLOAT:I = 0x1

.field private static final FORMAT_INT:I


# instance fields
.field private mArgCount:I

.field mColorArrayEnabled:Z

.field private mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

.field private mLog:Ljava/io/Writer;

.field private mLogArgumentNames:Z

.field mNormalArrayEnabled:Z

.field private mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field private mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

.field mTextureCoordArrayEnabled:Z

.field mVertexArrayEnabled:Z

.field private mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p2, "log"    # Ljava/io/Writer;
    .param p3, "logArgumentNames"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    .line 39
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLog:Ljava/io/Writer;

    .line 40
    iput-boolean p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLogArgumentNames:Z

    .line 41
    return-void
.end method

.method private arg(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 100
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "buf"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 225
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "buf"    # Ljava/nio/IntBuffer;

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "buf"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 233
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private arg(Ljava/lang/String;I[FI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "arr"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 121
    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(I[FI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private arg(Ljava/lang/String;I[II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "arr"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private arg(Ljava/lang/String;I[SI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "arr"    # [S
    .param p4, "offset"    # I

    .prologue
    .line 117
    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(I[SI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    .line 70
    const-string v0, ", "

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private arg(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 92
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private argPointer(IIILjava/nio/Buffer;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 237
    const-string v0, "size"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 238
    const-string v0, "type"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getPointerTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "stride"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 240
    const-string v0, "pointer"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mArgCount:I

    .line 66
    return-void
.end method

.method private bindArrays()V
    .locals 1

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1132
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1133
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1134
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1135
    :cond_3
    return-void
.end method

.method private checkError()V
    .locals 4

    .prologue
    .line 45
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v1

    .local v1, "glError":I
    if-eqz v1, :cond_0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 49
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V
    .locals 13
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "enabled"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "pointer"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;
    .param p5, "index"    # I

    .prologue
    .line 1055
    if-nez p2, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1058
    :cond_0
    const-string v11, " "

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":{"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    if-nez p4, :cond_1

    .line 1061
    const-string v11, "undefined"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1064
    :cond_1
    move-object/from16 v0, p4

    iget v11, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->mStride:I

    if-gez v11, :cond_2

    .line 1065
    const-string v11, "invalid stride"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1069
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->getStride()I

    move-result v9

    .line 1070
    .local v9, "stride":I
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 1071
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p4

    iget v7, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->mSize:I

    .line 1072
    .local v7, "size":I
    move-object/from16 v0, p4

    iget v10, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->mType:I

    .line 1073
    .local v10, "type":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v8

    .line 1074
    .local v8, "sizeofType":I
    mul-int v2, v9, p5

    .line 1075
    .local v2, "byteOffset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 1076
    if-lez v4, :cond_3

    .line 1077
    const-string v11, ", "

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    :cond_3
    sparse-switch v10, :sswitch_data_0

    .line 1109
    const-string v11, "?"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :goto_2
    add-int/2addr v2, v8

    .line 1075
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1081
    :sswitch_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 1082
    .local v3, "d":B
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1086
    .end local v3    # "d":B
    :sswitch_1
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 1087
    .restart local v3    # "d":B
    and-int/lit16 v11, v3, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1091
    .end local v3    # "d":B
    :sswitch_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    .line 1092
    .local v6, "shortBuffer":Ljava/nio/ShortBuffer;
    div-int/lit8 v11, v2, 0x2

    invoke-virtual {v6, v11}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    .line 1093
    .local v3, "d":S
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1097
    .end local v3    # "d":S
    .end local v6    # "shortBuffer":Ljava/nio/ShortBuffer;
    :sswitch_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    .line 1098
    .local v5, "intBuffer":Ljava/nio/IntBuffer;
    div-int/lit8 v11, v2, 0x4

    invoke-virtual {v5, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    .line 1099
    .local v3, "d":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1103
    .end local v3    # "d":I
    .end local v5    # "intBuffer":Ljava/nio/IntBuffer;
    :sswitch_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 1104
    .local v5, "intBuffer":Ljava/nio/FloatBuffer;
    div-int/lit8 v11, v2, 0x4

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    .line 1105
    .local v3, "d":F
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1114
    .end local v3    # "d":F
    .end local v5    # "intBuffer":Ljava/nio/FloatBuffer;
    :cond_4
    const-string v11, "}"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1079
    nop

    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x140c -> :sswitch_3
    .end sparse-switch
.end method

.method private doElement(Ljava/lang/StringBuilder;II)V
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "ordinal"    # I
    .param p3, "vertexIndex"    # I

    .prologue
    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    const-string v3, "v"

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V

    .line 1120
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    const-string v3, "n"

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V

    .line 1121
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    const-string v3, "c"

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V

    .line 1122
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    const-string v3, "t"

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V

    .line 1123
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    return-void
.end method

.method private end()V
    .locals 1

    .prologue
    .line 79
    const-string v0, ");\n"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->flush()V

    .line 81
    return-void
.end method

.method private endLogIndices()V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 1152
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->unbindArrays()V

    .line 1153
    return-void
.end method

.method private flush()V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLog:Ljava/io/Writer;

    goto :goto_0
.end method

.method private formattedAppend(Ljava/lang/StringBuilder;II)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # I
    .param p3, "format"    # I

    .prologue
    .line 125
    packed-switch p3, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 127
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    :pswitch_2
    int-to-float v0, p2

    const/high16 v1, 0x47800000    # 65536.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getBeginMode(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 581
    packed-switch p1, :pswitch_data_0

    .line 597
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 583
    :pswitch_0
    const-string v0, "GL_POINTS"

    goto :goto_0

    .line 585
    :pswitch_1
    const-string v0, "GL_LINES"

    goto :goto_0

    .line 587
    :pswitch_2
    const-string v0, "GL_LINE_LOOP"

    goto :goto_0

    .line 589
    :pswitch_3
    const-string v0, "GL_LINE_STRIP"

    goto :goto_0

    .line 591
    :pswitch_4
    const-string v0, "GL_TRIANGLES"

    goto :goto_0

    .line 593
    :pswitch_5
    const-string v0, "GL_TRIANGLE_STRIP"

    goto :goto_0

    .line 595
    :pswitch_6
    const-string v0, "GL_TRIANGLE_FAN"

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCap(I)Ljava/lang/String;
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 430
    sparse-switch p1, :sswitch_data_0

    .line 496
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 432
    :sswitch_0
    const-string v0, "GL_FOG"

    goto :goto_0

    .line 434
    :sswitch_1
    const-string v0, "GL_LIGHTING"

    goto :goto_0

    .line 436
    :sswitch_2
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    .line 438
    :sswitch_3
    const-string v0, "GL_CULL_FACE"

    goto :goto_0

    .line 440
    :sswitch_4
    const-string v0, "GL_ALPHA_TEST"

    goto :goto_0

    .line 442
    :sswitch_5
    const-string v0, "GL_BLEND"

    goto :goto_0

    .line 444
    :sswitch_6
    const-string v0, "GL_COLOR_LOGIC_OP"

    goto :goto_0

    .line 446
    :sswitch_7
    const-string v0, "GL_DITHER"

    goto :goto_0

    .line 448
    :sswitch_8
    const-string v0, "GL_STENCIL_TEST"

    goto :goto_0

    .line 450
    :sswitch_9
    const-string v0, "GL_DEPTH_TEST"

    goto :goto_0

    .line 452
    :sswitch_a
    const-string v0, "GL_LIGHT0"

    goto :goto_0

    .line 454
    :sswitch_b
    const-string v0, "GL_LIGHT1"

    goto :goto_0

    .line 456
    :sswitch_c
    const-string v0, "GL_LIGHT2"

    goto :goto_0

    .line 458
    :sswitch_d
    const-string v0, "GL_LIGHT3"

    goto :goto_0

    .line 460
    :sswitch_e
    const-string v0, "GL_LIGHT4"

    goto :goto_0

    .line 462
    :sswitch_f
    const-string v0, "GL_LIGHT5"

    goto :goto_0

    .line 464
    :sswitch_10
    const-string v0, "GL_LIGHT6"

    goto :goto_0

    .line 466
    :sswitch_11
    const-string v0, "GL_LIGHT7"

    goto :goto_0

    .line 468
    :sswitch_12
    const-string v0, "GL_POINT_SMOOTH"

    goto :goto_0

    .line 470
    :sswitch_13
    const-string v0, "GL_LINE_SMOOTH"

    goto :goto_0

    .line 472
    :sswitch_14
    const-string v0, "GL_COLOR_MATERIAL"

    goto :goto_0

    .line 474
    :sswitch_15
    const-string v0, "GL_NORMALIZE"

    goto :goto_0

    .line 476
    :sswitch_16
    const-string v0, "GL_RESCALE_NORMAL"

    goto :goto_0

    .line 478
    :sswitch_17
    const-string v0, "GL_VERTEX_ARRAY"

    goto :goto_0

    .line 480
    :sswitch_18
    const-string v0, "GL_NORMAL_ARRAY"

    goto :goto_0

    .line 482
    :sswitch_19
    const-string v0, "GL_COLOR_ARRAY"

    goto :goto_0

    .line 484
    :sswitch_1a
    const-string v0, "GL_TEXTURE_COORD_ARRAY"

    goto :goto_0

    .line 486
    :sswitch_1b
    const-string v0, "GL_MULTISAMPLE"

    goto :goto_0

    .line 488
    :sswitch_1c
    const-string v0, "GL_SAMPLE_ALPHA_TO_COVERAGE"

    goto :goto_0

    .line 490
    :sswitch_1d
    const-string v0, "GL_SAMPLE_ALPHA_TO_ONE"

    goto :goto_0

    .line 492
    :sswitch_1e
    const-string v0, "GL_SAMPLE_COVERAGE"

    goto :goto_0

    .line 494
    :sswitch_1f
    const-string v0, "GL_SCISSOR_TEST"

    goto :goto_0

    .line 430
    :sswitch_data_0
    .sparse-switch
        0xb10 -> :sswitch_12
        0xb20 -> :sswitch_13
        0xb44 -> :sswitch_3
        0xb50 -> :sswitch_1
        0xb57 -> :sswitch_14
        0xb60 -> :sswitch_0
        0xb71 -> :sswitch_9
        0xb90 -> :sswitch_8
        0xba1 -> :sswitch_15
        0xbc0 -> :sswitch_4
        0xbd0 -> :sswitch_7
        0xbe2 -> :sswitch_5
        0xbf2 -> :sswitch_6
        0xc11 -> :sswitch_1f
        0xde1 -> :sswitch_2
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x4002 -> :sswitch_c
        0x4003 -> :sswitch_d
        0x4004 -> :sswitch_e
        0x4005 -> :sswitch_f
        0x4006 -> :sswitch_10
        0x4007 -> :sswitch_11
        0x803a -> :sswitch_16
        0x8074 -> :sswitch_17
        0x8075 -> :sswitch_18
        0x8076 -> :sswitch_19
        0x8078 -> :sswitch_1a
        0x809d -> :sswitch_1b
        0x809e -> :sswitch_1c
        0x809f -> :sswitch_1d
        0x80a0 -> :sswitch_1e
    .end sparse-switch
.end method

.method private getClearBufferMask(I)Ljava/lang/String;
    .locals 2
    .param p1, "mask"    # I

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "b":Ljava/lang/StringBuilder;
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_0

    .line 271
    const-string v1, "GL_DEPTH_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    and-int/lit16 p1, p1, -0x101

    .line 274
    :cond_0
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_2

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 276
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    const-string v1, "GL_STENCIL_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    and-int/lit16 p1, p1, -0x401

    .line 281
    :cond_2
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 283
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_3
    const-string v1, "GL_COLOR_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    and-int/lit16 p1, p1, -0x4001

    .line 288
    :cond_4
    if-eqz p1, :cond_6

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 290
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_5
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getClientState(I)Ljava/lang/String;
    .locals 1
    .param p1, "clientState"    # I

    .prologue
    .line 415
    packed-switch p1, :pswitch_data_0

    .line 425
    :pswitch_0
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 417
    :pswitch_1
    const-string v0, "GL_COLOR_ARRAY"

    goto :goto_0

    .line 419
    :pswitch_2
    const-string v0, "GL_VERTEX_ARRAY"

    goto :goto_0

    .line 421
    :pswitch_3
    const-string v0, "GL_NORMAL_ARRAY"

    goto :goto_0

    .line 423
    :pswitch_4
    const-string v0, "GL_TEXTURE_COORD_ARRAY"

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 248
    sparse-switch p0, :sswitch_data_0

    .line 264
    invoke-static {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 250
    :sswitch_0
    const-string v0, "GL_NO_ERROR"

    goto :goto_0

    .line 252
    :sswitch_1
    const-string v0, "GL_INVALID_ENUM"

    goto :goto_0

    .line 254
    :sswitch_2
    const-string v0, "GL_INVALID_VALUE"

    goto :goto_0

    .line 256
    :sswitch_3
    const-string v0, "GL_INVALID_OPERATION"

    goto :goto_0

    .line 258
    :sswitch_4
    const-string v0, "GL_STACK_OVERFLOW"

    goto :goto_0

    .line 260
    :sswitch_5
    const-string v0, "GL_STACK_UNDERFLOW"

    goto :goto_0

    .line 262
    :sswitch_6
    const-string v0, "GL_OUT_OF_MEMORY"

    goto :goto_0

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x500 -> :sswitch_1
        0x501 -> :sswitch_2
        0x502 -> :sswitch_3
        0x503 -> :sswitch_4
        0x504 -> :sswitch_5
        0x505 -> :sswitch_6
    .end sparse-switch
.end method

.method private getFaceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "face"    # I

    .prologue
    .line 778
    packed-switch p1, :pswitch_data_0

    .line 782
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 780
    :pswitch_0
    const-string v0, "GL_FRONT_AND_BACK"

    goto :goto_0

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x408
        :pswitch_0
    .end packed-switch
.end method

.method private getFactor(I)Ljava/lang/String;
    .locals 1
    .param p1, "factor"    # I

    .prologue
    .line 298
    sparse-switch p1, :sswitch_data_0

    .line 323
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 300
    :sswitch_0
    const-string v0, "GL_ZERO"

    goto :goto_0

    .line 302
    :sswitch_1
    const-string v0, "GL_ONE"

    goto :goto_0

    .line 304
    :sswitch_2
    const-string v0, "GL_SRC_COLOR"

    goto :goto_0

    .line 306
    :sswitch_3
    const-string v0, "GL_ONE_MINUS_SRC_COLOR"

    goto :goto_0

    .line 308
    :sswitch_4
    const-string v0, "GL_DST_COLOR"

    goto :goto_0

    .line 310
    :sswitch_5
    const-string v0, "GL_ONE_MINUS_DST_COLOR"

    goto :goto_0

    .line 312
    :sswitch_6
    const-string v0, "GL_SRC_ALPHA"

    goto :goto_0

    .line 314
    :sswitch_7
    const-string v0, "GL_ONE_MINUS_SRC_ALPHA"

    goto :goto_0

    .line 316
    :sswitch_8
    const-string v0, "GL_DST_ALPHA"

    goto :goto_0

    .line 318
    :sswitch_9
    const-string v0, "GL_ONE_MINUS_DST_ALPHA"

    goto :goto_0

    .line 320
    :sswitch_a
    const-string v0, "GL_SRC_ALPHA_SATURATE"

    goto :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x300 -> :sswitch_2
        0x301 -> :sswitch_3
        0x302 -> :sswitch_6
        0x303 -> :sswitch_7
        0x304 -> :sswitch_8
        0x305 -> :sswitch_9
        0x306 -> :sswitch_4
        0x307 -> :sswitch_5
        0x308 -> :sswitch_a
    .end sparse-switch
.end method

.method private getFogPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 547
    packed-switch p1, :pswitch_data_0

    .line 559
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 549
    :pswitch_0
    const-string v0, "GL_FOG_DENSITY"

    goto :goto_0

    .line 551
    :pswitch_1
    const-string v0, "GL_FOG_START"

    goto :goto_0

    .line 553
    :pswitch_2
    const-string v0, "GL_FOG_END"

    goto :goto_0

    .line 555
    :pswitch_3
    const-string v0, "GL_FOG_MODE"

    goto :goto_0

    .line 557
    :pswitch_4
    const-string v0, "GL_FOG_COLOR"

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getFogParamCount(I)I
    .locals 1
    .param p1, "pname"    # I

    .prologue
    const/4 v0, 0x1

    .line 564
    packed-switch p1, :pswitch_data_0

    .line 576
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 574
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHintMode(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 765
    packed-switch p1, :pswitch_data_0

    .line 773
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 767
    :pswitch_0
    const-string v0, "GL_FASTEST"

    goto :goto_0

    .line 769
    :pswitch_1
    const-string v0, "GL_NICEST"

    goto :goto_0

    .line 771
    :pswitch_2
    const-string v0, "GL_DONT_CARE"

    goto :goto_0

    .line 765
    nop

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHintTarget(I)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 746
    sparse-switch p1, :sswitch_data_0

    .line 760
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 748
    :sswitch_0
    const-string v0, "GL_FOG_HINT"

    goto :goto_0

    .line 750
    :sswitch_1
    const-string v0, "GL_LINE_SMOOTH_HINT"

    goto :goto_0

    .line 752
    :sswitch_2
    const-string v0, "GL_PERSPECTIVE_CORRECTION_HINT"

    goto :goto_0

    .line 754
    :sswitch_3
    const-string v0, "GL_POINT_SMOOTH_HINT"

    goto :goto_0

    .line 756
    :sswitch_4
    const-string v0, "GL_POLYGON_SMOOTH_HINT"

    goto :goto_0

    .line 758
    :sswitch_5
    const-string v0, "GL_GENERATE_MIPMAP_HINT"

    goto :goto_0

    .line 746
    :sswitch_data_0
    .sparse-switch
        0xc50 -> :sswitch_2
        0xc51 -> :sswitch_3
        0xc52 -> :sswitch_1
        0xc53 -> :sswitch_4
        0xc54 -> :sswitch_0
        0x8192 -> :sswitch_5
    .end sparse-switch
.end method

.method private getIndexType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 602
    packed-switch p1, :pswitch_data_0

    .line 608
    :pswitch_0
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 604
    :pswitch_1
    const-string v0, "GL_UNSIGNED_SHORT"

    goto :goto_0

    .line 606
    :pswitch_2
    const-string v0, "GL_UNSIGNED_BYTE"

    goto :goto_0

    .line 602
    :pswitch_data_0
    .packed-switch 0x1401
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIntegerStateFormat(I)I
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 734
    packed-switch p1, :pswitch_data_0

    .line 741
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 738
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x898d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getIntegerStateName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 613
    sparse-switch p1, :sswitch_data_0

    .line 667
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 615
    :sswitch_0
    const-string v0, "GL_ALPHA_BITS"

    goto :goto_0

    .line 617
    :sswitch_1
    const-string v0, "GL_ALIASED_LINE_WIDTH_RANGE"

    goto :goto_0

    .line 619
    :sswitch_2
    const-string v0, "GL_ALIASED_POINT_SIZE_RANGE"

    goto :goto_0

    .line 621
    :sswitch_3
    const-string v0, "GL_BLUE_BITS"

    goto :goto_0

    .line 623
    :sswitch_4
    const-string v0, "GL_COMPRESSED_TEXTURE_FORMATS"

    goto :goto_0

    .line 625
    :sswitch_5
    const-string v0, "GL_DEPTH_BITS"

    goto :goto_0

    .line 627
    :sswitch_6
    const-string v0, "GL_GREEN_BITS"

    goto :goto_0

    .line 629
    :sswitch_7
    const-string v0, "GL_MAX_ELEMENTS_INDICES"

    goto :goto_0

    .line 631
    :sswitch_8
    const-string v0, "GL_MAX_ELEMENTS_VERTICES"

    goto :goto_0

    .line 633
    :sswitch_9
    const-string v0, "GL_MAX_LIGHTS"

    goto :goto_0

    .line 635
    :sswitch_a
    const-string v0, "GL_MAX_TEXTURE_SIZE"

    goto :goto_0

    .line 637
    :sswitch_b
    const-string v0, "GL_MAX_VIEWPORT_DIMS"

    goto :goto_0

    .line 639
    :sswitch_c
    const-string v0, "GL_MAX_MODELVIEW_STACK_DEPTH"

    goto :goto_0

    .line 641
    :sswitch_d
    const-string v0, "GL_MAX_PROJECTION_STACK_DEPTH"

    goto :goto_0

    .line 643
    :sswitch_e
    const-string v0, "GL_MAX_TEXTURE_STACK_DEPTH"

    goto :goto_0

    .line 645
    :sswitch_f
    const-string v0, "GL_MAX_TEXTURE_UNITS"

    goto :goto_0

    .line 647
    :sswitch_10
    const-string v0, "GL_NUM_COMPRESSED_TEXTURE_FORMATS"

    goto :goto_0

    .line 649
    :sswitch_11
    const-string v0, "GL_RED_BITS"

    goto :goto_0

    .line 651
    :sswitch_12
    const-string v0, "GL_SMOOTH_LINE_WIDTH_RANGE"

    goto :goto_0

    .line 653
    :sswitch_13
    const-string v0, "GL_SMOOTH_POINT_SIZE_RANGE"

    goto :goto_0

    .line 655
    :sswitch_14
    const-string v0, "GL_STENCIL_BITS"

    goto :goto_0

    .line 657
    :sswitch_15
    const-string v0, "GL_SUBPIXEL_BITS"

    goto :goto_0

    .line 660
    :sswitch_16
    const-string v0, "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES"

    goto :goto_0

    .line 662
    :sswitch_17
    const-string v0, "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES"

    goto :goto_0

    .line 664
    :sswitch_18
    const-string v0, "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES"

    goto :goto_0

    .line 613
    nop

    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_13
        0xb22 -> :sswitch_12
        0xd31 -> :sswitch_9
        0xd33 -> :sswitch_a
        0xd36 -> :sswitch_c
        0xd38 -> :sswitch_d
        0xd39 -> :sswitch_e
        0xd3a -> :sswitch_b
        0xd50 -> :sswitch_15
        0xd52 -> :sswitch_11
        0xd53 -> :sswitch_6
        0xd54 -> :sswitch_3
        0xd55 -> :sswitch_0
        0xd56 -> :sswitch_5
        0xd57 -> :sswitch_14
        0x80e8 -> :sswitch_8
        0x80e9 -> :sswitch_7
        0x846d -> :sswitch_2
        0x846e -> :sswitch_1
        0x84e2 -> :sswitch_f
        0x86a2 -> :sswitch_10
        0x86a3 -> :sswitch_4
        0x898d -> :sswitch_16
        0x898e -> :sswitch_17
        0x898f -> :sswitch_18
    .end sparse-switch
.end method

.method private getIntegerStateSize(I)I
    .locals 4
    .param p1, "pname"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 672
    sparse-switch p1, :sswitch_data_0

    move v1, v3

    .line 729
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    move v1, v2

    .line 676
    goto :goto_0

    :sswitch_2
    move v1, v2

    .line 678
    goto :goto_0

    .line 684
    :sswitch_3
    new-array v0, v1, [I

    .line 685
    .local v0, "buffer":[I
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x86a2

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 686
    aget v1, v0, v3

    goto :goto_0

    .end local v0    # "buffer":[I
    :sswitch_4
    move v1, v2

    .line 701
    goto :goto_0

    :sswitch_5
    move v1, v2

    .line 715
    goto :goto_0

    :sswitch_6
    move v1, v2

    .line 717
    goto :goto_0

    .line 726
    :sswitch_7
    const/16 v1, 0x10

    goto :goto_0

    .line 672
    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_6
        0xb22 -> :sswitch_5
        0xd31 -> :sswitch_0
        0xd33 -> :sswitch_0
        0xd36 -> :sswitch_0
        0xd38 -> :sswitch_0
        0xd39 -> :sswitch_0
        0xd3a -> :sswitch_4
        0xd50 -> :sswitch_0
        0xd52 -> :sswitch_0
        0xd53 -> :sswitch_0
        0xd54 -> :sswitch_0
        0xd55 -> :sswitch_0
        0xd56 -> :sswitch_0
        0xd57 -> :sswitch_0
        0x80e8 -> :sswitch_0
        0x80e9 -> :sswitch_0
        0x846d -> :sswitch_2
        0x846e -> :sswitch_1
        0x84e2 -> :sswitch_0
        0x86a2 -> :sswitch_0
        0x86a3 -> :sswitch_3
        0x898d -> :sswitch_7
        0x898e -> :sswitch_7
        0x898f -> :sswitch_7
    .end sparse-switch
.end method

.method private getLightModelPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 886
    packed-switch p1, :pswitch_data_0

    .line 892
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 888
    :pswitch_0
    const-string v0, "GL_LIGHT_MODEL_AMBIENT"

    goto :goto_0

    .line 890
    :pswitch_1
    const-string v0, "GL_LIGHT_MODEL_TWO_SIDE"

    goto :goto_0

    .line 886
    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightModelParamCount(I)I
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 897
    packed-switch p1, :pswitch_data_0

    .line 903
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 899
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 901
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightName(I)Ljava/lang/String;
    .locals 2
    .param p1, "light"    # I

    .prologue
    .line 825
    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GL_LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 828
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLightPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 832
    packed-switch p1, :pswitch_data_0

    .line 854
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 834
    :pswitch_0
    const-string v0, "GL_AMBIENT"

    goto :goto_0

    .line 836
    :pswitch_1
    const-string v0, "GL_DIFFUSE"

    goto :goto_0

    .line 838
    :pswitch_2
    const-string v0, "GL_SPECULAR"

    goto :goto_0

    .line 840
    :pswitch_3
    const-string v0, "GL_POSITION"

    goto :goto_0

    .line 842
    :pswitch_4
    const-string v0, "GL_SPOT_DIRECTION"

    goto :goto_0

    .line 844
    :pswitch_5
    const-string v0, "GL_SPOT_EXPONENT"

    goto :goto_0

    .line 846
    :pswitch_6
    const-string v0, "GL_SPOT_CUTOFF"

    goto :goto_0

    .line 848
    :pswitch_7
    const-string v0, "GL_CONSTANT_ATTENUATION"

    goto :goto_0

    .line 850
    :pswitch_8
    const-string v0, "GL_LINEAR_ATTENUATION"

    goto :goto_0

    .line 852
    :pswitch_9
    const-string v0, "GL_QUADRATIC_ATTENUATION"

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getLightParamCount(I)I
    .locals 2
    .param p1, "pname"    # I

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 859
    packed-switch p1, :pswitch_data_0

    .line 881
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 869
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 871
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 873
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 875
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 877
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 879
    goto :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getMaterialPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 787
    sparse-switch p1, :sswitch_data_0

    .line 801
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 789
    :sswitch_0
    const-string v0, "GL_AMBIENT"

    goto :goto_0

    .line 791
    :sswitch_1
    const-string v0, "GL_DIFFUSE"

    goto :goto_0

    .line 793
    :sswitch_2
    const-string v0, "GL_SPECULAR"

    goto :goto_0

    .line 795
    :sswitch_3
    const-string v0, "GL_EMISSION"

    goto :goto_0

    .line 797
    :sswitch_4
    const-string v0, "GL_SHININESS"

    goto :goto_0

    .line 799
    :sswitch_5
    const-string v0, "GL_AMBIENT_AND_DIFFUSE"

    goto :goto_0

    .line 787
    :sswitch_data_0
    .sparse-switch
        0x1200 -> :sswitch_0
        0x1201 -> :sswitch_1
        0x1202 -> :sswitch_2
        0x1600 -> :sswitch_3
        0x1601 -> :sswitch_4
        0x1602 -> :sswitch_5
    .end sparse-switch
.end method

.method private getMaterialParamCount(I)I
    .locals 1
    .param p1, "pname"    # I

    .prologue
    const/4 v0, 0x4

    .line 806
    sparse-switch p1, :sswitch_data_0

    .line 820
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 816
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 806
    :sswitch_data_0
    .sparse-switch
        0x1200 -> :sswitch_0
        0x1201 -> :sswitch_0
        0x1202 -> :sswitch_0
        0x1600 -> :sswitch_0
        0x1601 -> :sswitch_1
        0x1602 -> :sswitch_0
    .end sparse-switch
.end method

.method private getMatrixMode(I)Ljava/lang/String;
    .locals 1
    .param p1, "matrixMode"    # I

    .prologue
    .line 402
    packed-switch p1, :pswitch_data_0

    .line 410
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 404
    :pswitch_0
    const-string v0, "GL_MODELVIEW"

    goto :goto_0

    .line 406
    :pswitch_1
    const-string v0, "GL_PROJECTION"

    goto :goto_0

    .line 408
    :pswitch_2
    const-string v0, "GL_TEXTURE"

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPointerTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 908
    sparse-switch p1, :sswitch_data_0

    .line 920
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 910
    :sswitch_0
    const-string v0, "GL_BYTE"

    goto :goto_0

    .line 912
    :sswitch_1
    const-string v0, "GL_UNSIGNED_BYTE"

    goto :goto_0

    .line 914
    :sswitch_2
    const-string v0, "GL_SHORT"

    goto :goto_0

    .line 916
    :sswitch_3
    const-string v0, "GL_FIXED"

    goto :goto_0

    .line 918
    :sswitch_4
    const-string v0, "GL_FLOAT"

    goto :goto_0

    .line 908
    nop

    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x140c -> :sswitch_3
    .end sparse-switch
.end method

.method private getShadeModel(I)Ljava/lang/String;
    .locals 1
    .param p1, "model"    # I

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 334
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 330
    :pswitch_0
    const-string v0, "GL_FLAT"

    goto :goto_0

    .line 332
    :pswitch_1
    const-string v0, "GL_SMOOTH"

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1d00
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvPName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 357
    packed-switch p1, :pswitch_data_0

    .line 363
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 359
    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV_MODE"

    goto :goto_0

    .line 361
    :pswitch_1
    const-string v0, "GL_TEXTURE_ENV_COLOR"

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvParamCount(I)I
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 368
    packed-switch p1, :pswitch_data_0

    .line 374
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 370
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvParamName(F)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # F

    .prologue
    .line 379
    float-to-int v0, p1

    .line 380
    .local v0, "iparam":I
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 381
    sparse-switch v0, :sswitch_data_0

    .line 395
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    :goto_0
    return-object v1

    .line 383
    :sswitch_0
    const-string v1, "GL_REPLACE"

    goto :goto_0

    .line 385
    :sswitch_1
    const-string v1, "GL_MODULATE"

    goto :goto_0

    .line 387
    :sswitch_2
    const-string v1, "GL_DECAL"

    goto :goto_0

    .line 389
    :sswitch_3
    const-string v1, "GL_BLEND"

    goto :goto_0

    .line 391
    :sswitch_4
    const-string v1, "GL_ADD"

    goto :goto_0

    .line 393
    :sswitch_5
    const-string v1, "GL_COMBINE"

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_4
        0xbe2 -> :sswitch_3
        0x1e01 -> :sswitch_0
        0x2100 -> :sswitch_1
        0x2101 -> :sswitch_2
        0x8570 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTextureEnvTarget(I)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 352
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 350
    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV"

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x2300
        :pswitch_0
    .end packed-switch
.end method

.method private getTexturePName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pname"    # I

    .prologue
    .line 501
    sparse-switch p1, :sswitch_data_0

    .line 515
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 503
    :sswitch_0
    const-string v0, "GL_TEXTURE_MAG_FILTER"

    goto :goto_0

    .line 505
    :sswitch_1
    const-string v0, "GL_TEXTURE_MIN_FILTER"

    goto :goto_0

    .line 507
    :sswitch_2
    const-string v0, "GL_TEXTURE_WRAP_S"

    goto :goto_0

    .line 509
    :sswitch_3
    const-string v0, "GL_TEXTURE_WRAP_T"

    goto :goto_0

    .line 511
    :sswitch_4
    const-string v0, "GL_GENERATE_MIPMAP"

    goto :goto_0

    .line 513
    :sswitch_5
    const-string v0, "GL_TEXTURE_CROP_RECT_OES"

    goto :goto_0

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x2800 -> :sswitch_0
        0x2801 -> :sswitch_1
        0x2802 -> :sswitch_2
        0x2803 -> :sswitch_3
        0x8191 -> :sswitch_4
        0x8b9d -> :sswitch_5
    .end sparse-switch
.end method

.method private getTextureParamName(F)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # F

    .prologue
    .line 520
    float-to-int v0, p1

    .line 521
    .local v0, "iparam":I
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 522
    sparse-switch v0, :sswitch_data_0

    .line 540
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    :goto_0
    return-object v1

    .line 524
    :sswitch_0
    const-string v1, "GL_CLAMP_TO_EDGE"

    goto :goto_0

    .line 526
    :sswitch_1
    const-string v1, "GL_REPEAT"

    goto :goto_0

    .line 528
    :sswitch_2
    const-string v1, "GL_NEAREST"

    goto :goto_0

    .line 530
    :sswitch_3
    const-string v1, "GL_LINEAR"

    goto :goto_0

    .line 532
    :sswitch_4
    const-string v1, "GL_NEAREST_MIPMAP_NEAREST"

    goto :goto_0

    .line 534
    :sswitch_5
    const-string v1, "GL_LINEAR_MIPMAP_NEAREST"

    goto :goto_0

    .line 536
    :sswitch_6
    const-string v1, "GL_NEAREST_MIPMAP_LINEAR"

    goto :goto_0

    .line 538
    :sswitch_7
    const-string v1, "GL_LINEAR_MIPMAP_LINEAR"

    goto :goto_0

    .line 543
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x2600 -> :sswitch_2
        0x2601 -> :sswitch_3
        0x2700 -> :sswitch_4
        0x2701 -> :sswitch_5
        0x2702 -> :sswitch_6
        0x2703 -> :sswitch_7
        0x2901 -> :sswitch_1
        0x812f -> :sswitch_0
    .end sparse-switch
.end method

.method private getTextureTarget(I)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 339
    packed-switch p1, :pswitch_data_0

    .line 343
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 341
    :pswitch_0
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0xde1
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private returns(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ") returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->flush()V

    .line 106
    return-void
.end method

.method private startLogIndices()V
    .locals 2

    .prologue
    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1146
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->bindArrays()V

    .line 1148
    return-void
.end method

.method private toCharIndices(IILjava/nio/Buffer;)[C
    .locals 8
    .param p1, "count"    # I
    .param p2, "type"    # I
    .param p3, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 1021
    new-array v6, p1, [C

    .line 1022
    .local v6, "result":[C
    packed-switch p2, :pswitch_data_0

    .line 1051
    :cond_0
    :goto_0
    :pswitch_0
    return-object v6

    .line 1024
    :pswitch_1
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1025
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1026
    .local v0, "array":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 1027
    .local v4, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_0

    .line 1028
    add-int v7, v4, v3

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    aput-char v7, v6, v3

    .line 1027
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1034
    .end local v0    # "array":[B
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "i":I
    .end local v4    # "offset":I
    :pswitch_2
    instance-of v7, p3, Ljava/nio/CharBuffer;

    if-eqz v7, :cond_1

    move-object v2, p3

    .line 1035
    check-cast v2, Ljava/nio/CharBuffer;

    .line 1040
    .local v2, "charBuffer":Ljava/nio/CharBuffer;
    :goto_2
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    .line 1041
    .local v5, "oldPosition":I
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1042
    invoke-virtual {v2, v6}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 1043
    invoke-virtual {v2, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 1037
    .end local v2    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v5    # "oldPosition":I
    :cond_1
    mul-int/lit8 v7, p1, 0x2

    invoke-virtual {p0, v7, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1038
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    .restart local v2    # "charBuffer":Ljava/nio/CharBuffer;
    goto :goto_2

    .line 1022
    :pswitch_data_0
    .packed-switch 0x1401
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private toString(IILjava/nio/IntBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I
    .param p2, "format"    # I
    .param p3, "buf"    # Ljava/nio/IntBuffer;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    .line 208
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(II[II)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "format"    # I
    .param p3, "arr"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    array-length v0, p3

    .line 142
    .local v0, "arrLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 143
    add-int v3, p4, v2

    .line 144
    .local v3, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 146
    :cond_0
    const-string v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_1
    aget v4, p3, v3

    invoke-direct {p0, v1, v4, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    goto :goto_1

    .line 152
    .end local v3    # "index":I
    :cond_2
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I
    .param p2, "buf"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I
    .param p2, "buf"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(I[FI)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "arr"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    array-length v0, p2

    .line 178
    .local v0, "arrLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 179
    add-int v3, p3, v2

    .line 180
    .local v3, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 182
    :cond_0
    const-string v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 188
    .end local v3    # "index":I
    :cond_2
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(I[SI)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "arr"    # [S
    .param p3, "offset"    # I

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    array-length v0, p2

    .line 160
    .local v0, "arrLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 161
    add-int v3, p3, v2

    .line 162
    .local v3, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 164
    :cond_0
    const-string v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    aget-short v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 170
    .end local v3    # "index":I
    :cond_2
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private unbindArrays()V
    .locals 1

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1139
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1140
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1141
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1142
    :cond_3
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 1159
    const-string v0, "glActiveTexture"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1160
    const-string v0, "texture"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1161
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 1163
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1164
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # F

    .prologue
    .line 1167
    const-string v0, "glAlphaFunc"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1168
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1169
    const-string v0, "ref"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1170
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1171
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 1172
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1173
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I

    .prologue
    .line 1176
    const-string v0, "glAlphaFuncx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1177
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1178
    const-string v0, "ref"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1179
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1180
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 1181
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1182
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    .prologue
    .line 2730
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glBindTexture(II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .prologue
    .line 1185
    const-string v0, "glBindTexture"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1186
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v0, "texture"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1188
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1189
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 1190
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1191
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 2
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .prologue
    .line 1194
    const-string v0, "glBlendFunc"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1195
    const-string v0, "sfactor"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v0, "dfactor"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1199
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 1200
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1201
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    .prologue
    .line 2734
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 2738
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glClear(I)V
    .locals 2
    .param p1, "mask"    # I

    .prologue
    .line 1204
    const-string v0, "glClear"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1205
    const-string v0, "mask"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getClearBufferMask(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1208
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1209
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1210
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 1213
    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1214
    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1215
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1216
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1217
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1218
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1220
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 1221
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1222
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 1225
    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1226
    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1227
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1228
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1229
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1230
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1232
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 1233
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1234
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .param p1, "depth"    # F

    .prologue
    .line 1237
    const-string v0, "glClearDepthf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1238
    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1239
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1241
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 1242
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1243
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 1246
    const-string v0, "glClearDepthx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1247
    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1248
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1250
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 1251
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1252
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 1255
    const-string v0, "glClearStencil"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1256
    const-string v0, "s"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1257
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1259
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 1260
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1261
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 1264
    const-string v0, "glClientActiveTexture"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1265
    const-string v0, "texture"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1266
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1268
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 1269
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1270
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2558
    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2559
    const-string v0, "plane"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2560
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2561
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2562
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 2563
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2564
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 2548
    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2549
    const-string v0, "plane"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2550
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2551
    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2552
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2553
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 2554
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2555
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2577
    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2578
    const-string v0, "plane"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2579
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2580
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2581
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 2582
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2583
    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 2
    .param p1, "plane"    # I
    .param p2, "equation"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 2567
    const-string v0, "glClipPlanex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2568
    const-string v0, "plane"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2569
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2570
    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2571
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2572
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    .line 2573
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2574
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 1273
    const-string v0, "glColor4f"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1274
    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1275
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1276
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1277
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1278
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1280
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 1281
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1282
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1
    .param p1, "red"    # B
    .param p2, "green"    # B
    .param p3, "blue"    # B
    .param p4, "alpha"    # B

    .prologue
    .line 2742
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glColor4x(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 1285
    const-string v0, "glColor4x"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1286
    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1287
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1288
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1289
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1290
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1292
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1293
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1294
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .prologue
    .line 1297
    const-string v0, "glColorMask"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1298
    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1299
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1300
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1301
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1302
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1304
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 1305
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1306
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1309
    const-string v0, "glColorPointer"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1310
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 1311
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1312
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    .line 1314
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 1315
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1316
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 1320
    const-string v1, "glCompressedTexImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1321
    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1323
    const-string v1, "internalformat"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1324
    const-string v1, "width"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1325
    const-string v1, "height"

    invoke-direct {p0, v1, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1326
    const-string v1, "border"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1327
    const-string v1, "imageSize"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1328
    const-string v1, "data"

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1331
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 1332
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1333
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 1337
    const-string v1, "glCompressedTexSubImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1338
    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1340
    const-string v1, "xoffset"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1341
    const-string v1, "yoffset"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1342
    const-string v1, "width"

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1343
    const-string v1, "height"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1344
    const-string v1, "format"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1345
    const-string v1, "imageSize"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1346
    const-string v1, "data"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1349
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1350
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1351
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    .prologue
    .line 1354
    const-string v1, "glCopyTexImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1355
    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1357
    const-string v1, "internalformat"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1358
    const-string v1, "x"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1359
    const-string v1, "y"

    invoke-direct {p0, v1, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1360
    const-string v1, "width"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1361
    const-string v1, "height"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1362
    const-string v1, "border"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1363
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1365
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 1366
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1367
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 1370
    const-string v1, "glCopyTexSubImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1371
    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1373
    const-string v1, "xoffset"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1374
    const-string v1, "yoffset"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1375
    const-string v1, "x"

    invoke-direct {p0, v1, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1376
    const-string v1, "y"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1377
    const-string v1, "width"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1378
    const-string v1, "height"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1379
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1381
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 1382
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1383
    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1386
    const-string v0, "glCullFace"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1387
    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1388
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1390
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 1391
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1392
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2750
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteBuffers(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 2746
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1406
    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1407
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1408
    const-string v0, "textures"

    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1409
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1411
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 1412
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1413
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1395
    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1396
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1397
    const-string v0, "textures"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1398
    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1399
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1401
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 1402
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1403
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .param p1, "func"    # I

    .prologue
    .line 1416
    const-string v0, "glDepthFunc"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1417
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1418
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1420
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 1421
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1422
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1425
    const-string v0, "glDepthMask"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1426
    const-string v0, "flag"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1427
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1429
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 1430
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1431
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .param p1, "near"    # F
    .param p2, "far"    # F

    .prologue
    .line 1434
    const-string v0, "glDepthRangef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1435
    const-string v0, "near"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1436
    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1437
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1439
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 1440
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1441
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .param p1, "near"    # I
    .param p2, "far"    # I

    .prologue
    .line 1444
    const-string v0, "glDepthRangex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1445
    const-string v0, "near"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1446
    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1447
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1449
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 1450
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1451
    return-void
.end method

.method public glDisable(I)V
    .locals 2
    .param p1, "cap"    # I

    .prologue
    .line 1454
    const-string v0, "glDisable"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1455
    const-string v0, "cap"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1458
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1459
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1460
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 3
    .param p1, "array"    # I

    .prologue
    const/4 v2, 0x0

    .line 1463
    const-string v0, "glDisableClientState"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1464
    const-string v0, "array"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1467
    packed-switch p1, :pswitch_data_0

    .line 1481
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 1482
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1483
    return-void

    .line 1469
    :pswitch_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    .line 1472
    :pswitch_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    .line 1475
    :pswitch_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    .line 1478
    :pswitch_4
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    goto :goto_0

    .line 1467
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public glDrawArrays(III)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .prologue
    .line 1486
    const-string v1, "glDrawArrays"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1487
    const-string v1, "mode"

    invoke-direct {p0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1488
    const-string v1, "first"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1489
    const-string v1, "count"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1490
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->startLogIndices()V

    .line 1491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1492
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    .line 1491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1494
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->endLogIndices()V

    .line 1495
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1497
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 1498
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1499
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 1502
    const-string v3, "glDrawElements"

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1503
    const-string v3, "mode"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getBeginMode(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string v3, "count"

    invoke-direct {p0, v3, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1505
    const-string v3, "type"

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIndexType(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toCharIndices(IILjava/nio/Buffer;)[C

    move-result-object v1

    .line 1507
    .local v1, "indexArray":[C
    array-length v2, v1

    .line 1508
    .local v2, "indexArrayLength":I
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->startLogIndices()V

    .line 1509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1510
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    aget-char v4, v1, v0

    invoke-direct {p0, v3, v0, v4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1512
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->endLogIndices()V

    .line 1513
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1515
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v3, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1516
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1517
    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 2588
    const-string v0, "glDrawTexfOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2589
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2590
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2591
    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2592
    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2593
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2594
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2595
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 2596
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2597
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "coords"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2609
    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2610
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2611
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2612
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 2613
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2614
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 2
    .param p1, "coords"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 2600
    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2601
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2602
    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2603
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2604
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    .line 2605
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2606
    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 2617
    const-string v0, "glDrawTexiOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2618
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2619
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2620
    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2621
    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2622
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2623
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2624
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 2625
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2626
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2638
    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2639
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2640
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2641
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 2642
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2643
    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 2
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 2629
    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2630
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2631
    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2632
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2633
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    .line 2634
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2635
    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S
    .param p4, "width"    # S
    .param p5, "height"    # S

    .prologue
    .line 2646
    const-string v0, "glDrawTexsOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2647
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2648
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2649
    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2650
    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2651
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2652
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2653
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    .line 2654
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2655
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 2
    .param p1, "coords"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 2667
    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2668
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V

    .line 2669
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2670
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 2671
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2672
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 2
    .param p1, "coords"    # [S
    .param p2, "offset"    # I

    .prologue
    .line 2658
    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2659
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[SI)V

    .line 2660
    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2661
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2662
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    .line 2663
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2664
    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 2675
    const-string v0, "glDrawTexxOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2676
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2677
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2678
    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2679
    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2680
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2681
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2682
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    .line 2683
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2684
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2696
    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2697
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2698
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2699
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 2700
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2701
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 2
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 2687
    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2688
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2689
    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2690
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2691
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    .line 2692
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2693
    return-void
.end method

.method public glEnable(I)V
    .locals 2
    .param p1, "cap"    # I

    .prologue
    .line 1520
    const-string v0, "glEnable"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1521
    const-string v0, "cap"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1524
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1525
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1526
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 3
    .param p1, "array"    # I

    .prologue
    const/4 v2, 0x1

    .line 1529
    const-string v0, "glEnableClientState"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1530
    const-string v0, "array"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1533
    packed-switch p1, :pswitch_data_0

    .line 1547
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1548
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1549
    return-void

    .line 1535
    :pswitch_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    .line 1538
    :pswitch_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    .line 1541
    :pswitch_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    .line 1544
    :pswitch_4
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    goto :goto_0

    .line 1533
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 1552
    const-string v0, "glFinish"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1553
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1555
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 1556
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1557
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 1560
    const-string v0, "glFlush"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1561
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1563
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 1564
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1565
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 1568
    const-string v0, "glFogf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1569
    const-string v0, "pname"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1570
    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1571
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1573
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 1574
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1575
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1589
    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1590
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1592
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1594
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 1595
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1596
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 1578
    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1579
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1581
    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1582
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1584
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 1585
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1586
    return-void
.end method

.method public glFogx(II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 1599
    const-string v0, "glFogx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1600
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1602
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1604
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 1605
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1606
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1620
    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1621
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1623
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1625
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 1626
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1627
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1609
    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1610
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1612
    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1613
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1615
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 1616
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1617
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1630
    const-string v0, "glFrontFace"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1631
    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1632
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1634
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 1635
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1636
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 1639
    const-string v0, "glFrustumf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1640
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1641
    const-string v0, "right"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1642
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1643
    const-string v0, "top"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1644
    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1645
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1646
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1648
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 1649
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1650
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .prologue
    .line 1653
    const-string v0, "glFrustumx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1654
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1655
    const-string v0, "right"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1656
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1657
    const-string v0, "top"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1658
    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1659
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1660
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1662
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 1663
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1664
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2758
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGenBuffers(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 2754
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1680
    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1681
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1682
    const-string v0, "textures"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 1686
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1688
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1689
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1667
    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1668
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1669
    const-string v0, "textures"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1672
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 1674
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1676
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1677
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2766
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [Z
    .param p3, "offset"    # I

    .prologue
    .line 2762
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2774
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2770
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2782
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 2778
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2790
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanex(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 2786
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetError()I
    .locals 2

    .prologue
    .line 1692
    const-string v1, "glGetError"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1694
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 1696
    .local v0, "result":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(I)V

    .line 1698
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2798
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFixedv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 2794
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2806
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFloatv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 2802
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1715
    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1716
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 1721
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1723
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1724
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1702
    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1703
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1707
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 1709
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1711
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1712
    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2814
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightfv(II[FI)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 2810
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2822
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightxv(II[II)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2818
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2830
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 2826
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2838
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialxv(II[II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2834
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # I

    .prologue
    .line 1727
    const-string v1, "glGetString"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1728
    const-string v1, "name"

    invoke-direct {p0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1730
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1734
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1735
    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2846
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnviv(II[II)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2854
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2862
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 2858
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2870
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2866
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2878
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2874
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glHint(II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .prologue
    .line 1739
    const-string v0, "glHint"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1740
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHintTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    const-string v0, "mode"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHintMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1744
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 1745
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1746
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .param p1, "buffer"    # I

    .prologue
    .line 2882
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 2886
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 2890
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glLightModelf(IF)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 1749
    const-string v0, "glLightModelf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1750
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1752
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1754
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 1755
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1756
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1770
    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1771
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1773
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1775
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 1776
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1777
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 1759
    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1760
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1762
    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1763
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1765
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 1766
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1767
    return-void
.end method

.method public glLightModelx(II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 1780
    const-string v0, "glLightModelx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1781
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1783
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1785
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 1786
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1787
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1801
    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1802
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1804
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1806
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 1807
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1808
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1790
    const-string v0, "glLightModelxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1791
    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1793
    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1794
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1796
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 1797
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1798
    return-void
.end method

.method public glLightf(IIF)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 1811
    const-string v0, "glLightf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1812
    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1815
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1817
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 1818
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1819
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1834
    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1835
    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1838
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1840
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 1841
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1842
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1822
    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1823
    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1826
    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1827
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1829
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 1830
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1831
    return-void
.end method

.method public glLightx(III)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1845
    const-string v0, "glLightx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1846
    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1849
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1851
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 1852
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1853
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1868
    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1869
    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1872
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1874
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 1875
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1876
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1856
    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1857
    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1860
    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1861
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1863
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 1864
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1865
    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 1879
    const-string v0, "glLineWidth"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1880
    const-string v0, "width"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1881
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1883
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 1884
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1885
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 1888
    const-string v0, "glLineWidthx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1889
    const-string v0, "width"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1890
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1892
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 1893
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1894
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .prologue
    .line 1897
    const-string v0, "glLoadIdentity"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1898
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1900
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1901
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1902
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1915
    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1916
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1917
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1919
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 1920
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1921
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 2
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 1905
    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1906
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1907
    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1908
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1910
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 1911
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1912
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1934
    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1935
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1936
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1938
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 1939
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1940
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 2
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 1924
    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1925
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1926
    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1927
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1929
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 1930
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1931
    return-void
.end method

.method public glLogicOp(I)V
    .locals 1
    .param p1, "opcode"    # I

    .prologue
    .line 1943
    const-string v0, "glLogicOp"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1944
    const-string v0, "opcode"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1945
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1947
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 1948
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1949
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 1952
    const-string v0, "glMaterialf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1953
    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1956
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1958
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 1959
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1960
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1975
    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1976
    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1979
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1981
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 1982
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1983
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1963
    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1964
    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1967
    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1968
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1970
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 1971
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1972
    return-void
.end method

.method public glMaterialx(III)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1986
    const-string v0, "glMaterialx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1987
    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1990
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 1992
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 1993
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 1994
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2009
    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2010
    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2013
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2015
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 2016
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2017
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1997
    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1998
    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2001
    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2002
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2004
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 2005
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2006
    return-void
.end method

.method public glMatrixMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2020
    const-string v0, "glMatrixMode"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2021
    const-string v0, "mode"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMatrixMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2024
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2025
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2026
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2039
    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2040
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2041
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2043
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 2044
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2045
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 2
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 2029
    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2030
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2031
    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2032
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2034
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 2035
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2036
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2058
    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2059
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2060
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2062
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 2063
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2064
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 2
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 2048
    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2049
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2050
    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2051
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2053
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 2054
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2055
    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # F
    .param p3, "t"    # F
    .param p4, "r"    # F
    .param p5, "q"    # F

    .prologue
    .line 2067
    const-string v0, "glMultiTexCoord4f"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2068
    const-string v0, "target"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2069
    const-string v0, "s"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2070
    const-string v0, "t"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2071
    const-string v0, "r"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2072
    const-string v0, "q"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2073
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2075
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 2076
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2077
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "q"    # I

    .prologue
    .line 2080
    const-string v0, "glMultiTexCoord4x"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2081
    const-string v0, "target"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2082
    const-string v0, "s"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2083
    const-string v0, "t"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2084
    const-string v0, "r"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2085
    const-string v0, "q"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2086
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2088
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 2089
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2090
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .param p1, "nx"    # F
    .param p2, "ny"    # F
    .param p3, "nz"    # F

    .prologue
    .line 2093
    const-string v0, "glNormal3f"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2094
    const-string v0, "nx"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2095
    const-string v0, "ny"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2096
    const-string v0, "nz"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2097
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2099
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 2100
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2101
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .param p1, "nx"    # I
    .param p2, "ny"    # I
    .param p3, "nz"    # I

    .prologue
    .line 2104
    const-string v0, "glNormal3x"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2105
    const-string v0, "nx"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2106
    const-string v0, "ny"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2107
    const-string v0, "nz"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2108
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2110
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 2111
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2112
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 2115
    const-string v0, "glNormalPointer"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2116
    const-string v0, "type"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2117
    const-string v0, "stride"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2118
    const-string v0, "pointer"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2120
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    const/4 v2, 0x3

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    .line 2122
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 2123
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2124
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 2127
    const-string v0, "glOrthof"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2128
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2129
    const-string v0, "right"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2130
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2131
    const-string v0, "top"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2132
    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2133
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2134
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2136
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 2137
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2138
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .prologue
    .line 2141
    const-string v0, "glOrthox"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2142
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2143
    const-string v0, "right"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2144
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2145
    const-string v0, "top"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2146
    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2147
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2148
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2150
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 2151
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2152
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 2155
    const-string v0, "glPixelStorei"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2156
    const-string v0, "pname"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2157
    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2158
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2160
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 2161
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2162
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 2894
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2902
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterfv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 2898
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 2906
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2914
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterxv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 2910
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 2165
    const-string v0, "glPointSize"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2166
    const-string v0, "size"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2167
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2169
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 2170
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2171
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 2918
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSizex(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2174
    const-string v0, "glPointSizex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2175
    const-string v0, "size"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2176
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2178
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 2179
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2180
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .prologue
    .line 2183
    const-string v0, "glPolygonOffset"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2184
    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2185
    const-string v0, "units"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2186
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2187
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 2188
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2189
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .param p1, "factor"    # I
    .param p2, "units"    # I

    .prologue
    .line 2192
    const-string v0, "glPolygonOffsetx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2193
    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2194
    const-string v0, "units"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2195
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2197
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 2198
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2199
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    .line 2202
    const-string v0, "glPopMatrix"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2203
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2205
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 2206
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2207
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .prologue
    .line 2210
    const-string v0, "glPushMatrix"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2211
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2213
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2214
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2215
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 4
    .param p1, "mantissa"    # Ljava/nio/IntBuffer;
    .param p2, "exponent"    # Ljava/nio/IntBuffer;

    .prologue
    const/16 v3, 0x10

    .line 2716
    const-string v1, "glQueryMatrixxOES"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2717
    const-string v1, "mantissa"

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    const-string v1, "exponent"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2720
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    .line 2721
    .local v0, "valid":I
    const/4 v1, 0x2

    invoke-direct {p0, v3, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2722
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2723
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2724
    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 4
    .param p1, "mantissa"    # [I
    .param p2, "mantissaOffset"    # I
    .param p3, "exponent"    # [I
    .param p4, "exponentOffset"    # I

    .prologue
    const/16 v3, 0x10

    .line 2704
    const-string v1, "glQueryMatrixxOES"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2705
    const-string v1, "mantissa"

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    const-string v1, "exponent"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2708
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    .line 2709
    .local v0, "valid":I
    const/4 v1, 0x2

    invoke-direct {p0, v3, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2710
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2711
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2712
    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 2218
    const-string v0, "glReadPixels"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2219
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2220
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2221
    const-string v0, "width"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2222
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2223
    const-string v0, "format"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2224
    const-string v0, "type"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2225
    const-string v0, "pixels"

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2228
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 2229
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2230
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 2233
    const-string v0, "glRotatef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2234
    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2235
    const-string v0, "x"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2236
    const-string v0, "y"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2237
    const-string v0, "z"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2238
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2240
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2241
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2242
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .param p1, "angle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .prologue
    .line 2245
    const-string v0, "glRotatex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2246
    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2247
    const-string v0, "x"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2248
    const-string v0, "y"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2249
    const-string v0, "z"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2250
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2252
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 2253
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2254
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .prologue
    .line 2257
    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2258
    const-string v0, "value"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2259
    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 2260
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2262
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 2263
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2264
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "invert"    # Z

    .prologue
    .line 2267
    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2268
    const-string v0, "value"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2269
    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 2270
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2272
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 2273
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2274
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 2277
    const-string v0, "glScalef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2278
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2279
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2280
    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2281
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2283
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 2284
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2285
    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 2288
    const-string v0, "glScalex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2289
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2290
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2291
    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2292
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2294
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 2295
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2296
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2299
    const-string v0, "glScissor"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2300
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2301
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2302
    const-string v0, "width"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2303
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2304
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2306
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 2307
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2308
    return-void
.end method

.method public glShadeModel(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2311
    const-string v0, "glShadeModel"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2312
    const-string v0, "mode"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getShadeModel(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2315
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 2316
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2317
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .prologue
    .line 2320
    const-string v0, "glStencilFunc"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2321
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2322
    const-string v0, "ref"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2323
    const-string v0, "mask"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2324
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2326
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 2327
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2328
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 2331
    const-string v0, "glStencilMask"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2332
    const-string v0, "mask"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2333
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2335
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 2336
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2337
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .prologue
    .line 2340
    const-string v0, "glStencilOp"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2341
    const-string v0, "fail"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2342
    const-string v0, "zfail"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2343
    const-string v0, "zpass"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2344
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2346
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 2347
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2348
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 2351
    const-string v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2352
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 2353
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2354
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    .line 2356
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 2357
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2358
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 2361
    const-string v0, "glTexEnvf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2362
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const-string v0, "param"

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2367
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2368
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2369
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2384
    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2385
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2388
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2390
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 2391
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2392
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 2372
    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2373
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2376
    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2377
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2379
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 2380
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2381
    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 2922
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2930
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnviv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2926
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnvx(III)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 2395
    const-string v0, "glTexEnvx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2396
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2399
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2401
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 2402
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2403
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2418
    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2419
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2422
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2424
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 2425
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2426
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2406
    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2407
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2410
    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2411
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2413
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 2414
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2415
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 2430
    const-string v1, "glTexImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2431
    const-string v1, "target"

    invoke-direct {p0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2432
    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2433
    const-string v1, "internalformat"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2434
    const-string v1, "width"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2435
    const-string v1, "height"

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2436
    const-string v1, "border"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2437
    const-string v1, "format"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2438
    const-string v1, "type"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2439
    const-string v1, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2442
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 2443
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2444
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 2447
    const-string v0, "glTexParameterf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2448
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    const-string v0, "param"

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2453
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 2454
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2455
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 2938
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameterfv(II[FI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 2934
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameteri(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 2942
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2480
    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2481
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    const-string v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2484
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2486
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 2487
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2488
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2469
    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2470
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    const-string v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2473
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2475
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 2476
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2477
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 2458
    const-string v0, "glTexParameterx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2459
    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2462
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2464
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 2465
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2466
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 2950
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameterxv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 2946
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 2492
    const-string v1, "glTexSubImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2493
    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2495
    const-string v1, "xoffset"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2496
    const-string v1, "yoffset"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2497
    const-string v1, "width"

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2498
    const-string v1, "height"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2499
    const-string v1, "format"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2500
    const-string v1, "type"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2501
    const-string v1, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2503
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 2504
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2505
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 2508
    const-string v0, "glTranslatef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2509
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2510
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2511
    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2512
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2513
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 2514
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2515
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 2518
    const-string v0, "glTranslatex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2519
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2520
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2521
    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2522
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2523
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 2524
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2525
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 2528
    const-string v0, "glVertexPointer"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2529
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 2530
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2531
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    .line 2532
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 2533
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2534
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2537
    const-string v0, "glViewport"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2538
    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2539
    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2540
    const-string v0, "width"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2541
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2542
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    .line 2543
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 2544
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    .line 2545
    return-void
.end method

.method toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "byteCount"    # I
    .param p2, "input"    # Ljava/nio/Buffer;

    .prologue
    .line 925
    const/4 v4, 0x0

    .line 926
    .local v4, "result":Ljava/nio/ByteBuffer;
    if-gez p1, :cond_1

    const/4 v0, 0x1

    .line 927
    .local v0, "convertWholeBuffer":Z
    :goto_0
    instance-of v6, p2, Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_3

    move-object v2, p2

    .line 928
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 929
    .local v2, "input2":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 932
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 933
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 934
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 935
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 934
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 926
    .end local v0    # "convertWholeBuffer":Z
    .end local v1    # "i":I
    .end local v2    # "input2":Ljava/nio/ByteBuffer;
    .end local v3    # "position":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 937
    .restart local v0    # "convertWholeBuffer":Z
    .restart local v1    # "i":I
    .restart local v2    # "input2":Ljava/nio/ByteBuffer;
    .restart local v3    # "position":I
    :cond_2
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1013
    .end local v2    # "input2":Ljava/nio/ByteBuffer;
    :goto_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1016
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1017
    return-object v4

    .line 938
    .end local v1    # "i":I
    .end local v3    # "position":I
    :cond_3
    instance-of v6, p2, Ljava/nio/CharBuffer;

    if-eqz v6, :cond_6

    move-object v2, p2

    .line 939
    check-cast v2, Ljava/nio/CharBuffer;

    .line 940
    .local v2, "input2":Ljava/nio/CharBuffer;
    if-eqz v0, :cond_4

    .line 941
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    mul-int/lit8 p1, v6, 0x2

    .line 943
    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 944
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v5

    .line 945
    .local v5, "result2":Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    .line 946
    .restart local v3    # "position":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    div-int/lit8 v6, p1, 0x2

    if-ge v1, v6, :cond_5

    .line 947
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->get()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 946
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 949
    :cond_5
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 950
    .end local v1    # "i":I
    .end local v2    # "input2":Ljava/nio/CharBuffer;
    .end local v3    # "position":I
    .end local v5    # "result2":Ljava/nio/CharBuffer;
    :cond_6
    instance-of v6, p2, Ljava/nio/ShortBuffer;

    if-eqz v6, :cond_9

    move-object v2, p2

    .line 951
    check-cast v2, Ljava/nio/ShortBuffer;

    .line 952
    .local v2, "input2":Ljava/nio/ShortBuffer;
    if-eqz v0, :cond_7

    .line 953
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    mul-int/lit8 p1, v6, 0x2

    .line 955
    :cond_7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 956
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 957
    .local v5, "result2":Ljava/nio/ShortBuffer;
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->position()I

    move-result v3

    .line 958
    .restart local v3    # "position":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    div-int/lit8 v6, p1, 0x2

    if-ge v1, v6, :cond_8

    .line 959
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->get()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 961
    :cond_8
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 962
    .end local v1    # "i":I
    .end local v2    # "input2":Ljava/nio/ShortBuffer;
    .end local v3    # "position":I
    .end local v5    # "result2":Ljava/nio/ShortBuffer;
    :cond_9
    instance-of v6, p2, Ljava/nio/IntBuffer;

    if-eqz v6, :cond_c

    move-object v2, p2

    .line 963
    check-cast v2, Ljava/nio/IntBuffer;

    .line 964
    .local v2, "input2":Ljava/nio/IntBuffer;
    if-eqz v0, :cond_a

    .line 965
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->limit()I

    move-result v6

    mul-int/lit8 p1, v6, 0x4

    .line 967
    :cond_a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 968
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    .line 969
    .local v5, "result2":Ljava/nio/IntBuffer;
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->position()I

    move-result v3

    .line 970
    .restart local v3    # "position":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    div-int/lit8 v6, p1, 0x4

    if-ge v1, v6, :cond_b

    .line 971
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 970
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 973
    :cond_b
    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 974
    .end local v1    # "i":I
    .end local v2    # "input2":Ljava/nio/IntBuffer;
    .end local v3    # "position":I
    .end local v5    # "result2":Ljava/nio/IntBuffer;
    :cond_c
    instance-of v6, p2, Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_f

    move-object v2, p2

    .line 975
    check-cast v2, Ljava/nio/FloatBuffer;

    .line 976
    .local v2, "input2":Ljava/nio/FloatBuffer;
    if-eqz v0, :cond_d

    .line 977
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v6

    mul-int/lit8 p1, v6, 0x4

    .line 979
    :cond_d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 980
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 981
    .local v5, "result2":Ljava/nio/FloatBuffer;
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->position()I

    move-result v3

    .line 982
    .restart local v3    # "position":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    div-int/lit8 v6, p1, 0x4

    if-ge v1, v6, :cond_e

    .line 983
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 982
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 985
    :cond_e
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 986
    .end local v1    # "i":I
    .end local v2    # "input2":Ljava/nio/FloatBuffer;
    .end local v3    # "position":I
    .end local v5    # "result2":Ljava/nio/FloatBuffer;
    :cond_f
    instance-of v6, p2, Ljava/nio/DoubleBuffer;

    if-eqz v6, :cond_12

    move-object v2, p2

    .line 987
    check-cast v2, Ljava/nio/DoubleBuffer;

    .line 988
    .local v2, "input2":Ljava/nio/DoubleBuffer;
    if-eqz v0, :cond_10

    .line 989
    invoke-virtual {v2}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v6

    mul-int/lit8 p1, v6, 0x8

    .line 991
    :cond_10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 992
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v5

    .line 993
    .local v5, "result2":Ljava/nio/DoubleBuffer;
    invoke-virtual {v2}, Ljava/nio/DoubleBuffer;->position()I

    move-result v3

    .line 994
    .restart local v3    # "position":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    div-int/lit8 v6, p1, 0x8

    if-ge v1, v6, :cond_11

    .line 995
    invoke-virtual {v2}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 997
    :cond_11
    invoke-virtual {v2, v3}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 998
    .end local v1    # "i":I
    .end local v2    # "input2":Ljava/nio/DoubleBuffer;
    .end local v3    # "position":I
    .end local v5    # "result2":Ljava/nio/DoubleBuffer;
    :cond_12
    instance-of v6, p2, Ljava/nio/LongBuffer;

    if-eqz v6, :cond_15

    move-object v2, p2

    .line 999
    check-cast v2, Ljava/nio/LongBuffer;

    .line 1000
    .local v2, "input2":Ljava/nio/LongBuffer;
    if-eqz v0, :cond_13

    .line 1001
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->limit()I

    move-result v6

    mul-int/lit8 p1, v6, 0x8

    .line 1003
    :cond_13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1004
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v5

    .line 1005
    .local v5, "result2":Ljava/nio/LongBuffer;
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->position()I

    move-result v3

    .line 1006
    .restart local v3    # "position":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    div-int/lit8 v6, p1, 0x8

    if-ge v1, v6, :cond_14

    .line 1007
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1009
    :cond_14
    invoke-virtual {v2, v3}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 1011
    .end local v1    # "i":I
    .end local v2    # "input2":Ljava/nio/LongBuffer;
    .end local v3    # "position":I
    .end local v5    # "result2":Ljava/nio/LongBuffer;
    :cond_15
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unimplemented Buffer subclass."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
