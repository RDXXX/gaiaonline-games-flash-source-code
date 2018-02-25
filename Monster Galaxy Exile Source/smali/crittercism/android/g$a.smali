.class public final Lcrittercism/android/g$a;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:[B

.field private h:Z


# virtual methods
.method public final close()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcrittercism/android/g$a;->b:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcrittercism/android/g$a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/g$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcrittercism/android/g$a;->g:[B

    iget-object v2, p0, Lcrittercism/android/g$a;->c:[B

    iget v3, p0, Lcrittercism/android/g$a;->b:I

    invoke-static {v1, v2, v3}, Lcrittercism/android/g;->a([B[BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/g$a;->b:I

    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iput-object v4, p0, Lcrittercism/android/g$a;->c:[B

    iput-object v4, p0, Lcrittercism/android/g$a;->out:Ljava/io/OutputStream;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(I)V
    .locals 5

    const/4 v2, -0x5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcrittercism/android/g$a;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcrittercism/android/g$a;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcrittercism/android/g$a;->c:[B

    iget v1, p0, Lcrittercism/android/g$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcrittercism/android/g$a;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcrittercism/android/g$a;->b:I

    iget v1, p0, Lcrittercism/android/g$a;->d:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcrittercism/android/g$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcrittercism/android/g$a;->g:[B

    iget-object v2, p0, Lcrittercism/android/g$a;->c:[B

    iget v3, p0, Lcrittercism/android/g$a;->d:I

    invoke-static {v1, v2, v3}, Lcrittercism/android/g;->a([B[BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcrittercism/android/g$a;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcrittercism/android/g$a;->e:I

    iget-boolean v0, p0, Lcrittercism/android/g$a;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcrittercism/android/g$a;->e:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcrittercism/android/g$a;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iput v4, p0, Lcrittercism/android/g$a;->e:I

    :cond_2
    iput v4, p0, Lcrittercism/android/g$a;->b:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcrittercism/android/g;->a()[B

    move-result-object v0

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcrittercism/android/g$a;->c:[B

    iget v1, p0, Lcrittercism/android/g$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcrittercism/android/g$a;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcrittercism/android/g$a;->b:I

    iget v1, p0, Lcrittercism/android/g$a;->d:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcrittercism/android/g$a;->c:[B

    iget-object v1, p0, Lcrittercism/android/g$a;->g:[B

    invoke-static {v0, v1}, Lcrittercism/android/g;->a([B[B)I

    move-result v0

    iget-object v1, p0, Lcrittercism/android/g$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcrittercism/android/g$a;->g:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v4, p0, Lcrittercism/android/g$a;->b:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcrittercism/android/g;->a()[B

    move-result-object v0

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write([BII)V
    .locals 2

    iget-boolean v0, p0, Lcrittercism/android/g$a;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcrittercism/android/g$a;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
