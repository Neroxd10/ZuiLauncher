.class public Lcom/zui/launcher/popup/SystemShortcut$DismissPrediction;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DismissPrediction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/popup/SystemShortcut<",
        "Lcom/zui/launcher/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f080281

    const v1, 0x7f120325

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(II)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V

    sget-object p0, Lcom/zui/launcher/model/AppLaunchTracker;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/model/AppLaunchTracker;

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p2

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    sget-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_PREDICTIONS:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v0}, Lcom/zui/launcher/model/AppLaunchTracker;->onDismissApp(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/popup/SystemShortcut$DismissPrediction;->getOnClickListener(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public getOnClickListener(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 2

    sget-object p0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_PREDICTION_DISMISS:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget p0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x66

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lcom/zui/launcher/popup/z;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/popup/z;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V

    return-object p0
.end method
