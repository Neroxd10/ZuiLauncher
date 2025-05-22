.class public final Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/userevent/nano/LauncherLogExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TargetExtension"
.end annotation


# static fields
.field private static volatile a:[Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;->clear()Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    return-void
.end method

.method public static emptyArray()[Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;
    .locals 2

    sget-object v0, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    sput-object v1, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

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
    sget-object v0, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;->a:[Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;
    .locals 1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method
