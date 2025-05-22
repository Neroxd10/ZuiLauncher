.class public final Lcom/zui/launcher/tracing/nano/LauncherTraceProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# static fields
.field private static volatile a:[Lcom/zui/launcher/tracing/nano/LauncherTraceProto;


# instance fields
.field public touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->clear()Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    return-void
.end method

.method public static emptyArray()[Lcom/zui/launcher/tracing/nano/LauncherTraceProto;
    .locals 2

    sget-object v0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->a:[Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->a:[Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    sput-object v1, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->a:[Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

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
    sget-object v0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->a:[Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/LauncherTraceProto;
    .locals 1

    new-instance v0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    invoke-direct {v0}, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/zui/launcher/tracing/nano/LauncherTraceProto;
    .locals 1

    new-instance v0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    invoke-direct {v0}, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/zui/launcher/tracing/nano/LauncherTraceProto;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/tracing/nano/LauncherTraceProto;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    if-nez v0, :cond_2

    new-instance v0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    invoke-direct {v0}, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
