.class public Lcom/zui/launcher/AppInfo;
.super Lcom/zui/launcher/ItemInfoWithIcon;
.source ""

# interfaces
.implements Lcom/zui/launcher/globalsearch/BaseDataModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/AppInfo$Mycomparator;
    }
.end annotation


# static fields
.field public static COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static EMPTY_ARRAY:[Lcom/zui/launcher/AppInfo;


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field h:I

.field public intent:Landroid/content/Intent;

.field public mPinYinLookupKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPinyinStr:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public sectionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/zui/launcher/AppInfo;

    sput-object v0, Lcom/zui/launcher/AppInfo;->EMPTY_ARRAY:[Lcom/zui/launcher/AppInfo;

    sget-object v0, Lcom/zui/launcher/e;->a:Lcom/zui/launcher/e;

    sput-object v0, Lcom/zui/launcher/AppInfo;->COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->sectionName:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/zui/launcher/AppInfo;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/zui/launcher/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/zui/launcher/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/zui/launcher/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/zui/launcher/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->sectionName:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/zui/launcher/AppInfo;->h:I

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    iput-object p2, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/zui/launcher/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    if-eqz p3, :cond_0

    iget p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_0
    invoke-static {p0, p1}, Lcom/zui/launcher/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->sectionName:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/zui/launcher/AppInfo;->h:I

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/launcher/AppInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->mIsActiveIconApp:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    iput-object p2, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    const/high16 p2, 0x10200000

    invoke-virtual {p0, v2, p2}, Lcom/zui/launcher/AppInfo;->b(Landroid/content/ComponentName;I)V

    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz p2, :cond_0

    const-string v0, "action.ACTION_PLAY_ANIM"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/zui/launcher/ItemInfoWithIcon;->setAnimReceiver(Z)V

    :cond_0
    if-eqz p3, :cond_1

    iget p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_1
    invoke-static {p0, p1}, Lcom/zui/launcher/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/AppInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>(Lcom/zui/launcher/ItemInfoWithIcon;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->sectionName:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/zui/launcher/AppInfo;->h:I

    iget-object v0, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget p1, p1, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    iput p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/pm/PackageInstallInfo;)V
    .locals 2
    .param p1    # Lcom/zui/launcher/pm/PackageInstallInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->sectionName:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/zui/launcher/AppInfo;->h:I

    iget-object v0, p1, Lcom/zui/launcher/pm/PackageInstallInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ItemInfoWithIcon;->setProgressLevel(Lcom/zui/launcher/pm/PackageInstallInfo;)V

    iget-object p1, p1, Lcom/zui/launcher/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/AppInfo;)I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    iget-object v1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10200000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static updateRuntimeFlagsForActivityTarget(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_0
    iget v1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    const/16 v2, 0x80

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    :goto_0
    or-int/2addr v1, v2

    iput v1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    sget-boolean v1, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_2
    return-void
.end method

.method public static updateRuntimeFlagsForActivityTarget(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/zui/launcher/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_0
    iget v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    const/16 v1, 0x80

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    sget-boolean v1, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_2

    or-int/lit16 p1, v0, 0x100

    iput p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_2
    return-void
.end method


# virtual methods
.method final b(Landroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.category.ACTIVE_ICON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public clone()Lcom/zui/launcher/AppInfo;
    .locals 1

    new-instance v0, Lcom/zui/launcher/AppInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/AppInfo;-><init>(Lcom/zui/launcher/AppInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/zui/launcher/ItemInfoWithIcon;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/AppInfo;->clone()Lcom/zui/launcher/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/AppInfo;->clone()Lcom/zui/launcher/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/zui/launcher/ItemInfoWithIcon;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public loadLookupKey()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, " "

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->mPinyinStr:Ljava/lang/String;

    return-void
.end method

.method public makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 1

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Lcom/zui/launcher/AppInfo;)V

    return-object v0
.end method

.method public toComponentKey()Lcom/zui/launcher/util/ComponentKey;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/ComponentKey;

    iget-object v1, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method
