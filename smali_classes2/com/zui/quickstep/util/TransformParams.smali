.class public Lcom/zui/quickstep/util/TransformParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/util/TransformParams$BuilderProxy;
    }
.end annotation


# static fields
.field public static PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/util/TransformParams;",
            ">;"
        }
    .end annotation
.end field

.field public static TARGET_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/util/TransformParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

.field private e:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

.field private f:Landroid/view/SurfaceControl;

.field private g:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

.field private h:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/quickstep/util/TransformParams$a;

    const-string v1, "progress"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/util/TransformParams$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/util/TransformParams;->PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/zui/quickstep/util/TransformParams$b;

    const-string v1, "targetAlpha"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/util/TransformParams$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/util/TransformParams;->TARGET_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/quickstep/util/TransformParams$BuilderProxy;->ALWAYS_VISIBLE:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    iput-object v0, p0, Lcom/zui/quickstep/util/TransformParams;->g:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    iput-object v0, p0, Lcom/zui/quickstep/util/TransformParams;->h:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/util/TransformParams;->a:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/quickstep/util/TransformParams;->b:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/zui/quickstep/util/TransformParams;->c:F

    return-void
.end method

.method private static a(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)Landroid/view/SurfaceControl;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget v3, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->targetMode:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object p0, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/SurfaceControlCompat;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public varargs applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 3

    const-string v0, "Launcher"

    const-string v1, "applySurfaceParams-------------"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/quickstep/util/TransformParams;->e:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/system/TransactionCompat;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    :goto_1
    return-void
.end method

.method public createSurfaceParams(Lcom/zui/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    .locals 8

    iget-object v0, p0, Lcom/zui/quickstep/util/TransformParams;->d:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iget-object v1, v0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-static {v0}, Lcom/zui/quickstep/util/TransformParams;->a(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/quickstep/util/TransformParams;->f:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-object v3, v3, v2

    new-instance v4, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Lcom/android/systemui/shared/system/SurfaceControlCompat;)V

    iget v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget v6, v0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->targetMode:I

    if-ne v5, v6, :cond_2

    iget v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/zui/quickstep/util/TransformParams;->g:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    goto :goto_2

    :cond_0
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    iget-boolean v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TransformParams;->getProgress()F

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v5

    sget-object v6, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    sub-float/2addr v7, v5

    invoke-virtual {v4, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/zui/quickstep/util/TransformParams;->getTargetAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    :goto_1
    invoke-interface {p1, v4, v3, p0}, Lcom/zui/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/zui/quickstep/util/TransformParams;->h:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    :goto_2
    invoke-interface {v5, v4, v3, p0}, Lcom/zui/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V

    :goto_3
    invoke-virtual {v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/TransformParams;->c:F

    return p0
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/TransformParams;->a:F

    return p0
.end method

.method public getRecentsSurface()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/TransformParams;->f:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getTargetAlpha()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/TransformParams;->b:F

    return p0
.end method

.method public getTargetSet()Lcom/zui/quickstep/util/RemoteAnimationTargetSet;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/TransformParams;->d:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    return-object p0
.end method

.method public setBaseBuilderProxy(Lcom/zui/quickstep/util/TransformParams$BuilderProxy;)Lcom/zui/quickstep/util/TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/TransformParams;->h:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    return-object p0
.end method

.method public setCornerRadius(F)Lcom/zui/quickstep/util/TransformParams;
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/TransformParams;->c:F

    return-object p0
.end method

.method public setHomeBuilderProxy(Lcom/zui/quickstep/util/TransformParams$BuilderProxy;)Lcom/zui/quickstep/util/TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/TransformParams;->g:Lcom/zui/quickstep/util/TransformParams$BuilderProxy;

    return-object p0
.end method

.method public setProgress(F)Lcom/zui/quickstep/util/TransformParams;
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/TransformParams;->a:F

    return-object p0
.end method

.method public setSyncTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)Lcom/zui/quickstep/util/TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/TransformParams;->e:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    return-object p0
.end method

.method public setTargetAlpha(F)Lcom/zui/quickstep/util/TransformParams;
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/TransformParams;->b:F

    return-object p0
.end method

.method public setTargetSet(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)Lcom/zui/quickstep/util/TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/TransformParams;->d:Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    return-object p0
.end method
