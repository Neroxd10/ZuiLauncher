.class public abstract Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ComponentName;

.field private final b:Landroid/os/UserHandle;


# direct methods
.method protected constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->a:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->b:Landroid/os/UserHandle;

    return-void
.end method

.method public static queryList(Landroid/content/Context;Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/List;
    .locals 9
    .param p1    # Lcom/zui/launcher/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    if-nez p1, :cond_0

    sget-object p1, Lcom/zui/launcher/pm/UserCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/pm/UserCache;

    invoke-virtual {p1}, Lcom/zui/launcher/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object p1, p1, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_0
    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/LauncherApps;->getShortcutConfigActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    if-nez v4, :cond_3

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_2

    :cond_3
    new-instance v6, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;

    invoke-direct {v6, v5}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public createWorkspaceItemInfo()Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->a:Landroid/content/ComponentName;

    return-object p0
.end method

.method public abstract getFullResIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/drawable/Drawable;
.end method

.method public getItemType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->b:Landroid/os/UserHandle;

    return-object p0
.end method

.method public isPersistable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const v0, 0x7f12006e

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p2

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launcher does not have the permission to launch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SCActivityInfo"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1
.end method
