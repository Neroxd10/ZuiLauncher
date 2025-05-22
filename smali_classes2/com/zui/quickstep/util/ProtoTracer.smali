.class public Lcom/zui/quickstep/util/ProtoTracer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams<",
        "Lcom/google/protobuf/nano/MessageNano;",
        "Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;",
        "Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;",
        "Lcom/zui/launcher/tracing/nano/LauncherTraceProto;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/quickstep/util/ProtoTracer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/systemui/shared/tracing/FrameProtoTracer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/tracing/FrameProtoTracer<",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/quickstep/util/a;->a:Lcom/zui/quickstep/util/a;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/quickstep/util/ProtoTracer;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/ProtoTracer;->a:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;-><init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;)V

    iput-object p1, p0, Lcom/zui/quickstep/util/ProtoTracer;->b:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceProto;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/util/ProtoTracer;->b:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    return-void
.end method

.method public getEncapsulatingTraceProto()Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;
    .locals 0

    new-instance p0, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    invoke-direct {p0}, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getEncapsulatingTraceProto()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/util/ProtoTracer;->getEncapsulatingTraceProto()Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    move-result-object p0

    return-object p0
.end method

.method public getProtoBytes(Lcom/google/protobuf/nano/MessageNano;)[B
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getProtoBytes(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/ProtoTracer;->getProtoBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public getProtoSize(Lcom/google/protobuf/nano/MessageNano;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getProtoSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/ProtoTracer;->getProtoSize(Lcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    return p0
.end method

.method public getTraceFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/zui/quickstep/util/ProtoTracer;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "launcher_trace.pb"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceProto;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/util/ProtoTracer;->b:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    return-void
.end method

.method public scheduleFrameUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/ProtoTracer;->b:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->scheduleFrameUpdate()V

    return-void
.end method

.method public serializeEncapsulatingProto(Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;Ljava/util/Queue;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;",
            "Ljava/util/Queue<",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;",
            ">;)[B"
        }
    .end annotation

    const-wide v0, 0x4352545248434e4cL    # 2.063704782885509E16

    iput-wide v0, p1, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->magicNumber:J

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    invoke-interface {p2, p0}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    iput-object p0, p1, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;->entry:[Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serializeEncapsulatingProto(Ljava/lang/Object;Ljava/util/Queue;)[B
    .locals 0

    check-cast p1, Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/util/ProtoTracer;->serializeEncapsulatingProto(Lcom/zui/launcher/tracing/nano/LauncherTraceFileProto;Ljava/util/Queue;)[B

    move-result-object p0

    return-object p0
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/ProtoTracer;->b:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/ProtoTracer;->b:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->stop()V

    return-void
.end method

.method public update()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/ProtoTracer;->b:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->update()V

    return-void
.end method

.method public updateBufferProto(Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;Ljava/util/ArrayList;)Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceProto;",
            ">;>;)",
            "Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    invoke-direct {p1}, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;-><init>()V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;->elapsedRealtimeNanos:J

    iget-object p0, p1, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;->launcher:Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    invoke-direct {p0}, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;-><init>()V

    :goto_1
    iput-object p0, p1, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;->launcher:Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/tracing/ProtoTraceable;

    iget-object v0, p1, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;->launcher:Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    invoke-interface {p2, v0}, Lcom/android/systemui/shared/tracing/ProtoTraceable;->writeToProto(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method public bridge synthetic updateBufferProto(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/util/ProtoTracer;->updateBufferProto(Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;Ljava/util/ArrayList;)Lcom/zui/launcher/tracing/nano/LauncherTraceEntryProto;

    move-result-object p0

    return-object p0
.end method
