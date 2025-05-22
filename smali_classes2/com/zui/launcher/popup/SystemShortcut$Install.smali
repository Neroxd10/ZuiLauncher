.class public Lcom/zui/launcher/popup/SystemShortcut$Install;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Install"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f08025a

    const v1, 0x7f120400

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(II)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/BaseDraggingActivity;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/PackageManagerHelper;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/zui/launcher/BaseDraggingActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    invoke-static {p1}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    return-void
.end method


# virtual methods
.method public createOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    new-instance p0, Lcom/zui/launcher/popup/d0;

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/popup/d0;-><init>(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/BaseDraggingActivity;)V

    return-object p0
.end method

.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 5

    instance-of v0, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/zui/launcher/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    instance-of v3, p2, Lcom/zui/launcher/AppInfo;

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Lcom/zui/launcher/AppInfo;

    invoke-static {p1}, Lcom/zui/launcher/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/util/InstantAppResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zui/launcher/util/InstantAppResolver;->isInstantApp(Lcom/zui/launcher/AppInfo;)Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/popup/SystemShortcut$Install;->createOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method
