.class Lcom/android/systemui/shared/tracing/FrameProtoTracer$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/tracing/FrameProtoTracer;-><init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/systemui/shared/tracing/FrameProtoTracer;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer$b;->a:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer$b;->a:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->b(Lcom/android/systemui/shared/tracing/FrameProtoTracer;Ljava/lang/Object;)V

    return-void
.end method
