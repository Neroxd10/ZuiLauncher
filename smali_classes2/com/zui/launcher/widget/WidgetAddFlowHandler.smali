.class public Lcom/zui/launcher/widget/WidgetAddFlowHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zui/launcher/widget/WidgetAddFlowHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/WidgetAddFlowHandler$a;

    invoke-direct {v0}, Lcom/zui/launcher/widget/WidgetAddFlowHandler$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->a:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->a:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getProviderInfo(Landroid/content/Context;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->a:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public needsConfigure()Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->a:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->a:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method public startBindFlow(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/ItemInfo;I)V
    .locals 0

    invoke-static {p2, p0, p3}, Lcom/zui/launcher/util/PendingRequestArgs;->forWidgetInfo(ILcom/zui/launcher/widget/WidgetAddFlowHandler;Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PendingRequestArgs;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object p3

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->a:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p3, p1, p2, p0, p4}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->startBindFlow(Lcom/zui/launcher/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V

    return-void
.end method

.method public startConfigActivity(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/ItemInfo;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p2, p0, p3}, Lcom/zui/launcher/util/PendingRequestArgs;->forWidgetInfo(ILcom/zui/launcher/widget/WidgetAddFlowHandler;Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PendingRequestArgs;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->startConfigActivity(Lcom/zui/launcher/BaseDraggingActivity;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public startConfigActivity(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherAppWidgetInfo;I)Z
    .locals 1

    iget v0, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/ItemInfo;I)Z

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->a:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
