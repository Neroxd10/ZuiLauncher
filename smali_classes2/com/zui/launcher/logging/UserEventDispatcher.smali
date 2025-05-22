.class public Lcom/zui/launcher/logging/UserEventDispatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;
    }
.end annotation


# static fields
.field private static final h:Z = false


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;

.field protected mInstantAppResolver:Lcom/zui/launcher/util/InstantAppResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Landroid/content/ComponentName;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->componentHash:I

    :cond_0
    return-void
.end method

.method private static b([Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "child:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/zui/launcher/logging/LoggerUtils;->getTargetStr(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\tparent:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p0, v1

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->getTargetStr(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fillInLogContainerData(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/zui/launcher/logging/StatsLogUtils;->getLaunchProviderRecursive(Landroid/view/View;)Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/ItemInfo;

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object v1, p0, v1

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-interface {v0, p1, v2, v1, p0}, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/zui/launcher/logging/UserEventDispatcher;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;)Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;)Lcom/zui/launcher/logging/UserEventDispatcher;
    .locals 4

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uuid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-class v0, Lcom/zui/launcher/logging/UserEventDispatcher;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1206d9

    invoke-static {v0, v1, v3}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/logging/UserEventDispatcher;

    iput-object p1, v0, Lcom/zui/launcher/logging/UserEventDispatcher;->g:Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;

    iput-object v2, v0, Lcom/zui/launcher/logging/UserEventDispatcher;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/launcher/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/util/InstantAppResolver;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/launcher/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/zui/launcher/util/InstantAppResolver;

    return-object v0
.end method


# virtual methods
.method public dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V
    .locals 4

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->f:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    sget-boolean p0, Lcom/zui/launcher/logging/UserEventDispatcher;->h:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n-----------------------------------------------------\naction:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->getActionStr(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n Source "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {p0}, Lcom/zui/launcher/logging/UserEventDispatcher;->b([Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    iget-object v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n Destination "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {p0}, Lcom/zui/launcher/logging/UserEventDispatcher;->b([Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x1

    iget-wide v2, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x2

    iget-wide v2, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "\n Elapsed container %d ms, session %d ms, action %d ms"

    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserEvent"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected fillIntentInfo(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->intentHash:I

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->a(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Landroid/content/ComponentName;)V

    return-void
.end method

.method public logActionBack(ZIIZZI)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/zui/launcher/logging/LoggerUtils;->newCommandAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->command:I

    if-eqz p4, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    :goto_1
    iput v0, v2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    if-eqz p4, :cond_3

    const/16 p4, 0xb

    goto :goto_2

    :cond_3
    const/16 p4, 0x13

    :goto_2
    invoke-static {p4}, Lcom/zui/launcher/logging/LoggerUtils;->newControlTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p4

    iput p2, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanX:I

    iput p3, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanY:I

    iput p1, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->cardinality:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aput-object p4, p1, v1

    invoke-static {p6}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v2, p1}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logActionBounceTip(I)V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    iget-object v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->tipType:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logActionCommand(III)V
    .locals 0

    invoke-static {p2}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p2

    if-ltz p3, :cond_0

    invoke-static {p3}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(ILcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    return-void
.end method

.method public logActionCommand(ILandroid/view/View;I)V
    .locals 5

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newCommandAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iget-object v1, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/zui/launcher/util/InstantAppResolver;

    invoke-static {p2, v1}, Lcom/zui/launcher/logging/LoggerUtils;->newItemTarget(Landroid/view/View;Lcom/zui/launcher/util/InstantAppResolver;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {p1, v0}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object v0, p2, v2

    iput v1, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    aget-object p2, p2, v2

    iput p3, p2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logActionCommand(ILcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(ILcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    return-void
.end method

.method public logActionCommand(ILcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 4

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newCommandAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->f:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->a:Z

    if-nez p1, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->a:Z

    return-void

    :cond_1
    if-eqz p3, :cond_2

    new-array p1, v1, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iput-object p1, p2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aput-object p3, p1, v3

    iget-object p1, p2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    iput-boolean v1, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logActionOnContainer(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    return-void
.end method

.method public logActionOnContainer(IIII)V
    .locals 2

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {p3}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    iget-object p3, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    iput p2, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    iget-object p2, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v1

    iput p4, p2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logActionOnControl(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;I)V

    return-void
.end method

.method public logActionOnControl(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;I)V

    return-void
.end method

.method public logActionOnControl(IIII)V
    .locals 2

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {p2}, Lcom/zui/launcher/logging/LoggerUtils;->newControlTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    invoke-static {p4}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    invoke-static {p1, v0}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logActionOnControl(IILandroid/view/View;)V
    .locals 1
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;I)V

    return-void
.end method

.method public logActionOnControl(IILandroid/view/View;I)V
    .locals 6
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p3, :cond_0

    if-gez p4, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v3

    new-array v4, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {v2}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v3

    new-array v4, v2, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {v2}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v3

    :goto_0
    iget-object v4, v3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v4, v1

    iput p2, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    if-eqz p3, :cond_1

    invoke-static {v3, p3}, Lcom/zui/launcher/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    :cond_1
    if-ltz p4, :cond_2

    iget-object p2, v3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v0

    iput p4, p2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    :cond_2
    if-ne p1, v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->d:J

    sub-long/2addr p1, p3

    iput-wide p1, v3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logActionOnItem(III)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    iput p3, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    new-array p3, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    const/4 v0, 0x0

    aput-object v1, p3, v0

    invoke-static {p1, p3}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    iget-object p3, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    iput p2, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logActionTapOutside(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    iget-object v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    iput-boolean v2, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logActionTip(II)V
    .locals 0

    return-void
.end method

.method public logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iget-object v3, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/zui/launcher/util/InstantAppResolver;

    invoke-static {p1, v3}, Lcom/zui/launcher/logging/LoggerUtils;->newItemTarget(Landroid/view/View;Lcom/zui/launcher/util/InstantAppResolver;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->g:Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;->modifyUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;)V

    :cond_0
    iget-object p1, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->fillIntentInfo(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->f:Z

    return-void
.end method

.method public logDeepShortcutsOpen(Landroid/view/View;)V
    .locals 7

    invoke-static {p1}, Lcom/zui/launcher/logging/StatsLogUtils;->getLaunchProviderRecursive(Landroid/view/View;)Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/ItemInfo;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iget-object v5, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/zui/launcher/util/InstantAppResolver;

    invoke-static {v1, v5}, Lcom/zui/launcher/logging/LoggerUtils;->newItemTarget(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/util/InstantAppResolver;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v3

    if-eqz v0, :cond_1

    iget-object v4, v3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object v5, v4, v6

    aget-object v2, v4, v2

    invoke-interface {v0, p1, v1, v5, v2}, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    const-string p1, "deep shortcut open"

    invoke-virtual {p0, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->resetElapsedContainerMillis(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public logDragNDrop(Lcom/zui/launcher/DropTarget$DragObject;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    new-array v2, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iget-object v3, p1, Lcom/zui/launcher/DropTarget$DragObject;->originalDragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v4, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/zui/launcher/util/InstantAppResolver;

    invoke-static {v3, v4}, Lcom/zui/launcher/logging/LoggerUtils;->newItemTarget(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/util/InstantAppResolver;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    new-array v0, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iget-object v2, p1, Lcom/zui/launcher/DropTarget$DragObject;->originalDragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v3, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/zui/launcher/util/InstantAppResolver;

    invoke-static {v2, v3}, Lcom/zui/launcher/logging/LoggerUtils;->newItemTarget(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/util/InstantAppResolver;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {p2}, Lcom/zui/launcher/logging/LoggerUtils;->newDropTarget(Landroid/view/View;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v0, v5

    iput-object v0, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    iget-object v2, p1, Lcom/zui/launcher/DropTarget$DragObject;->originalDragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v3, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object v6, v3, v4

    aget-object v3, v3, v5

    const/4 v7, 0x0

    invoke-interface {v0, v7, v2, v6, v3}, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    instance-of v0, p2, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v0, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v0, v4

    aget-object v0, v0, v5

    invoke-interface {p2, v7, p1, v2, v0}, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->d:J

    sub-long/2addr p1, v2

    iput-wide p1, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    invoke-virtual {p0, v1, v7}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logNotificationLaunch(Landroid/view/View;Landroid/app/PendingIntent;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iget-object v3, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->mInstantAppResolver:Lcom/zui/launcher/util/InstantAppResolver;

    invoke-static {p1, v3}, Lcom/zui/launcher/logging/LoggerUtils;->newItemTarget(Landroid/view/View;Lcom/zui/launcher/util/InstantAppResolver;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    iput p2, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    return-void
.end method

.method public logStateChangeAction(IIIIIIII)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    new-array v0, v0, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-ne p5, v3, :cond_0

    invoke-static {p5}, Lcom/zui/launcher/logging/LoggerUtils;->newItemTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p5

    aput-object p5, v0, v2

    invoke-static {p6}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p5

    aput-object p5, v0, v1

    invoke-static {p1, v0}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p5

    aput-object p5, v0, v2

    invoke-static {p6}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p5

    aput-object p5, v0, v1

    invoke-static {p1, v0}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    :goto_0
    new-array p5, v1, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iput-object p5, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {p7}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p6

    aput-object p6, p5, v2

    iget-object p5, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    iput p2, p5, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    iput-boolean v1, p5, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->isStateChange:Z

    iget-object p2, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object p5, p2, v2

    iput p8, p5, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    aget-object p5, p2, v2

    iput p3, p5, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanX:I

    aget-object p2, p2, v2

    iput p4, p2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanY:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    const-string p1, "state changed"

    invoke-virtual {p0, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->resetElapsedContainerMillis(Ljava/lang/String;)V

    return-void
.end method

.method public logTaskLaunchOrDismiss(IIILcom/zui/launcher/util/ComponentKey;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/zui/launcher/logging/LoggerUtils;->newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-static {v1}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/zui/launcher/logging/LoggerUtils;->newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object p1, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    iput p2, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    :cond_1
    iget-object p1, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p1, v4

    const/16 v2, 0x9

    iput v2, p2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    aget-object p2, p1, v4

    iput p3, p2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    aget-object p1, p1, v4

    iget-object p2, p4, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->a(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Landroid/content/ComponentName;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    iput-boolean v1, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->f:Z

    return-void
.end method

.method public final resetActionDurationMillis()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->d:J

    return-void
.end method

.method public final resetElapsedContainerMillis(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->b:J

    sget-boolean p0, Lcom/zui/launcher/logging/UserEventDispatcher;->h:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resetElapsedContainerMillis reason="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserEvent"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startSession()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->a:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/logging/UserEventDispatcher;->b:J

    return-void
.end method
