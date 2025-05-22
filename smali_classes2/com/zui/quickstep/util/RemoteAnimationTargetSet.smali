.class public Lcom/zui/quickstep/util/RemoteAnimationTargetSet;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zui/quickstep/util/SurfaceTransactionApplier;",
            ">;"
        }
    .end annotation
.end field

.field public final apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;",
            ">;"
        }
    .end annotation
.end field

.field public final hasRecents:Z

.field public final targetMode:I

.field public final unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    array-length v3, p1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, p1, v4

    iget v7, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v7, p3, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v6, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    :cond_3
    iput-object p1, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p1, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput p3, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->targetMode:I

    iput-boolean v2, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->hasRecents:Z

    return-void
.end method


# virtual methods
.method public addDependentTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object p0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->a:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReleaseCheck(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 4

    iget-object p0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstAppTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFirstAppTargetTaskId()I
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->getFirstAppTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    :goto_0
    return p0
.end method

.method public getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnimatingHome()Z
    .locals 5

    iget-object p0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    iget v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public release()V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->release()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->a:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void
.end method
