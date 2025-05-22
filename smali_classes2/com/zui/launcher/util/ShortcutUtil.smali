.class public Lcom/zui/launcher/util/ShortcutUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/zui/launcher/ItemInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isDisabled()Z

    move-result p0

    if-nez p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method private static b(Lcom/zui/launcher/ItemInfo;)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Lcom/zui/launcher/ItemInfo;)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    instance-of p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getPersonKeysIfPinnedShortcut(Lcom/zui/launcher/ItemInfo;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->a(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->c(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0}, Lcom/zui/launcher/WorkspaceItemInfo;->getPersonKeys()[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/launcher/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getShortcutIdIfPinnedShortcut(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->a(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->c(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromItemInfo(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isDeepShortcut(Lcom/zui/launcher/ItemInfo;)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    instance-of p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportsDeepShortcuts(Lcom/zui/launcher/ItemInfo;)Z
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->a(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->b(Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportsShortcuts(Lcom/zui/launcher/ItemInfo;)Z
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->a(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->b(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->c(Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
