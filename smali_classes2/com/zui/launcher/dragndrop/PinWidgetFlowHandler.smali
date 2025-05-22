.class public Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;
.super Lcom/zui/launcher/widget/WidgetAddFlowHandler;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler$a;

    invoke-direct {v0}, Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/pm/LauncherApps$PinItemRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;->b:Landroid/content/pm/LauncherApps$PinItemRequest;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/content/pm/LauncherApps$PinItemRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps$PinItemRequest;

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;->b:Landroid/content/pm/LauncherApps$PinItemRequest;

    return-void
.end method


# virtual methods
.method public needsConfigure()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startConfigActivity(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/ItemInfo;I)Z
    .locals 0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "appWidgetId"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;->b:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/PinWidgetFlowHandler;->b:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps$PinItemRequest;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
