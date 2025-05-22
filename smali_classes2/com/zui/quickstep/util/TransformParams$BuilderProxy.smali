.class public interface abstract Lcom/zui/quickstep/util/TransformParams$BuilderProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/TransformParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BuilderProxy"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final ALWAYS_VISIBLE:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

.field public static final NO_OP:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/util/m0;->a:Lcom/zui/quickstep/util/m0;

    sput-object v0, Lcom/zui/quickstep/util/TransformParams$BuilderProxy;->NO_OP:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    sget-object v0, Lcom/zui/quickstep/util/n0;->a:Lcom/zui/quickstep/util/n0;

    sput-object v0, Lcom/zui/quickstep/util/TransformParams$BuilderProxy;->ALWAYS_VISIBLE:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 0

    return-void
.end method

.method public static synthetic b(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    return-void
.end method


# virtual methods
.method public abstract onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
.end method
