.class public Lcom/zui/quickstep/RecentTasksList;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/RecentTasksList$b;
    }
.end annotation


# static fields
.field private static final g:Lcom/zui/quickstep/RecentTasksList$b;


# instance fields
.field private final a:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

.field private final b:Lcom/zui/launcher/util/LooperExecutor;

.field private final c:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private d:I

.field private e:Lcom/zui/quickstep/RecentTasksList$b;

.field private f:Lcom/zui/quickstep/RecentTasksList$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/quickstep/RecentTasksList$b;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/zui/quickstep/RecentTasksList$b;-><init>(IZI)V

    sput-object v0, Lcom/zui/quickstep/RecentTasksList;->g:Lcom/zui/quickstep/RecentTasksList$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    sget-object p1, Lcom/zui/quickstep/RecentTasksList;->g:Lcom/zui/quickstep/RecentTasksList$b;

    iput-object p1, p0, Lcom/zui/quickstep/RecentTasksList;->e:Lcom/zui/quickstep/RecentTasksList$b;

    iput-object p1, p0, Lcom/zui/quickstep/RecentTasksList;->f:Lcom/zui/quickstep/RecentTasksList$b;

    iput-object p2, p0, Lcom/zui/quickstep/RecentTasksList;->b:Lcom/zui/launcher/util/LooperExecutor;

    iput-object p3, p0, Lcom/zui/quickstep/RecentTasksList;->a:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/quickstep/RecentTasksList;->d:I

    iput-object p4, p0, Lcom/zui/quickstep/RecentTasksList;->c:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {p4, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/RecentTasksList;)Lcom/android/systemui/shared/system/KeyguardManagerCompat;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentTasksList;->a:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    return-object p0
.end method

.method private b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    new-instance v10, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iget v5, v1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iget-boolean v6, v1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iget-boolean v7, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iget-object v8, v1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v9, v1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isResizeable:Z

    iput-boolean v1, v10, Lcom/android/systemui/shared/recents/model/Task;->isResizeable:Z

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static synthetic d(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private k(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->isOnHdmiDevice(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr p0, v1

    if-ge v2, p0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/j0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/j0;-><init>(Lcom/zui/quickstep/RecentTasksList;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/zui/quickstep/RecentTasksList;->g:Lcom/zui/quickstep/RecentTasksList$b;

    iput-object v0, p0, Lcom/zui/quickstep/RecentTasksList;->f:Lcom/zui/quickstep/RecentTasksList$b;

    iget v0, p0, Lcom/zui/quickstep/RecentTasksList;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/quickstep/RecentTasksList;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic e(ILjava/util/function/Consumer;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/quickstep/RecentTasksList;->j(IIZ)Lcom/zui/quickstep/RecentTasksList$b;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/quickstep/RecentTasksList;->b:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/quickstep/h0;

    invoke-direct {v0, p2, p1}, Lcom/zui/quickstep/h0;-><init>(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic g(Lcom/zui/quickstep/RecentTasksList$b;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentTasksList;->f:Lcom/zui/quickstep/RecentTasksList$b;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/RecentTasksList;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getTaskKeys(ILjava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/m0;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/quickstep/m0;-><init>(Lcom/zui/quickstep/RecentTasksList;ILjava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized getTasks(ZLjava/util/function/Consumer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;>;)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/zui/quickstep/RecentTasksList;->d:I

    iget-object v1, p0, Lcom/zui/quickstep/RecentTasksList;->f:Lcom/zui/quickstep/RecentTasksList$b;

    invoke-virtual {v1, v0, p1}, Lcom/zui/quickstep/RecentTasksList$b;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/RecentTasksList;->f:Lcom/zui/quickstep/RecentTasksList$b;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/RecentTasksList;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/quickstep/RecentTasksList;->b:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/quickstep/i0;

    invoke-direct {v2, p2, p1}, Lcom/zui/quickstep/i0;-><init>(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/LooperExecutor;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/quickstep/l0;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/zui/quickstep/l0;-><init>(Lcom/zui/quickstep/RecentTasksList;IZLjava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic h(IZLjava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/RecentTasksList;->e:Lcom/zui/quickstep/RecentTasksList$b;

    invoke-virtual {v0, p1, p2}, Lcom/zui/quickstep/RecentTasksList$b;->a(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/zui/quickstep/RecentTasksList;->j(IIZ)Lcom/zui/quickstep/RecentTasksList$b;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/RecentTasksList;->e:Lcom/zui/quickstep/RecentTasksList$b;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/RecentTasksList;->k(Ljava/util/ArrayList;)V

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/RecentTasksList;->e:Lcom/zui/quickstep/RecentTasksList$b;

    iget-object p2, p0, Lcom/zui/quickstep/RecentTasksList;->b:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/quickstep/k0;

    invoke-direct {v0, p0, p1, p3}, Lcom/zui/quickstep/k0;-><init>(Lcom/zui/quickstep/RecentTasksList;Lcom/zui/quickstep/RecentTasksList$b;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic i()V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/RecentTasksList;->g:Lcom/zui/quickstep/RecentTasksList$b;

    iput-object v0, p0, Lcom/zui/quickstep/RecentTasksList;->e:Lcom/zui/quickstep/RecentTasksList$b;

    return-void
.end method

.method public isDeviceLocked(I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentTasksList;->a:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/KeyguardManagerCompat;->isDeviceLocked(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isTaskListValid(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/zui/quickstep/RecentTasksList;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method j(IIZ)Lcom/zui/quickstep/RecentTasksList$b;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/RecentTasksList;->c:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v1, Lcom/zui/quickstep/RecentTasksList$a;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/RecentTasksList$a;-><init>(Lcom/zui/quickstep/RecentTasksList;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTasksInBackground, numTasks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", taskCount : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentTasksList"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/zui/quickstep/RecentTasksList$b;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p2, p3, v2}, Lcom/zui/quickstep/RecentTasksList$b;-><init>(IZI)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rawTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isPackageDuplicated(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore rawTask because duplicate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    iget v3, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v3}, Lcom/zui/quickstep/RecentTasksList$a;->get(I)Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v3, v2}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    move-object v2, v3

    :goto_1
    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isResizeable:Z

    iput-boolean v0, v2, Lcom/android/systemui/shared/recents/model/Task;->isResizeable:Z

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->c()V

    return-void
.end method

.method public declared-synchronized onActivityUnpinned()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMultiWindowModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->c()V

    return-void
.end method

.method public onRecentTaskListUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->c()V

    return-void
.end method

.method public onTaskDisplayedIdChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->c()V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->c()V

    return-void
.end method

.method public onTaskRemovedInternal()V
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/RecentTasksList;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/quickstep/RecentTasksList;->d:I

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->c()V

    return-void
.end method
