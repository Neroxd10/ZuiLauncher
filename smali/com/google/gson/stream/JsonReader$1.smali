.class Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .locals 2

    instance-of p0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    return-void

    :cond_0
    iget p0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result p0

    :cond_1
    const/16 v0, 0xd

    if-ne p0, v0, :cond_2

    const/16 p0, 0x9

    :goto_0
    iput p0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    const/16 p0, 0x8

    goto :goto_0

    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_4

    const/16 p0, 0xa

    goto :goto_0

    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a name but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
