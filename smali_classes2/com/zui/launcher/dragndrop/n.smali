.class Lcom/zui/launcher/dragndrop/n;
.super Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field private final c:Landroid/content/pm/LauncherApps$PinItemRequest;

.field private final d:Landroid/content/pm/ShortcutInfo;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pinned-shortcut"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/n;->c:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/n;->d:Landroid/content/pm/ShortcutInfo;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/n;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createWorkspaceItemInfo()Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/n;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    add-int/lit16 v0, v0, 0x96

    int-to-long v0, v0

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/n;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/n;->c:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v2, p0, v0, v1}, Lcom/zui/launcher/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFullResIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/n;->e:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/n;->d:Landroid/content/pm/ShortcutInfo;

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/n;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getZuiThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {p1, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public getItemType()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/n;->d:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isPersistable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
