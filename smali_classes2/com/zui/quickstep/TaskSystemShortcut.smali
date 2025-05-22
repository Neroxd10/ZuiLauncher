.class public Lcom/zui/quickstep/TaskSystemShortcut;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;,
        Lcom/zui/quickstep/TaskSystemShortcut$LockTask;,
        Lcom/zui/quickstep/TaskSystemShortcut$Install;,
        Lcom/zui/quickstep/TaskSystemShortcut$Pin;,
        Lcom/zui/quickstep/TaskSystemShortcut$Freeform;,
        Lcom/zui/quickstep/TaskSystemShortcut$SplitScreen;,
        Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;,
        Lcom/zui/quickstep/TaskSystemShortcut$AppInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/popup/SystemShortcut;",
        ">",
        "Lcom/zui/launcher/popup/SystemShortcut;"
    }
.end annotation


# static fields
.field public static final ACTION_TOUCH_SWIPE:Ljava/lang/String; = "Drag_Recent"

.field public static final ACTION_TOUCH_TAP:Ljava/lang/String; = "Click_Recent"

.field public static final CATEGORY_RECENTS_PHONE:Ljava/lang/String; = "Legion_Recent"

.field public static final CATEGORY_RECENTS_TABLET:Ljava/lang/String; = "Tablet_Recent"

.field public static final LABEL_APPINFO:Ljava/lang/String; = "\u5e94\u7528\u4fe1\u606f"

.field public static final LABEL_EXTCAST:Ljava/lang/String; = "\u5e94\u7528\u6295\u5c4f"

.field public static final LABEL_SPLITSCREEN:Ljava/lang/String; = "\u5206\u5c4f"

.field public static final LABEL_TASKLOCK:Ljava/lang/String; = "\u9501\u5b9a\u5e94\u7528"

.field public static final PARAM_KEY_TOUCH_SWIPE:Ljava/lang/String; = "Drag_recent_Done"

.field public static final PARAM_KEY_TOUCH_TAP:Ljava/lang/String; = "Click_recent_Done"

.field public static final TASK_SUB_ITEM_TYPE:I = 0x19f

.field public static final VALUE_APPINFO:Ljava/lang/String; = "App_info"

.field public static final VALUE_EXTCAST:Ljava/lang/String; = "Extcast"

.field public static final VALUE_SPLITSCREEN:Ljava/lang/String; = "Split_Screen"

.field public static final VALUE_TASKLOCK:Ljava/lang/String; = "Lock_app"

.field static o:Z = false


# instance fields
.field private l:I

.field private m:I

.field public mActionWhenStarted:I

.field protected mSystemShortcut:Lcom/zui/launcher/popup/SystemShortcut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/quickstep/TaskSystemShortcut;->l:I

    iput p1, p0, Lcom/zui/quickstep/TaskSystemShortcut;->m:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/popup/SystemShortcut;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(Lcom/zui/launcher/popup/SystemShortcut;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->l:I

    iput v0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->m:I

    iput-object p1, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mSystemShortcut:Lcom/zui/launcher/popup/SystemShortcut;

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/zui/quickstep/TaskSystemShortcut;->g(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zui/quickstep/TaskSystemShortcut;->f(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;ILcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zui/quickstep/TaskSystemShortcut;->i(Landroid/content/Context;ILcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method static synthetic e(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/zui/quickstep/TaskSystemShortcut;->h(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f120320

    goto :goto_0

    :cond_0
    const v1, 0x7f120321

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1200e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f1200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v1, 0x7f12031f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    new-instance v6, Lcom/zui/quickstep/TaskSystemShortcut$a;

    invoke-direct {v6, p0, p2, p1}, Lcom/zui/quickstep/TaskSystemShortcut$a;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;)V

    new-instance v8, Lcom/zui/quickstep/TaskSystemShortcut$b;

    invoke-direct {v8}, Lcom/zui/quickstep/TaskSystemShortcut$b;-><init>()V

    new-instance v10, Lcom/zui/quickstep/TaskSystemShortcut$c;

    invoke-direct {v10}, Lcom/zui/quickstep/TaskSystemShortcut$c;-><init>()V

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/zui/launcher/Utilities;->showStartRunningAppDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "taskSystemShowrtcutDefApp"

    invoke-static {p0, v0}, Lcom/zui/launcher/util/SettingsValue;->isShowStartRunningDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "taskSystemShowrtcutExtApp"

    invoke-static {p0, v0}, Lcom/zui/launcher/util/SettingsValue;->isShowStartRunningDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static i(Landroid/content/Context;ILcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    invoke-static {}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getInstance()Lcom/zui/quickstep/util/DisplayManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->getDisplayForDisplayId(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    iget-object p1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->resizeTaskBoundsOnDpModeOpen(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static setTaskWindowModeToFullscreen(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->n:I

    return p0
.end method

.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;
    .locals 3

    invoke-virtual {p2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    const/16 v1, 0x19f

    iput v1, v0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v1}, Lcom/zui/quickstep/TaskUtils;->getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object v1

    iget-object v2, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p1, p2}, Lcom/zui/quickstep/TaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/quickstep/TaskSystemShortcut;->getOnClickListenerForTask(Lcom/zui/launcher/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method protected getOnClickListenerForTask(Lcom/zui/launcher/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mSystemShortcut:Lcom/zui/launcher/popup/SystemShortcut;

    invoke-virtual {p0, p1, p3}, Lcom/zui/launcher/popup/SystemShortcut;->getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public setActionWhenInit(I)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mActionWhenStarted:I

    return-void
.end method

.method public setHighLightIconResId(I)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/TaskSystemShortcut;->m:I

    return-void
.end method

.method public setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p2, -0x2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setNormalIconResId(I)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/TaskSystemShortcut;->l:I

    return-void
.end method

.method public updateIconAndLabel(ILcom/zui/quickstep/views/TaskView;)V
    .locals 1

    const/4 p2, -0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->m:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->l:I

    if-eq v0, p2, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/popup/SystemShortcut;->setIconResId(I)V

    :cond_1
    iput p1, p0, Lcom/zui/quickstep/TaskSystemShortcut;->n:I

    return-void
.end method
