.class public final Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/userevent/nano/LauncherLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target$Type;
    }
.end annotation


# static fields
.field private static volatile a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;


# instance fields
.field public cardinality:I

.field public componentHash:I

.field public containerType:I

.field public controlType:I

.field public extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

.field public gridX:I

.field public gridY:I

.field public intentHash:I

.field public itemType:I

.field public packageNameHash:I

.field public pageIndex:I

.field public predictedRank:I

.field public rank:I

.field public searchQueryLength:I

.field public spanX:I

.field public spanY:I

.field public tipType:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->clear()Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    return-void
.end method

.method public static emptyArray()[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 2

    sget-object v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    sput-object v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

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
    sget-object v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->rank:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridX:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridY:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->cardinality:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->componentHash:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->intentHash:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanX:I

    iput v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanY:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->tipType:I

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->searchQueryLength:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->rank:I

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridX:I

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridY:I

    if-eqz v1, :cond_4

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz v1, :cond_5

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->cardinality:I

    if-eqz v1, :cond_6

    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    if-eqz v1, :cond_7

    const/16 v3, 0x8

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    if-eqz v1, :cond_8

    const/16 v3, 0x9

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    if-eqz v1, :cond_9

    const/16 v3, 0xa

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->componentHash:I

    if-eqz v1, :cond_a

    const/16 v3, 0xb

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->intentHash:I

    if-eqz v1, :cond_b

    const/16 v3, 0xc

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanX:I

    if-eq v1, v2, :cond_c

    const/16 v3, 0xd

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanY:I

    if-eq v1, v2, :cond_d

    const/16 v2, 0xe

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->tipType:I

    if-eqz v1, :cond_10

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget p0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->searchQueryLength:I

    if-eqz p0, :cond_11

    const/16 v1, 0x12

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_11
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->searchQueryLength:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->tipType:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    if-nez v0, :cond_2

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanY:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanX:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->intentHash:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->componentHash:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->cardinality:I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :cond_3
    :pswitch_2
    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridY:I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridX:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->rank:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    iput v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    goto/16 :goto_0

    :sswitch_12
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x8 -> :sswitch_11
        0x10 -> :sswitch_10
        0x18 -> :sswitch_f
        0x20 -> :sswitch_e
        0x28 -> :sswitch_d
        0x30 -> :sswitch_c
        0x38 -> :sswitch_b
        0x40 -> :sswitch_a
        0x48 -> :sswitch_9
        0x50 -> :sswitch_8
        0x58 -> :sswitch_7
        0x60 -> :sswitch_6
        0x68 -> :sswitch_5
        0x70 -> :sswitch_4
        0x78 -> :sswitch_3
        0x82 -> :sswitch_2
        0x88 -> :sswitch_1
        0x90 -> :sswitch_0
    .end sparse-switch

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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
        :pswitch_2
        :pswitch_2
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
    .locals 3

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->rank:I

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridX:I

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridY:I

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz v0, :cond_5

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->cardinality:I

    if-eqz v0, :cond_6

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    if-eqz v0, :cond_8

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    if-eqz v0, :cond_9

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->componentHash:I

    if-eqz v0, :cond_a

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->intentHash:I

    if-eqz v0, :cond_b

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanX:I

    if-eq v0, v1, :cond_c

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_c
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanY:I

    if-eq v0, v1, :cond_d

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_e
    iget-object v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->tipType:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_10
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->searchQueryLength:I

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_11
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
