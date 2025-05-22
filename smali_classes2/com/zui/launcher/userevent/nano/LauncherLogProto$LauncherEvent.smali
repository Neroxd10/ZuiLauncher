.class public final Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/userevent/nano/LauncherLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LauncherEvent"
.end annotation


# static fields
.field private static volatile a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;


# instance fields
.field public action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

.field public actionDurationMillis:J

.field public destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

.field public elapsedContainerMillis:J

.field public elapsedSessionMillis:J

.field public extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

.field public isInLandscapeMode:Z

.field public isInMultiWindowMode:Z

.field public srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->clear()Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 2

    sget-object v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    sput-object v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

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
    sget-object v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    invoke-static {}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->emptyArray()[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->emptyArray()[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    iput-wide v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    iput-wide v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    iput-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-wide v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v5, 0x5

    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-wide v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_7

    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    if-eqz v1, :cond_8

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    if-eqz v1, :cond_9

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object p0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    if-eqz p0, :cond_a

    const/16 v1, 0x9

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_a
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    if-eq v0, v1, :cond_5

    const/16 v1, 0x38

    if-eq v0, v1, :cond_4

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    if-nez v0, :cond_2

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$LauncherEventExtension;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    goto :goto_0

    :cond_8
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_1

    :cond_9
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_b

    new-instance v2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    goto/16 :goto_0

    :cond_c
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_3

    :cond_d
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_e

    iget-object v4, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_f

    new-instance v2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    if-nez v0, :cond_11

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    :cond_11
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :cond_12
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    iget-wide v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_6
    iget-wide v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    iget-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    if-eqz v0, :cond_a

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
