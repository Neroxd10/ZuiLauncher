.class Lcom/zui/launcher/model/WidgetsModel$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/WidgetsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/zui/launcher/model/WidgetItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/InvariantDeviceProfile;

.field private final b:Lcom/zui/launcher/AppFilter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherAppState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/model/WidgetsModel$d;->a:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/AppFilter;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/AppFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/WidgetsModel$d;->b:Lcom/zui/launcher/AppFilter;

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/model/WidgetItem;)Z
    .locals 5

    iget-object v0, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->isMinSizeFulfilled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->x:I

    iget v0, v0, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->y:I

    iget-object v3, p0, Lcom/zui/launcher/model/WidgetsModel$d;->a:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v4, v3, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    if-gt v2, v4, :cond_2

    iget v2, v3, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    if-le v0, v2, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/model/WidgetsModel$d;->b:Lcom/zui/launcher/AppFilter;

    iget-object p1, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/WidgetsModel$d;->a(Lcom/zui/launcher/model/WidgetItem;)Z

    move-result p0

    return p0
.end method
