.class public abstract Lcom/zui/launcher/ItemInfoWithIcon;
.super Lcom/zui/launcher/ItemInfo;
.source ""


# static fields
.field public static final FLAG_ADAPTIVE_ICON:I = 0x100

.field public static final FLAG_DISABLED_BY_PUBLISHER:I = 0x10

.field public static final FLAG_DISABLED_LOCKED_USER:I = 0x20

.field public static final FLAG_DISABLED_MASK:I = 0x3f

.field public static final FLAG_DISABLED_NOT_AVAILABLE:I = 0x2

.field public static final FLAG_DISABLED_QUIET_USER:I = 0x8

.field public static final FLAG_DISABLED_SAFEMODE:I = 0x1

.field public static final FLAG_DISABLED_SUSPENDED:I = 0x4

.field public static final FLAG_ICON_BADGED:I = 0x200

.field public static final FLAG_INCREMENTAL_DOWNLOAD_ACTIVE:I = 0x800

.field public static final FLAG_INSTALL_SESSION_ACTIVE:I = 0x400

.field public static final FLAG_SHOW_DOWNLOAD_PROGRESS_MASK:I = 0xc00

.field public static final FLAG_SYSTEM_MASK:I = 0xc0

.field public static final FLAG_SYSTEM_NO:I = 0x80

.field public static final FLAG_SYSTEM_YES:I = 0x40


# instance fields
.field public bitmap:Lcom/zui/launcher/icons/BitmapInfo;

.field private f:I

.field private g:Z

.field protected mIsActiveIconApp:Z

.field public runtimeStatusFlags:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    iput-boolean v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->g:Z

    return-void
.end method

.method protected constructor <init>(Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/ItemInfo;-><init>(Lcom/zui/launcher/ItemInfo;)V

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    iput-boolean v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->g:Z

    iget-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    iput v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    iget v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    iput v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-boolean v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->mIsActiveIconApp:Z

    iput-boolean v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->mIsActiveIconApp:Z

    iget-boolean p1, p1, Lcom/zui/launcher/ItemInfoWithIcon;->g:Z

    iput-boolean p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->g:Z

    return-void
.end method


# virtual methods
.method public applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {v0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method

.method public abstract clone()Lcom/zui/launcher/ItemInfoWithIcon;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfoWithIcon;->clone()Lcom/zui/launcher/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method

.method public copyFrom(Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/ItemInfo;->copyFrom(Lcom/zui/launcher/ItemInfo;)V

    iget-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v1, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {v1, v0}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    iput v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget-boolean v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->mIsActiveIconApp:Z

    iput-boolean v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->mIsActiveIconApp:Z

    iget-boolean v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->g:Z

    iput-boolean v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->g:Z

    iget p1, p1, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    iput p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    return-void
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/zui/launcher/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isActiveIconApp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->mIsActiveIconApp:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/zui/launcher/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getProgressLevel()I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    return p0

    :cond_0
    const/16 p0, 0x64

    return p0
.end method

.method public isActiveIconApp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->mIsActiveIconApp:Z

    return p0
.end method

.method public isAnimReceiver()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->g:Z

    return p0
.end method

.method public isAppStartable()Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisabled()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 p0, p0, 0x3f

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecommend()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/ItemInfoWithIcon;->newIcon(Landroid/content/Context;Z)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public newIcon(Landroid/content/Context;Z)Lcom/zui/launcher/icons/FastBitmapDrawable;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/icons/BitmapInfo;->newThemedIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfoWithIcon;->isDisabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    return-object p1
.end method

.method public final setActiveIconApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->mIsActiveIconApp:Z

    return-void
.end method

.method public setAnimReceiver(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->g:Z

    return-void
.end method

.method public setProgressLevel(II)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iput p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit16 p1, p1, 0x400

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p1, p1, -0x401

    :goto_0
    iput p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    iput p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    iget p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p2, p2, -0x401

    iput p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    if-ge p1, v0, :cond_2

    or-int/lit16 p1, p2, 0x800

    goto :goto_0

    :cond_2
    and-int/lit16 p1, p2, -0x801

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->f:I

    iget p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p1, p1, -0x801

    goto :goto_0

    :goto_2
    return-void
.end method

.method public setProgressLevel(Lcom/zui/launcher/pm/PackageInstallInfo;)V
    .locals 1

    iget v0, p1, Lcom/zui/launcher/pm/PackageInstallInfo;->progress:I

    iget p1, p1, Lcom/zui/launcher/pm/PackageInstallInfo;->state:I

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/ItemInfoWithIcon;->setProgressLevel(II)V

    return-void
.end method

.method public usingLowResIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BitmapInfo;->isLowRes()Z

    move-result p0

    return p0
.end method
