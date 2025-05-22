.class public abstract Lcom/zui/quickstep/util/RemoteAnimationProvider;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLowestOpaqueLayerTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 6

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const v2, 0x7fffffff

    move v3, v1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v4, p0, v0

    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v5, p1, :cond_0

    iget-boolean v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-nez v5, :cond_0

    iget v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    if-ge v4, v2, :cond_0

    move v3, v0

    move v2, v4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eq v3, v1, :cond_2

    aget-object p0, p0, v3

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcom/zui/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p6, p0, p1}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void
.end method

.method public abstract createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end method

.method public toActivityOptions(Landroid/os/Handler;JLandroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 8

    new-instance v0, Lcom/zui/quickstep/util/b0;

    invoke-direct {v0, p0, p4}, Lcom/zui/quickstep/util/b0;-><init>(Lcom/zui/quickstep/util/RemoteAnimationProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/quickstep/util/RemoteAnimationProvider;->a:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance v2, Lcom/zui/launcher/LauncherAnimationRunner;

    iget-object p0, p0, Lcom/zui/quickstep/util/RemoteAnimationProvider;->a:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 p4, 0x0

    invoke-direct {v2, p1, p0, p4}, Lcom/zui/launcher/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    new-instance p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v7

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V

    invoke-static {p0}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method
