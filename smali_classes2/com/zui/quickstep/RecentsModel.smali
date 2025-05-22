.class public Lcom/zui/quickstep/RecentsModel;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/quickstep/RecentsModel;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Z


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/zui/quickstep/RecentTasksList;

.field private final d:Lcom/zui/quickstep/TaskIconCache;

.field private final e:Lcom/zui/quickstep/TaskThumbnailCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/quickstep/y0;->a:Lcom/zui/quickstep/y0;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsModel;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/zui/quickstep/RecentsModel;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TaskThumbnailIconCache"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/zui/quickstep/RecentTasksList;

    sget-object v2, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v3, Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    invoke-direct {v3, p1}, Lcom/android/systemui/shared/system/KeyguardManagerCompat;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/zui/quickstep/RecentTasksList;-><init>(Landroid/content/Context;Lcom/zui/launcher/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V

    iput-object v1, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    new-instance v1, Lcom/zui/quickstep/TaskIconCache;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/zui/quickstep/TaskIconCache;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/zui/quickstep/RecentsModel;->d:Lcom/zui/quickstep/TaskIconCache;

    new-instance v1, Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/zui/quickstep/TaskThumbnailCache;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method static synthetic a(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v1, p0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Lcom/zui/quickstep/RecentsModel;
    .locals 1

    new-instance v0, Lcom/zui/quickstep/RecentsModel;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/RecentsModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic e(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTaskKey, task.packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.MultiDisplay"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTaskKey, task.key.stackid : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_3

    iget p0, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p2}, Lcom/zui/quickstep/views/TaskView;->updateDpView()Z

    :cond_4
    return-void
.end method

.method public static getRunningTaskId()I
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.zui.launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/zui/quickstep/RecentsModel;->f:Z

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public static runningTaskIsLauncher()Z
    .locals 1

    sget-boolean v0, Lcom/zui/quickstep/RecentsModel;->f:Z

    return v0
.end method


# virtual methods
.method public addThumbnailChangeListener(Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic b(ILjava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/TaskThumbnailCache;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic d(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsModel;->getIconCache()Lcom/zui/quickstep/TaskIconCache;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/TaskIconCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public findTaskWithId(ILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    new-instance v0, Lcom/zui/quickstep/x0;

    invoke-direct {v0, p1, p2}, Lcom/zui/quickstep/x0;-><init>(ILjava/util/function/Consumer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;)I

    return-void
.end method

.method public getIconCache()Lcom/zui/quickstep/TaskIconCache;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->d:Lcom/zui/quickstep/TaskIconCache;

    return-object p0
.end method

.method public getTasks(Ljava/util/function/Consumer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;>;)I"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/RecentsModel;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getLockedPackageNames(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public getTasksIgnoreLock(Ljava/util/function/Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;>;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public getThumbnailCache()Lcom/zui/quickstep/TaskThumbnailCache;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    return-object p0
.end method

.method public isDeviceLocked(I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/RecentTasksList;->isDeviceLocked(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTaskListValid(I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/RecentTasksList;->isTaskListValid(I)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->onMultiWindowModeChanged()V

    :cond_0
    return-void
.end method

.method public onTaskDisplayedIdChanged()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->onTaskDisplayedIdChanged()V

    :cond_0
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 10

    new-instance v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJI)V

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {p0, v9}, Lcom/zui/quickstep/TaskThumbnailCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method

.method public onTaskRemovedInternal()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->onTaskRemovedInternal()V

    :cond_0
    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {v0, p1, p2}, Lcom/zui/quickstep/TaskThumbnailCache;->updateTaskSnapShot(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsModel;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/zui/quickstep/RecentsModel;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;->onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object p2, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0, v1, p2}, Lcom/zui/quickstep/RecentsModel;->reloadIfFingerLock(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {v0}, Lcom/zui/quickstep/TaskThumbnailCache;->isPreloadingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/RecentsModel;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/zui/quickstep/TaskUtils;->checkCurrentOrManagedUserId(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/zui/quickstep/RecentsModel;->getRunningTaskId()I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    iget-object v2, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {v2}, Lcom/zui/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v2

    new-instance v3, Lcom/zui/quickstep/w0;

    invoke-direct {v3, p0, v0}, Lcom/zui/quickstep/w0;-><init>(Lcom/zui/quickstep/RecentsModel;I)V

    invoke-virtual {v1, v2, v3}, Lcom/zui/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskStackChangedInternal()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->c()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {v0}, Lcom/zui/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    :cond_0
    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {p1}, Lcom/zui/quickstep/TaskThumbnailCache;->clear()V

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->d:Lcom/zui/quickstep/TaskIconCache;

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskIconCache;->clear()V

    :cond_1
    return-void
.end method

.method public reloadIfFingerLock(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsModel;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/UtilitiesZui;->appLockEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/RecentsModel;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/shared/recents/utilities/UtilitiesZui;->isAppFpLock(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isFingerprintLockApp:Z

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isFingerprintLockApp:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/TaskThumbnailCache;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_1
    return-void
.end method

.method public removeThumbnailChangeListener(Lcom/zui/quickstep/RecentsModel$TaskThumbnailChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updatePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    new-instance v1, Lcom/zui/quickstep/z0;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/quickstep/z0;-><init>(Lcom/zui/quickstep/RecentsModel;Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/zui/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;)I

    return-void
.end method

.method public updateTaskKey(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/quickstep/views/TaskView;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Lcom/zui/quickstep/views/TaskView;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentTasksList;->onTaskDisplayedIdChanged()V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsModel;->c:Lcom/zui/quickstep/RecentTasksList;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsModel;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result p0

    new-instance v1, Lcom/zui/quickstep/v0;

    invoke-direct {v1, p1, p3, p2}, Lcom/zui/quickstep/v0;-><init>(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/zui/quickstep/views/TaskView;)V

    invoke-virtual {v0, p0, v1}, Lcom/zui/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    return-void
.end method
