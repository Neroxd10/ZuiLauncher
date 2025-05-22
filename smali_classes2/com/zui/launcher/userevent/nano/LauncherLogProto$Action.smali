.class public final Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/userevent/nano/LauncherLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action$Command;,
        Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action$Direction;,
        Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action$Touch;,
        Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action$Type;
    }
.end annotation


# static fields
.field private static volatile a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;


# instance fields
.field public command:I

.field public dir:I

.field public isOutside:Z

.field public isStateChange:Z

.field public touch:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->clear()Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    return-void
.end method

.method public static emptyArray()[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;
    .locals 2

    sget-object v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    sput-object v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

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
    sget-object v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->type:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->touch:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->command:I

    iput-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    iput-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->type:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->touch:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->command:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean p0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    if-eqz p0, :cond_5

    const/4 v1, 0x6

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->command:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->touch:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->type:I

    goto :goto_0

    :cond_8
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->type:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->touch:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->command:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    iget-boolean v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
