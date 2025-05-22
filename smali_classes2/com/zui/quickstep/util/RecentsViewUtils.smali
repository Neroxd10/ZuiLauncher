.class public Lcom/zui/quickstep/util/RecentsViewUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static INSTANCE:Lcom/zui/quickstep/util/RecentsViewUtils;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Lcom/zui/launcher/BaseActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    iput-boolean p1, p0, Lcom/zui/quickstep/util/RecentsViewUtils;->a:Z

    return-void
.end method

.method public static getInstance(Lcom/zui/launcher/BaseActivity;)Lcom/zui/quickstep/util/RecentsViewUtils;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/util/RecentsViewUtils;->INSTANCE:Lcom/zui/quickstep/util/RecentsViewUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/quickstep/util/RecentsViewUtils;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/util/RecentsViewUtils;-><init>(Lcom/zui/launcher/BaseActivity;)V

    sput-object v0, Lcom/zui/quickstep/util/RecentsViewUtils;->INSTANCE:Lcom/zui/quickstep/util/RecentsViewUtils;

    :cond_0
    sget-object p0, Lcom/zui/quickstep/util/RecentsViewUtils;->INSTANCE:Lcom/zui/quickstep/util/RecentsViewUtils;

    return-object p0
.end method

.method public static updateLockState(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 4

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mIsSavingLockedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mIsSavingLockedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mLockPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mLockPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/model/Task;->setIsTaskLocked(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/model/Task;->setIsTaskLocked(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public isPhone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/util/RecentsViewUtils;->a:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
