.class public final Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto$MagicNumber;
    }
.end annotation


# static fields
.field private static volatile a:[Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;


# instance fields
.field public entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

.field public magicNumber:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->clear()Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    return-void
.end method

.method public static emptyArray()[Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;
    .locals 2

    sget-object v0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->a:[Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->a:[Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    sput-object v1, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->a:[Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

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
    sget-object v0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->a:[Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;
    .locals 1

    new-instance v0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    invoke-direct {v0}, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;
    .locals 1

    new-instance v0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    invoke-direct {v0}, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->magicNumber:J

    invoke-static {}, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;->emptyArray()[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->magicNumber:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    invoke-direct {v2}, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    invoke-direct {v0}, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->magicNumber:J

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    iget-wide v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->magicNumber:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
