.class public final synthetic Lcom/zui/quickstep/util/f0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic b:I

.field public final synthetic c:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/SurfaceTransactionApplier;I[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/f0;->a:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    iput p2, p0, Lcom/zui/quickstep/util/f0;->b:I

    iput-object p3, p0, Lcom/zui/quickstep/util/f0;->c:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/f0;->a:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    iget v1, p0, Lcom/zui/quickstep/util/f0;->b:I

    iget-object p0, p0, Lcom/zui/quickstep/util/f0;->c:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->a(I[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;J)V

    return-void
.end method
