.class public Lcom/badlogic/gdx/input/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/badlogic/gdx/Input;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;,
        Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;,
        Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    }
.end annotation


# static fields
.field public static DEFAULT_PORT:I


# instance fields
.field private accel:[F

.field private compass:[F

.field public final ips:[Ljava/lang/String;

.field isTouched:[Z

.field justTouched:Z

.field keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private multiTouch:Z

.field private final port:I

.field processor:Lcom/badlogic/gdx/InputProcessor;

.field private remoteHeight:F

.field private remoteWidth:F

.field private serverSocket:Ljava/net/ServerSocket;

.field touchX:[I

.field touchY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x1ffe

    sput v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    sget v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(I)V

    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 9
    .param p1, "port"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/16 v5, 0x14

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    .line 142
    new-array v4, v8, [F

    iput-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    .line 143
    iput-boolean v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    .line 144
    iput v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    .line 145
    iput v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    .line 146
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->keys:Ljava/util/Set;

    .line 147
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    .line 148
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    .line 149
    new-array v4, v5, [Z

    iput-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    .line 150
    iput-boolean v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 151
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 161
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->port:I

    .line 162
    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->serverSocket:Ljava/net/ServerSocket;

    .line 163
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    .local v3, "thread":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 165
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 166
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 167
    .local v0, "allByName":[Ljava/net/InetAddress;
    array-length v4, v0

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    .line 168
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 169
    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "allByName":[Ljava/net/InetAddress;
    .end local v2    # "i":I
    .end local v3    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t open listening socket at port \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "allByName":[Ljava/net/InetAddress;
    .restart local v2    # "i":I
    .restart local v3    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelVibrate()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public getAccelerometerX()F
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerY()F
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerZ()F
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAzimuth()F
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getCurrentEventTime()J
    .locals 2

    .prologue
    .line 441
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeltaX()I
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public getDeltaX(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public getDeltaY()I
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public getDeltaY(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public getIPs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public getPitch()F
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRoll()F
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/Input$TextInputListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 321
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getInput()Lcom/badlogic/gdx/Input;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getX(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    aget v0, v0, p1

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    aget v0, v0, p1

    return v0
.end method

.method public isButtonPressed(I)Z
    .locals 3
    .param p1, "button"    # I

    .prologue
    const/4 v1, 0x0

    .line 308
    if-eqz p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 309
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isCursorCatched()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPressed(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->keys:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .locals 2
    .param p1, "peripheral"    # Lcom/badlogic/gdx/Input$Peripheral;

    .prologue
    const/4 v0, 0x1

    .line 381
    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-eq p1, v1, :cond_0

    .line 383
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    goto :goto_0

    .line 384
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouched()Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isTouched(I)Z
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public justTouched()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 180
    :goto_0
    :try_start_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "listening, port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/badlogic/gdx/input/RemoteInput;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    const/4 v4, 0x0

    .line 183
    .local v4, "socket":Ljava/net/Socket;
    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    .line 186
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 187
    const/16 v6, 0xbb8

    invoke-virtual {v4, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 189
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 190
    .local v2, "in":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->multiTouch:Z

    .line 192
    :goto_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 193
    .local v1, "event":I
    const/4 v3, 0x0

    .line 194
    .local v3, "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    const/4 v5, 0x0

    .line 195
    .local v5, "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    packed-switch v1, :pswitch_data_0

    .line 248
    :goto_2
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v7, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;

    invoke-direct {v7, p0, v5, v3}, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;-><init>(Lcom/badlogic/gdx/input/RemoteInput;Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;)V

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 250
    .end local v1    # "event":I
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    .end local v4    # "socket":Ljava/net/Socket;
    .end local v5    # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "event":I
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    .restart local v4    # "socket":Ljava/net/Socket;
    .restart local v5    # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    aput v8, v6, v7

    .line 198
    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    aput v8, v6, v7

    .line 199
    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->accel:[F

    const/4 v7, 0x2

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    aput v8, v6, v7

    goto :goto_2

    .line 202
    :pswitch_1
    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    aput v8, v6, v7

    .line 203
    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    aput v8, v6, v7

    .line 204
    iget-object v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->compass:[F

    const/4 v7, 0x2

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    aput v8, v6, v7

    goto :goto_2

    .line 207
    :pswitch_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    .line 208
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    goto :goto_2

    .line 211
    :pswitch_3
    new-instance v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    .end local v3    # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    invoke-direct {v3, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 212
    .restart local v3    # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    .line 213
    const/4 v6, 0x0

    iput v6, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    goto :goto_2

    .line 216
    :pswitch_4
    new-instance v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    .end local v3    # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    invoke-direct {v3, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 217
    .restart local v3    # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    .line 218
    const/4 v6, 0x1

    iput v6, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    goto :goto_2

    .line 221
    :pswitch_5
    new-instance v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    .end local v3    # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    invoke-direct {v3, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 222
    .restart local v3    # "keyEvent":Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readChar()C

    move-result v6

    iput-char v6, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyChar:C

    .line 223
    const/4 v6, 0x2

    iput v6, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    goto/16 :goto_2

    .line 226
    :pswitch_6
    new-instance v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    .end local v5    # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    invoke-direct {v5, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 227
    .restart local v5    # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v6, v7

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 228
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v6, v7

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 229
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 230
    const/4 v6, 0x0

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    goto/16 :goto_2

    .line 233
    :pswitch_7
    new-instance v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    .end local v5    # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    invoke-direct {v5, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 234
    .restart local v5    # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v6, v7

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 235
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v6, v7

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 236
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 237
    const/4 v6, 0x1

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    goto/16 :goto_2

    .line 240
    :pswitch_8
    new-instance v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    .end local v5    # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    invoke-direct {v5, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    .line 241
    .restart local v5    # "touchEvent":Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteWidth:F

    div-float/2addr v6, v7

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    .line 242
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->remoteHeight:F

    div-float/2addr v6, v7

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    .line 243
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    .line 244
    const/4 v6, 0x2

    iput v6, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCatchBackKey(Z)V
    .locals 0
    .param p1, "catchBack"    # Z

    .prologue
    .line 361
    return-void
.end method

.method public setCatchMenuKey(Z)V
    .locals 0
    .param p1, "catchMenu"    # Z

    .prologue
    .line 436
    return-void
.end method

.method public setCursorCatched(Z)V
    .locals 0
    .param p1, "catched"    # Z

    .prologue
    .line 400
    return-void
.end method

.method public setCursorPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 430
    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 0
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 366
    return-void
.end method

.method public setOnscreenKeyboardVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 326
    return-void
.end method

.method public vibrate(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 331
    return-void
.end method

.method public vibrate([JI)V
    .locals 0
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 336
    return-void
.end method
