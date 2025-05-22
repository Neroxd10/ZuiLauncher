.class public final Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# static fields
.field private static volatile a:[Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;


# instance fields
.field public serviceConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->clear()Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    return-void
.end method

.method public static emptyArray()[Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;
    .locals 2

    sget-object v0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->a:[Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->a:[Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    sput-object v1, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->a:[Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

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
    sget-object v0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->a:[Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;
    .locals 1

    new-instance v0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    invoke-direct {v0}, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;
    .locals 1

    new-instance v0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    invoke-direct {v0}, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->serviceConnected:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-boolean p0, p0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->serviceConnected:Z

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->serviceConnected:Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->serviceConnected:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
