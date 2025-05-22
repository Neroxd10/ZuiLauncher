.class public Lcom/zui/launcher/LauncherAnimationRunner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;,
        Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;
    }
.end annotation


# static fields
.field private static final e:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Z

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/q1;->a:Lcom/zui/launcher/q1;

    sput-object v0, Lcom/zui/launcher/LauncherAnimationRunner;->e:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/LauncherAnimationRunner;->a:Landroid/os/Handler;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zui/launcher/LauncherAnimationRunner;->c:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/zui/launcher/LauncherAnimationRunner;->b:Z

    return-void
.end method

.method private a()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/LauncherAnimationRunner;->d:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->a(Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherAnimationRunner;->d:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    :cond_0
    return-void
.end method

.method private b()Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAnimationRunner;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/LauncherAnimationRunner;->e:Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    :goto_0
    return-object p0
.end method

.method static synthetic f(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p4, p0, p0}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherAnimationRunner;->a()V

    invoke-direct {p0}, Lcom/zui/launcher/LauncherAnimationRunner;->b()Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;->onAnimationCancelled()V

    return-void
.end method

.method public synthetic d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherAnimationRunner;->d:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    return-void
.end method

.method public synthetic e(Ljava/lang/Runnable;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 9

    invoke-direct {p0}, Lcom/zui/launcher/LauncherAnimationRunner;->a()V

    new-instance v0, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    new-instance v1, Lcom/zui/launcher/r1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/r1;-><init>(Lcom/zui/launcher/LauncherAnimationRunner;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/zui/launcher/LauncherAnimationRunner$a;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherAnimationRunner;->d:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    invoke-direct {p0}, Lcom/zui/launcher/LauncherAnimationRunner;->b()Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v3

    iget-object v8, p0, Lcom/zui/launcher/LauncherAnimationRunner;->d:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v3 .. v8}, Lcom/zui/launcher/LauncherAnimationRunner$RemoteAnimationFactory;->onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public onAnimationCancelled()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/LauncherAnimationRunner;->a:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/o1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/o1;-><init>(Lcom/zui/launcher/LauncherAnimationRunner;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 8
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v7, Lcom/zui/launcher/n1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/n1;-><init>(Lcom/zui/launcher/LauncherAnimationRunner;Ljava/lang/Runnable;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    iget-boolean p1, p0, Lcom/zui/launcher/LauncherAnimationRunner;->b:Z

    iget-object p0, p0, Lcom/zui/launcher/LauncherAnimationRunner;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-static {p0, v7}, Lcom/android/systemui/shared/recents/utilities/Utilities;->postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v7}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onAnimationStart([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/launcher/LauncherAnimationRunner;->onAnimationStart([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 7
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    new-array v5, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/LauncherAnimationRunner;->onAnimationStart(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    return-void
.end method
