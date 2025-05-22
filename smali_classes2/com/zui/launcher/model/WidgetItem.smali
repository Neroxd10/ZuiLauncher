.class public Lcom/zui/launcher/model/WidgetItem;
.super Lcom/zui/launcher/util/ComponentKey;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/util/ComponentKey;",
        "Ljava/lang/Comparable<",
        "Lcom/zui/launcher/model/WidgetItem;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Landroid/os/UserHandle;

.field private static c:Ljava/text/Collator;


# instance fields
.field public final activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

.field public final label:Ljava/lang/String;

.field public final leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

.field public final spanX:I

.field public final spanY:I

.field public final widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/LenovoWidgetsProviderInfo;Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->widgetView:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appName:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iput-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    iput-object p1, p0, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    iget v0, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->x:I

    iget v1, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget p1, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->y:I

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;Lcom/zui/launcher/icons/IconCache;Landroid/content/pm/PackageManager;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p1}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/zui/launcher/icons/IconCache;->getTitleNoCache(Lcom/zui/launcher/icons/ComponentWithLabel;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3}, Lcom/zui/launcher/icons/ComponentWithLabel;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iput-object p1, p0, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    iput p1, p0, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iput-object p2, p0, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Lcom/zui/launcher/InvariantDeviceProfile;Lcom/zui/launcher/icons/IconCache;)V
    .locals 2

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p3, p1}, Lcom/zui/launcher/icons/IconCache;->getTitleNoCache(Lcom/zui/launcher/icons/ComponentWithLabel;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    iput-object p3, p0, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    iget p3, p1, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v0, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget p1, p1, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/zui/launcher/model/WidgetItem;)I
    .locals 5

    sget-object v0, Lcom/zui/launcher/model/WidgetItem;->b:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/model/WidgetItem;->b:Landroid/os/UserHandle;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/model/WidgetItem;->c:Ljava/text/Collator;

    :cond_0
    sget-object v0, Lcom/zui/launcher/model/WidgetItem;->b:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-object v2, Lcom/zui/launcher/model/WidgetItem;->b:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    xor-int/2addr v2, v0

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iget-object v4, p1, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz v4, :cond_4

    move v2, v1

    :cond_4
    if-eq v0, v2, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    return v1

    :cond_6
    sget-object v0, Lcom/zui/launcher/model/WidgetItem;->c:Ljava/text/Collator;

    iget-object v1, p0, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    iget v0, p0, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget p0, p0, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    mul-int/2addr v0, p0

    iget v1, p1, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget p1, p1, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    mul-int/2addr v1, p1

    if-ne v0, v1, :cond_8

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_3

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    :goto_3
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/WidgetItem;->compareTo(Lcom/zui/launcher/model/WidgetItem;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/zui/launcher/model/WidgetItem;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    iget v1, p0, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget v2, p1, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    iget v2, p1, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    invoke-virtual {p0}, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public hasPreviewLayout()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSameType(Lcom/zui/launcher/model/WidgetItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isShortcut()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
