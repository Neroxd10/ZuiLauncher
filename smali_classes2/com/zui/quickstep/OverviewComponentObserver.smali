.class public final Lcom/zui/quickstep/OverviewComponentObserver;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/content/BroadcastReceiver;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

.field private final e:Landroid/content/Intent;

.field private final f:Landroid/content/Intent;

.field private final g:Landroid/content/Intent;

.field private final h:Landroid/util/SparseIntArray;

.field private i:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/content/ComponentName;

.field private k:Ljava/lang/String;

.field private l:Lcom/zui/quickstep/ActivityControlHelper;

.field private m:Landroid/content/Intent;

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/quickstep/OverviewComponentObserver$a;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/OverviewComponentObserver$a;-><init>(Lcom/zui/quickstep/OverviewComponentObserver;)V

    iput-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/zui/quickstep/OverviewComponentObserver$b;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/OverviewComponentObserver$b;-><init>(Lcom/zui/quickstep/OverviewComponentObserver;)V

    iput-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->h:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/zui/quickstep/c0;->a:Lcom/zui/quickstep/c0;

    iput-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->i:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->e:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->f:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->f:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->j:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/zui/quickstep/OverviewComponentObserver;->f:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->h:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/zui/quickstep/OverviewComponentObserver;->j:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->hashCode()I

    move-result v4

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {v2, v4, p2}, Landroid/util/SparseIntArray;->append(II)V

    new-instance p2, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->c:Landroid/content/Context;

    const-class v4, Lcom/zui/quickstep/RecentsActivity;

    invoke-direct {p2, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->g:Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->g:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->h:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/content/ComponentName;->hashCode()I

    move-result p2

    iget p1, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->c:Landroid/content/Context;

    iget-object p2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/zui/quickstep/OverviewComponentObserver;->f()V

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/OverviewComponentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/OverviewComponentObserver;->f()V

    return-void
.end method

.method static synthetic d(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6

    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isHomeDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->p:Z

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->f:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->o:Z

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->l:Lcom/zui/quickstep/ActivityControlHelper;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/zui/quickstep/ActivityControlHelper;->onAssistantVisibilityChanged(F)V

    :cond_0
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->o:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/zui/quickstep/FallbackActivityControllerHelper;

    invoke-direct {v1}, Lcom/zui/quickstep/FallbackActivityControllerHelper;-><init>()V

    iput-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->l:Lcom/zui/quickstep/ActivityControlHelper;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->n:Z

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->g:Landroid/content/Intent;

    iput-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->m:Landroid/content/Intent;

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->e:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/zui/quickstep/OverviewComponentObserver;->e()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->b:Landroid/content/BroadcastReceiver;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zui/launcher/util/PackageManagerHelper;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    :goto_0
    new-instance v0, Lcom/zui/quickstep/LauncherActivityControllerHelper;

    invoke-direct {v0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->l:Lcom/zui/quickstep/ActivityControlHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->n:Z

    iget-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->f:Landroid/content/Intent;

    iput-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->m:Landroid/content/Intent;

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->e:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1
    invoke-direct {p0}, Lcom/zui/quickstep/OverviewComponentObserver;->e()V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->i:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->n:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public assistantGestureIsConstrained()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method b(Landroid/content/ComponentName;I)Z
    .locals 3

    and-int/lit16 v0, p2, 0x480

    const/4 v1, 0x1

    const/16 v2, 0x480

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->h:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eqz p0, :cond_1

    not-int p0, p0

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method c()Landroid/content/Intent;
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->o:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->f:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->m:Landroid/content/Intent;

    :goto_0
    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "OverviewComponentObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isDefaultHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isHomeDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  homeAndOverviewSame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  overviewIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->m:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  homeIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->e:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->l:Lcom/zui/quickstep/ActivityControlHelper;

    return-object p0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->e:Landroid/content/Intent;

    return-object p0
.end method

.method public getOverviewIntent()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getNewHomeComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->m:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.zui.quickstep.RecentsActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zui/quickstep/OverviewComponentObserver;->m:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOverviewIntent: ------------setNewComponent from launcher. old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverviewComponentObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->m:Landroid/content/Intent;

    return-object p0
.end method

.method public isHomeAndOverviewSame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->n:Z

    return p0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/zui/quickstep/OverviewComponentObserver;->e()V

    return-void
.end method

.method public onSystemUiStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/OverviewComponentObserver;->d:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isHomeDisabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->p:Z

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/OverviewComponentObserver;->f()V

    :cond_0
    return-void
.end method

.method public setOverviewChangeListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/quickstep/OverviewComponentObserver;->i:Ljava/util/function/Consumer;

    return-void
.end method
