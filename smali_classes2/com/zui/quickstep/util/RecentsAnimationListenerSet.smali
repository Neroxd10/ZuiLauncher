.class public Lcom/zui/quickstep/util/RecentsAnimationListenerSet;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/RecentsAnimationListener;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/zui/quickstep/util/SwipeAnimationTargetSet;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Z


# direct methods
.method public constructor <init>(ZLjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/quickstep/util/SwipeAnimationTargetSet;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->a:Ljava/util/Set;

    iput-boolean p1, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->b:Z

    iput-object p2, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->c:Ljava/util/function/Consumer;

    return-void
.end method

.method private a()[Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->a:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic b(Ljava/util/HashMap;)V
    .locals 3

    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->a()[Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;->onRecentsAnimationCanceled(Ljava/util/HashMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic c(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V
    .locals 3

    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->a()[Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;->onRecentsAnimationStart(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelListener()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->g:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->onAnimationCanceled(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic d([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 10

    new-instance v8, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-object v1, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->d:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v9, 0x0

    new-array v3, v9, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->f:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->e:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->b:Z

    iget-object v7, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->c:Ljava/util/function/Consumer;

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;-><init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->a()[Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;

    move-result-object p0

    :goto_0
    array-length p1, p0

    if-ge v9, p1, :cond_0

    aget-object p1, p0, v9

    invoke-interface {p1, v8}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;->onTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->d:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    return-object p0
.end method

.method public notifyAnimationCanceled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->g:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->onAnimationCanceled(Ljava/util/HashMap;)V

    return-void
.end method

.method public final onAnimationCanceled(Ljava/util/HashMap;)V
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RAL-onAnimationCanceled---ThumbnailData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RAL-cancel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/util/u;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/util/u;-><init>(Lcom/zui/quickstep/util/RecentsAnimationListenerSet;Ljava/util/HashMap;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RAL-onAnimationStart---controller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCancelled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RAL-:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->d:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iput-object p5, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->e:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->f:Landroid/graphics/Rect;

    new-instance v0, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;

    iget-boolean v8, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->b:Z

    iget-object v9, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->c:Ljava/util/function/Consumer;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;-><init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    iget-boolean p1, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->g:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/SwipeAnimationTargetSet;->cancelAnimation()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/zui/quickstep/util/v;

    invoke-direct {p2, p0, v0}, Lcom/zui/quickstep/util/v;-><init>(Lcom/zui/quickstep/util/RecentsAnimationListenerSet;Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)V

    invoke-static {p1, p2}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/util/w;

    invoke-direct {v1, p0, p1}, Lcom/zui/quickstep/util/w;-><init>(Lcom/zui/quickstep/util/RecentsAnimationListenerSet;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAllListeners()V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->a:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeListener(Lcom/zui/quickstep/util/SwipeAnimationTargetSet$SwipeAnimationListener;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsAnimationListenerSet;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
