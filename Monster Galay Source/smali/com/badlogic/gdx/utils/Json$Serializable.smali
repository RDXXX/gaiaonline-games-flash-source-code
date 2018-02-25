.class public interface abstract Lcom/badlogic/gdx/utils/Json$Serializable;
.super Ljava/lang/Object;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Serializable"
.end annotation


# virtual methods
.method public abstract read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/ObjectMap;)V
.end method

.method public abstract write(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
