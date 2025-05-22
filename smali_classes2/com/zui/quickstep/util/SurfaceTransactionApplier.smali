.class public Lcom/zui/quickstep/util/SurfaceTransactionApplier;
.super Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation


# instance fields
.field private final c:Landroid/view/SurfaceControl;

.field private final d:Lcom/android/systemui/shared/system/ViewRootImplCompat;

.field private final e:Landroid/os/Handler;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->f:I

    new-instance v0, Lcom/android/systemui/shared/system/ViewRootImplCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/system/ViewRootImplCompat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->d:Lcom/android/systemui/shared/system/ViewRootImplCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ViewRootImplCompat;->getRenderSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->c:Landroid/view/SurfaceControl;

    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/zui/quickstep/util/o0;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/util/o0;-><init>(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->e:Landroid/os/Handler;

    return-void
.end method

.method public static create(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/quickstep/util/SurfaceTransactionApplier;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/shared/system/ViewRootImplCompat;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/ViewRootImplCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ViewRootImplCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zui/quickstep/util/SurfaceTransactionApplier$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/quickstep/util/SurfaceTransactionApplier$a;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a(I[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;J)V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->c:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    aget-object v3, p2, v2

    iget-object v4, v3, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->applyTo(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->d:Lcom/android/systemui/shared/system/ViewRootImplCompat;

    invoke-virtual {p2, v0, p3, p4}, Lcom/android/systemui/shared/system/ViewRootImplCompat;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->e:Landroid/os/Handler;

    invoke-static {p0, v1, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onApplyMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v0, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->f:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;->setCanRelease(Z)V

    return v2

    :cond_1
    return v1
.end method

.method public varargs scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->d:Lcom/android/systemui/shared/system/ViewRootImplCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ViewRootImplCompat;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->f:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;->setCanRelease(Z)V

    iget-object v2, p0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->d:Lcom/android/systemui/shared/system/ViewRootImplCompat;

    new-instance v3, Lcom/zui/quickstep/util/f0;

    invoke-direct {v3, p0, v1, p1}, Lcom/zui/quickstep/util/f0;-><init>(Lcom/zui/quickstep/util/SurfaceTransactionApplier;I[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/ViewRootImplCompat;->registerRtFrameCallback(Ljava/util/function/LongConsumer;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
