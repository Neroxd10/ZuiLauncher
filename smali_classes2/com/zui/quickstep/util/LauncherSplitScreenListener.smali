.class public Lcom/zui/quickstep/util/LauncherSplitScreenListener;
.super Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;
.source ""


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/quickstep/util/LauncherSplitScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:[I


# instance fields
.field private final a:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

.field private final b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

.field private c:Z

.field private final d:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/quickstep/util/d;->a:Lcom/zui/quickstep/util/d;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;-><init>()V

    new-instance p1, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    invoke-direct {p1}, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->a:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    new-instance p1, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    invoke-direct {p1}, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->c:Z

    new-instance v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener$a;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/util/LauncherSplitScreenListener$a;-><init>(Lcom/zui/quickstep/util/LauncherSplitScreenListener;)V

    iput-object v0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->d:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->a:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iput p1, v0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stageType:I

    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stageType:I

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/util/LauncherSplitScreenListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/zui/quickstep/util/LauncherSplitScreenListener;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->e:[I

    return-object p1
.end method

.method static synthetic g()[I
    .locals 1

    sget-object v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->f:[I

    return-object v0
.end method

.method private h(Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V
    .locals 0

    const/4 p0, -0x1

    iput p0, p1, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public destroy()V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/SystemUiProxy;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->d:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public getPersistentSplitIds()[I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->e:[I

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->getRunningSplitTaskIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getRunningSplitTaskIds()[I
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->a:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v1, v0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget p0, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v0, v0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    const/4 v4, 0x1

    if-nez v0, :cond_1

    aput v1, v2, v3

    aput p0, v2, v4

    goto :goto_0

    :cond_1
    aput v1, v2, v4

    aput p0, v2, v3

    :goto_0
    return-object v2

    :cond_2
    :goto_1
    new-array p0, v3, [I

    return-object p0
.end method

.method public init()V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/SystemUiProxy;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->d:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public notifySwipingToHome()V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->getPersistentSplitIds()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->f:[I

    iput-object v0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->e:[I

    return-void
.end method

.method public onStagePositionChanged(II)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/zui/launcher/util/SplitConfigurationOptions$StageType;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->a:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    :goto_0
    iput p2, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 0
    .param p2    # I
        .annotation build Lcom/zui/launcher/util/SplitConfigurationOptions$StageType;
        .end annotation
    .end param

    if-nez p3, :cond_2

    iget-object p2, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->a:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget p3, p2, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p3, p1, :cond_0

    :goto_0
    invoke-direct {p0, p2}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->h(Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget p3, p2, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p3, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 p3, -0x1

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->a:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget p3, p2, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p1, p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    :goto_2
    invoke-direct {p0, p2}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->h(Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V

    return-void

    :cond_4
    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->a:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    :goto_3
    iput p1, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    return-void
.end method
