.class public Lcom/zui/launcher/popup/SystemShortcut$FloatOpen;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatOpen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f080250

    const v1, 0x7f12054a

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(II)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/BaseDraggingActivity;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/popup/SystemShortcut;->dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/zui/launcher/BaseDraggingActivity;->startFloatActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 4

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->inZuiFreeformBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p1, p0, v1}, Lcom/zui/launcher/Utilities;->resolveInfos(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/zui/launcher/popup/c0;

    invoke-direct {v0, p1, p0, p2}, Lcom/zui/launcher/popup/c0;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;)V

    :cond_6
    :goto_0
    return-object v0
.end method
