.class abstract Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;
.source "JodaDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/ext/JodaDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "JodaDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/deser/StdScalarDeserializer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final _localDateTimeFormat:Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;->_localDateTimeFormat:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;, "Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected parseLocal(Lorg/codehaus/jackson/JsonParser;)Lorg/joda/time/DateTime;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;, "Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer<TT;>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 61
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/ext/JodaDeserializers$JodaDeserializer;->_localDateTimeFormat:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v1, v0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v1

    goto :goto_0
.end method
