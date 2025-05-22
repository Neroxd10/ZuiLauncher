.class public Lcom/zui/launcher/SecondaryDropTarget;
.super Lcom/zui/launcher/ButtonDropTarget;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/SecondaryDropTarget$a;
    }
.end annotation


# instance fields
.field private final l:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/zui/launcher/Alarm;

.field protected mCurrentAccessibilityAction:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/SecondaryDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/ArrayMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/SecondaryDropTarget;->l:Landroid/util/ArrayMap;

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    new-instance p1, Lcom/zui/launcher/Alarm;

    invoke-direct {p1}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/SecondaryDropTarget;->m:Lcom/zui/launcher/Alarm;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    return-void
.end method

.method private d(Landroid/view/View;)I
    .locals 3

    instance-of v0, p1, Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private e(Lcom/zui/launcher/ItemInfo;)Landroid/content/ComponentName;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private f(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->getDragInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getDragInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public completeDrop(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/zui/launcher/SecondaryDropTarget;->f(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/SecondaryDropTarget;->performDropAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object p1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v1, p1, Lcom/zui/launcher/SecondaryDropTarget$a;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/zui/launcher/SecondaryDropTarget$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/launcher/SecondaryDropTarget$a;->a(Lcom/zui/launcher/SecondaryDropTarget$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->addOnResumeCallback(Lcom/zui/launcher/Launcher$OnResumeCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/SecondaryDropTarget$a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAccessibilityAction()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    return p0
.end method

.method public getDropTargetForLogging()Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    const v1, 0x7f0a006b

    if-ne p0, v1, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    return-object v0
.end method

.method public onAccessibilityDrop(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/SecondaryDropTarget;->performDropAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)Landroid/content/ComponentName;

    return-void
.end method

.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SecondaryDropTarget;->l:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/SecondaryDropTarget$a;

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/zui/launcher/SecondaryDropTarget$a;-><init>(Lcom/zui/launcher/SecondaryDropTarget;Lcom/zui/launcher/DragSource;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/ButtonDropTarget;->onDrop(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/ButtonDropTarget;->onFinishInflate()V

    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Lcom/zui/launcher/SecondaryDropTarget;->setupUi(I)V

    return-void
.end method

.method protected performDropAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)Landroid/content/ComponentName;
    .locals 5

    iget v0, p0, Lcom/zui/launcher/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    const/4 v1, 0x0

    const v2, 0x7f0a0060

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/SecondaryDropTarget;->d(Landroid/view/View;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object p2

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 v0, -0x1

    invoke-virtual {p2, p0, p1, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->startConfigActivity(Lcom/zui/launcher/BaseDraggingActivity;II)V

    :cond_0
    return-object v1

    :cond_1
    invoke-direct {p0, p2}, Lcom/zui/launcher/SecondaryDropTarget;->e(Lcom/zui/launcher/ItemInfo;)Landroid/content/ComponentName;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    const p1, 0x7f1206b3

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object v1

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    const v3, 0x7f120307

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "package"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.USER"

    iget-object v3, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/ButtonDropTarget;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to parse intent to start uninstall activity for item="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecondaryDropTarget"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected setupUi(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/launcher/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    const v0, 0x7f0a006b

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060356

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    const p1, 0x7f0802a9

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ButtonDropTarget;->setDrawable(I)V

    const p1, 0x7f1206af

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/ButtonDropTarget;->mHoverColor:I

    const p1, 0x7f080298

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ButtonDropTarget;->setDrawable(I)V

    const p1, 0x7f1203c5

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/ButtonDropTarget;->updateText(I)V

    return-void
.end method

.method public supportsAccessibilityDrop(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 5

    instance-of v0, p2, Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/zui/launcher/SecondaryDropTarget;->d(Landroid/view/View;)I

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0a0060

    invoke-virtual {p0, p1}, Lcom/zui/launcher/SecondaryDropTarget;->setupUi(I)V

    return v1

    :cond_0
    return v2

    :cond_1
    const p2, 0x7f0a006b

    invoke-virtual {p0, p2}, Lcom/zui/launcher/SecondaryDropTarget;->setupUi(I)V

    iget-object p2, p0, Lcom/zui/launcher/SecondaryDropTarget;->l:Landroid/util/ArrayMap;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "no_control_apps"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "no_uninstall_apps"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v1

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/SecondaryDropTarget;->l:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/SecondaryDropTarget;->m:Lcom/zui/launcher/Alarm;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v3, v4}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    return v2

    :cond_5
    instance-of p2, p1, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz p2, :cond_7

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/ItemInfoWithIcon;

    iget p2, p2, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, p2, 0xc0

    if-eqz v0, :cond_7

    and-int/lit16 p0, p2, 0x80

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    :cond_7
    invoke-direct {p0, p1}, Lcom/zui/launcher/SecondaryDropTarget;->e(Lcom/zui/launcher/ItemInfo;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1
.end method

.method protected supportsDrop(Lcom/zui/launcher/ItemInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
