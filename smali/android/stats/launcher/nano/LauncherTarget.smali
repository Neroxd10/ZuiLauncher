.class public final Landroid/stats/launcher/nano/LauncherTarget;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Landroid/stats/launcher/nano/LauncherTarget;",
        ">;"
    }
.end annotation


# static fields
.field public static final APP_ICON:I = 0x1

.field public static final CONTAINER_TYPE:I = 0x3

.field public static final CONTROL_TYPE:I = 0x2

.field public static final DEEPSHORTCUT:I = 0x5

.field public static final DEFAULT_CONTAINER:I = 0x0

.field public static final DEFAULT_CONTROL:I = 0x0

.field public static final DEFAULT_ITEM:I = 0x0

.field public static final EDITTEXT:I = 0x7

.field public static final FOLDER:I = 0x2

.field public static final FOLDER_ICON:I = 0x4

.field public static final HOTSEAT:I = 0x1

.field public static final ITEM_TYPE:I = 0x1

.field public static final MENU:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NOTIFICATION:I = 0x8

.field public static final PREDICTION:I = 0x3

.field public static final REMOVE:I = 0x3

.field public static final SEARCHBOX:I = 0x6

.field public static final SEARCHRESULT:I = 0x4

.field public static final SHORTCUT:I = 0x2

.field public static final TASK:I = 0x9

.field public static final UNINSTALL:I = 0x2

.field public static final WIDGET:I = 0x3

.field private static volatile a:[Landroid/stats/launcher/nano/LauncherTarget;


# instance fields
.field public container:I

.field public control:I

.field public gridX:I

.field public gridY:I

.field public item:I

.field public launchComponent:Ljava/lang/String;

.field public pageId:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Landroid/stats/launcher/nano/LauncherTarget;->clear()Landroid/stats/launcher/nano/LauncherTarget;

    return-void
.end method

.method public static emptyArray()[Landroid/stats/launcher/nano/LauncherTarget;
    .locals 2

    sget-object v0, Landroid/stats/launcher/nano/LauncherTarget;->a:[Landroid/stats/launcher/nano/LauncherTarget;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/stats/launcher/nano/LauncherTarget;->a:[Landroid/stats/launcher/nano/LauncherTarget;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/stats/launcher/nano/LauncherTarget;

    sput-object v1, Landroid/stats/launcher/nano/LauncherTarget;->a:[Landroid/stats/launcher/nano/LauncherTarget;

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
    sget-object v0, Landroid/stats/launcher/nano/LauncherTarget;->a:[Landroid/stats/launcher/nano/LauncherTarget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/launcher/nano/LauncherTarget;
    .locals 1

    new-instance v0, Landroid/stats/launcher/nano/LauncherTarget;

    invoke-direct {v0}, Landroid/stats/launcher/nano/LauncherTarget;-><init>()V

    invoke-virtual {v0, p0}, Landroid/stats/launcher/nano/LauncherTarget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/launcher/nano/LauncherTarget;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Landroid/stats/launcher/nano/LauncherTarget;
    .locals 1

    new-instance v0, Landroid/stats/launcher/nano/LauncherTarget;

    invoke-direct {v0}, Landroid/stats/launcher/nano/LauncherTarget;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/stats/launcher/nano/LauncherTarget;

    return-object p0
.end method


# virtual methods
.method public clear()Landroid/stats/launcher/nano/LauncherTarget;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->type:I

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->item:I

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->container:I

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->control:I

    const-string v1, ""

    iput-object v1, p0, Landroid/stats/launcher/nano/LauncherTarget;->launchComponent:Ljava/lang/String;

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->pageId:I

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->gridX:I

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->gridY:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Landroid/stats/launcher/nano/LauncherTarget;->type:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Landroid/stats/launcher/nano/LauncherTarget;->item:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Landroid/stats/launcher/nano/LauncherTarget;->container:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Landroid/stats/launcher/nano/LauncherTarget;->control:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroid/stats/launcher/nano/LauncherTarget;->launchComponent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/stats/launcher/nano/LauncherTarget;->launchComponent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Landroid/stats/launcher/nano/LauncherTarget;->pageId:I

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Landroid/stats/launcher/nano/LauncherTarget;->gridX:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget p0, p0, Landroid/stats/launcher/nano/LauncherTarget;->gridY:I

    if-eqz p0, :cond_7

    const/16 v1, 0x8

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/launcher/nano/LauncherTarget;
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x18

    if-eq v0, v1, :cond_7

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->gridY:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->gridX:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->pageId:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->launchComponent:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    if-eqz v5, :cond_6

    if-eq v5, v4, :cond_6

    if-eq v5, v3, :cond_6

    if-eq v5, v2, :cond_6

    goto :goto_1

    :cond_6
    iput v5, p0, Landroid/stats/launcher/nano/LauncherTarget;->control:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    if-eqz v5, :cond_8

    if-eq v5, v4, :cond_8

    if-eq v5, v3, :cond_8

    if-eq v5, v2, :cond_8

    const/4 v2, 0x4

    if-eq v5, v2, :cond_8

    goto :goto_1

    :cond_8
    iput v5, p0, Landroid/stats/launcher/nano/LauncherTarget;->container:I

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v2, p0, Landroid/stats/launcher/nano/LauncherTarget;->item:I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    if-eqz v5, :cond_b

    if-eq v5, v4, :cond_b

    if-eq v5, v3, :cond_b

    if-eq v5, v2, :cond_b

    :goto_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :cond_b
    iput v5, p0, Landroid/stats/launcher/nano/LauncherTarget;->type:I

    goto/16 :goto_0

    :cond_c
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
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/stats/launcher/nano/LauncherTarget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/launcher/nano/LauncherTarget;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->type:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->item:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->container:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->control:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-object v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->launchComponent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Landroid/stats/launcher/nano/LauncherTarget;->launchComponent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->pageId:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->gridX:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget v0, p0, Landroid/stats/launcher/nano/LauncherTarget;->gridY:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
