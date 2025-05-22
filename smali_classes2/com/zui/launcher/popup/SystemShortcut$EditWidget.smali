.class public Lcom/zui/launcher/popup/SystemShortcut$EditWidget;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditWidget"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f08024b

    const v1, 0x7f120353

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(II)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/popup/SystemShortcut;->dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->startWidgetConfigActivity(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/popup/SystemShortcut;->dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    check-cast p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/Launcher;->startLeosWidgetConfig(Lcom/zui/launcher/LenovoWidgetViewInfo;Lcom/zui/launcher/LeosWidgetInterface;)V

    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 2

    instance-of p0, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    move-object v1, p2

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Launcher;->isWidgetConfigurable(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lcom/zui/launcher/popup/b0;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/popup/b0;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V

    return-object p0

    :cond_1
    instance-of p0, p2, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz p0, :cond_3

    move-object p0, p2

    check-cast p0, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-virtual {p0}, Lcom/zui/launcher/LenovoWidgetViewInfo;->isReconfigurable()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Lcom/zui/launcher/popup/a0;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/popup/a0;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V

    return-object p0

    :cond_3
    return-object v0
.end method
