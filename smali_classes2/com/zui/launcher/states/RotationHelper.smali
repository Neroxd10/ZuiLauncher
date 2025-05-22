.class public Lcom/zui/launcher/states/RotationHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final ALLOW_ROTATION_PREFERENCE_KEY:Ljava/lang/String; = "pref_allowRotation"

.field public static final REQUEST_LOCK:I = 0x2

.field public static final REQUEST_NONE:I = 0x0

.field public static final REQUEST_ROTATE:I = 0x1


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Landroid/content/SharedPreferences;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/states/RotationHelper;->e:I

    iput v0, p0, Lcom/zui/launcher/states/RotationHelper;->f:I

    iput v0, p0, Lcom/zui/launcher/states/RotationHelper;->g:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/launcher/states/RotationHelper;->k:I

    iput-object p1, p0, Lcom/zui/launcher/states/RotationHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/states/RotationHelper;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/states/RotationHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/states/RotationHelper;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iput-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->d:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/states/RotationHelper;->b:Landroid/content/SharedPreferences;

    :goto_0
    return-void
.end method

.method private a()V
    .locals 5

    iget-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->h:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/states/RotationHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getOrientationFlag(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/states/RotationHelper;->e:I

    const/16 v2, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    if-ne v1, v4, :cond_1

    move v0, v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----RotationHelper--notifyChange case 0  mStateHandlerRequest == REQUEST_LOCK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/states/RotationHelper;->e:I

    if-ne v2, v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/zui/launcher/states/RotationHelper;->g:I

    if-ne v1, v4, :cond_4

    const-string v0, "----RotationHelper--notifyChange case 1  activityFlags = SCREEN_ORIENTATION_LOCKED"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugRotationHelper(Ljava/lang/String;)V

    move v0, v2

    goto :goto_3

    :cond_4
    iget-boolean v2, p0, Lcom/zui/launcher/states/RotationHelper;->c:Z

    if-nez v2, :cond_6

    if-eq v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/zui/launcher/states/RotationHelper;->d:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    const-string v1, "----RotationHelper--notifyChange case 3  activityFlags = SCREEN_ORIENTATION_NOSENSOR"

    goto :goto_2

    :cond_6
    :goto_1
    const-string v1, "----RotationHelper--notifyChange case 2  activityFlags = SCREEN_ORIENTATION_PORTRAIT"

    :goto_2
    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->debugRotationHelper(Ljava/lang/String;)V

    :goto_3
    iget v1, p0, Lcom/zui/launcher/states/RotationHelper;->k:I

    if-eq v0, v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----RotationHelper--notifyChange  flagDesc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/zui/launcher/states/RotationHelper;->getOrientationDes(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   activityFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->debugRotationHelper(Ljava/lang/String;)V

    if-eq v0, v3, :cond_7

    const-string v1, "RotationHelper"

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->printStack(Ljava/lang/String;)V

    :cond_7
    iput v0, p0, Lcom/zui/launcher/states/RotationHelper;->k:I

    iget-object p0, p0, Lcom/zui/launcher/states/RotationHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0, v0}, Lcom/zui/launcher/util/UiThreadHelper;->setOrientationAsync(Landroid/app/Activity;I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public static deltaRotation(II)I
    .locals 0

    sub-int/2addr p1, p0

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method

.method public static getAllowRotationDefaultValue()Z
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v1, v0

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    div-int/2addr v1, v0

    const/16 v0, 0x258

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getOrientationDes(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "SCREEN_ORIENTATION_LOCKED"

    goto :goto_0

    :cond_1
    const-string p0, "SCREEN_ORIENTATION_NOSENSOR"

    goto :goto_0

    :cond_2
    const-string p0, "SCREEN_ORIENTATION_PORTRAIT"

    goto :goto_0

    :cond_3
    const-string p0, "SCREEN_ORIENTATION_LANDSCAPE"

    goto :goto_0

    :cond_4
    const-string p0, "SCREEN_ORIENTATION_UNSPECIFIED"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->i:Z

    iget-object v0, p0, Lcom/zui/launcher/states/RotationHelper;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public forceAllowRotationForTesting(Z)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/states/RotationHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/zui/launcher/states/RotationHelper;->c:Z

    invoke-direct {p0}, Lcom/zui/launcher/states/RotationHelper;->a()V

    return-void
.end method

.method public homeScreenCanRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/states/RotationHelper;->e:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/states/RotationHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public initialize()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/states/RotationHelper;->h:Z

    invoke-direct {p0}, Lcom/zui/launcher/states/RotationHelper;->a()V

    invoke-virtual {p0}, Lcom/zui/launcher/states/RotationHelper;->updateRotationAnimation()V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lcom/zui/launcher/states/RotationHelper;->d:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/states/RotationHelper;->d:Z

    if-eq p2, p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/states/RotationHelper;->a()V

    invoke-virtual {p0}, Lcom/zui/launcher/states/RotationHelper;->updateRotationAnimation()V

    iget-object p0, p0, Lcom/zui/launcher/states/RotationHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->reapplyUi()V

    :cond_0
    return-void
.end method

.method public setCurrentStateRequest(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/states/RotationHelper;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/zui/launcher/states/RotationHelper;->g:I

    invoke-direct {p0}, Lcom/zui/launcher/states/RotationHelper;->a()V

    :cond_0
    return-void
.end method

.method public setCurrentTransitionRequest(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/states/RotationHelper;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/zui/launcher/states/RotationHelper;->f:I

    invoke-direct {p0}, Lcom/zui/launcher/states/RotationHelper;->a()V

    :cond_0
    return-void
.end method

.method public setRotationHadDifferentUI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/states/RotationHelper;->j:Z

    return-void
.end method

.method public setStateHandlerRequest(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/states/RotationHelper;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/zui/launcher/states/RotationHelper;->e:I

    invoke-virtual {p0}, Lcom/zui/launcher/states/RotationHelper;->updateRotationAnimation()V

    invoke-direct {p0}, Lcom/zui/launcher/states/RotationHelper;->a()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/zui/launcher/states/RotationHelper;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/zui/launcher/states/RotationHelper;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/zui/launcher/states/RotationHelper;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/zui/launcher/states/RotationHelper;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/zui/launcher/states/RotationHelper;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string p0, "[mStateHandlerRequest=%d, mCurrentStateRequest=%d, mLastActivityFlags=%d, mIgnoreAutoRotateSettings=%b, mAutoRotateEnabled=%b]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateRotationAnimation()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->FAKE_LANDSCAPE_UI:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/states/RotationHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p0}, Lcom/zui/launcher/states/RotationHelper;->homeScreenCanRotate()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/states/RotationHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
