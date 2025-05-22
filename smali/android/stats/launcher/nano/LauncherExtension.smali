.class public final Landroid/stats/launcher/nano/LauncherExtension;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Landroid/stats/launcher/nano/LauncherExtension;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:[Landroid/stats/launcher/nano/LauncherExtension;


# instance fields
.field public dstTarget:[Landroid/stats/launcher/nano/LauncherTarget;

.field public srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Landroid/stats/launcher/nano/LauncherExtension;->clear()Landroid/stats/launcher/nano/LauncherExtension;

    return-void
.end method

.method public static emptyArray()[Landroid/stats/launcher/nano/LauncherExtension;
    .locals 2

    sget-object v0, Landroid/stats/launcher/nano/LauncherExtension;->a:[Landroid/stats/launcher/nano/LauncherExtension;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/stats/launcher/nano/LauncherExtension;->a:[Landroid/stats/launcher/nano/LauncherExtension;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/stats/launcher/nano/LauncherExtension;

    sput-object v1, Landroid/stats/launcher/nano/LauncherExtension;->a:[Landroid/stats/launcher/nano/LauncherExtension;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/stats/launcher/nano/LauncherExtension;->a:[Landroid/stats/launcher/nano/LauncherExtension;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/launcher/nano/LauncherExtension;
    .locals 1

    new-instance v0, Landroid/stats/launcher/nano/LauncherExtension;

    invoke-direct {v0}, Landroid/stats/launcher/nano/LauncherExtension;-><init>()V

    invoke-virtual {v0, p0}, Landroid/stats/launcher/nano/LauncherExtension;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/launcher/nano/LauncherExtension;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Landroid/stats/launcher/nano/LauncherExtension;
    .locals 1

    new-instance v0, Landroid/stats/launcher/nano/LauncherExtension;

    invoke-direct {v0}, Landroid/stats/launcher/nano/LauncherExtension;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/stats/launcher/nano/LauncherExtension;

    return-object p0
.end method


# virtual methods
.method public clear()Landroid/stats/launcher/nano/LauncherExtension;
    .locals 1

    invoke-static {}, Landroid/stats/launcher/nano/LauncherTarget;->emptyArray()[Landroid/stats/launcher/nano/LauncherTarget;

    move-result-object v0

    iput-object v0, p0, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    invoke-static {}, Landroid/stats/launcher/nano/LauncherTarget;->emptyArray()[Landroid/stats/launcher/nano/LauncherTarget;

    move-result-object v0

    iput-object v0, p0, Landroid/stats/launcher/nano/LauncherExtension;->dstTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v3, p0, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/stats/launcher/nano/LauncherExtension;->dstTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, Landroid/stats/launcher/nano/LauncherExtension;->dstTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/launcher/nano/LauncherExtension;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Landroid/stats/launcher/nano/LauncherExtension;->dstTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v3, v0, [Landroid/stats/launcher/nano/LauncherTarget;

    if-eqz v1, :cond_3

    iget-object v4, p0, Landroid/stats/launcher/nano/LauncherExtension;->dstTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Landroid/stats/launcher/nano/LauncherTarget;

    invoke-direct {v2}, Landroid/stats/launcher/nano/LauncherTarget;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/stats/launcher/nano/LauncherTarget;

    invoke-direct {v0}, Landroid/stats/launcher/nano/LauncherTarget;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Landroid/stats/launcher/nano/LauncherExtension;->dstTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v3, v0, [Landroid/stats/launcher/nano/LauncherTarget;

    if-eqz v1, :cond_7

    iget-object v4, p0, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    new-instance v2, Landroid/stats/launcher/nano/LauncherTarget;

    invoke-direct {v2}, Landroid/stats/launcher/nano/LauncherTarget;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v0, Landroid/stats/launcher/nano/LauncherTarget;

    invoke-direct {v0}, Landroid/stats/launcher/nano/LauncherTarget;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/stats/launcher/nano/LauncherExtension;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/launcher/nano/LauncherExtension;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    iget-object v0, p0, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/stats/launcher/nano/LauncherExtension;->dstTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    :goto_1
    iget-object v0, p0, Landroid/stats/launcher/nano/LauncherExtension;->dstTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
