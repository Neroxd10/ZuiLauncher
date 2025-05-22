.class public final synthetic Lcom/zui/quickstep/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/quickstep/util/TransformParams$BuilderProxy;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/m;->a:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    return-void
.end method


# virtual methods
.method public final onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/m;->a:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    invoke-static {p0, p1, p2, p3}, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->a(Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V

    return-void
.end method
