.class public Lcom/zui/launcher/WorkspaceItemInfo;
.super Lcom/zui/launcher/ItemInfoWithIcon;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/WorkspaceItemInfo$b;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final FLAG_AUTOINSTALL_ICON:I = 0x2

.field public static final FLAG_INSTALL_SESSION_ACTIVE:I = 0x4

.field public static final FLAG_RESTORED_ICON:I = 0x1

.field public static final FLAG_RESTORE_STARTED:I = 0x8

.field public static final FLAG_SUPPORTS_WEB_UI:I = 0x10

.field private static final k:Ljava/lang/String; = "WorkspaceItemInfo"


# instance fields
.field public changeCount:I

.field public customIcon:Z

.field public disabledMessage:Ljava/lang/CharSequence;

.field private h:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:I

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field public intent:Landroid/content/Intent;

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo$b;",
            ">;"
        }
    .end annotation
.end field

.field public originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

.field public packageName:Ljava/lang/String;

.field public status:I

.field public usingFallbackIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>()V

    sget-object v0, Lcom/zui/launcher/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->h:[Ljava/lang/String;

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>()V

    sget-object v0, Lcom/zui/launcher/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->h:[Ljava/lang/String;

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    const/16 v0, 0x9

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/AppInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>(Lcom/zui/launcher/ItemInfoWithIcon;)V

    sget-object v0, Lcom/zui/launcher/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->h:[Ljava/lang/String;

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->customIcon:Z

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>(Lcom/zui/launcher/ItemInfoWithIcon;)V

    sget-object v0, Lcom/zui/launcher/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->h:[Ljava/lang/String;

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    iput v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    iget v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->i:I

    iput v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->i:I

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->h:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->h:[Ljava/lang/String;

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->customIcon:Z

    iget-boolean v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->usingFallbackIcon:Z

    iput-boolean v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->usingFallbackIcon:Z

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v0, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {v0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method

.method static synthetic c(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method a(Lcom/zui/launcher/WorkspaceItemInfo$b;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public applyOriginalFrom(Lcom/zui/launcher/icons/BitmapInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {v0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo$b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/zui/launcher/WorkspaceItemInfo$b;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearListeners()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clone()Lcom/zui/launcher/ItemInfoWithIcon;
    .locals 1

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->clone()Lcom/zui/launcher/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method

.method public copyFrom(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/ItemInfoWithIcon;->copyFrom(Lcom/zui/launcher/ItemInfoWithIcon;)V

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    iput v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    iget v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->i:I

    iput v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->i:I

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->customIcon:Z

    iget-boolean v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->usingFallbackIcon:Z

    iput-boolean v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->usingFallbackIcon:Z

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    iget v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->changeCount:I

    iput v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->changeCount:I

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v0, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {v0, p1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method

.method d()V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->b()V

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo$b;

    invoke-interface {v1}, Lcom/zui/launcher/WorkspaceItemInfo$b;->onRecommendStatusChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/zui/launcher/ItemInfoWithIcon;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  isPromise: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method e(Lcom/zui/launcher/WorkspaceItemInfo$b;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getDeepShortcutId()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "shortcut_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_0
    return-object p0
.end method

.method public getIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/WorkspaceItemInfo;->updateIcon(Lcom/zui/launcher/icons/IconCache;)V

    :cond_1
    iget-boolean v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->customIcon:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/icons/IconCache;->getLauncherApplication()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncherContext()Lcom/zui/launcher/LauncherContext;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v1, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/LauncherContext;->createCustomIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getInstallProgress()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->i:I

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public getOriginalIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_0
    return-object p0
.end method

.method public getPersonKeys()[Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->h:[Ljava/lang/String;

    return-object p0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 3

    invoke-super {p0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    return-object v0
.end method

.method public getWechatCustomId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "wechat_custom_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public hasPromiseIconUi()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasStatusFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAppType()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

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

.method public final isPromise()Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result p0

    return p0
.end method

.method public onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zui/launcher/ItemInfo;->onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V

    iget-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "hasActiveIcon"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    :goto_0
    iget-object v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/util/ContentWriter;->putIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ContentWriter;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    const-string v1, "iconPackage"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object p0, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v0, "iconResource"

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    :cond_2
    return-void
.end method

.method public recommendReplaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)Z
    .locals 4

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->b()V

    iget-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/WorkspaceItemInfo;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo$b;

    invoke-interface {v3, p1, p2}, Lcom/zui/launcher/WorkspaceItemInfo$b;->replaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public removeRecommendConn(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/zui/launcher/DownloadSpan;->removeConn(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadProgress(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    sget-object p0, Lcom/zui/launcher/WorkspaceItemInfo;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDownloadProgress\uff0c progress \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", caller:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method

.method public setInstallProgress(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->i:I

    iget p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    return-void
.end method

.method public setOriginalIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method

.method public updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/zui/launcher/shortcuts/ShortcutKey;->makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v1, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 p2, p2, -0x11

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 p2, p2, 0x10

    :goto_0
    iput p2, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/WorkspaceItemInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/zui/launcher/uioverrides/UiFactory;->getPersons(Landroid/content/pm/ShortcutInfo;)[Landroid/app/Person;

    move-result-object p1

    array-length p2, p1

    if-nez p2, :cond_2

    sget-object p1, Lcom/zui/launcher/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/a;->a:Lcom/zui/launcher/a;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/e3;->a:Lcom/zui/launcher/e3;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->h:[Ljava/lang/String;

    return-void
.end method

.method public updateIcon(Lcom/zui/launcher/icons/IconCache;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-static {p1, p0}, Lcom/zui/launcher/util/SettingsValue;->getAppDummyIcon(Lcom/zui/launcher/icons/IconCache;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/WorkspaceItemInfo;->customIcon:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/WorkspaceItemInfo$a;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/WorkspaceItemInfo$a;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
