.class Lcom/android/systemui/shared/system/ViewRootImplCompat$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/ViewRootImplCompat;->registerRtFrameCallback(Ljava/util/function/LongConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/function/LongConsumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/ViewRootImplCompat;Ljava/util/function/LongConsumer;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/shared/system/ViewRootImplCompat$a;->a:Ljava/util/function/LongConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDraw(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/ViewRootImplCompat$a;->a:Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method
