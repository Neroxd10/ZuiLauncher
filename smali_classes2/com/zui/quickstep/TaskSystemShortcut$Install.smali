.class public Lcom/zui/quickstep/TaskSystemShortcut$Install;
.super Lcom/zui/quickstep/TaskSystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Install"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/quickstep/TaskSystemShortcut<",
        "Lcom/zui/launcher/popup/SystemShortcut$Install;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/popup/SystemShortcut$Install;

    invoke-direct {v0}, Lcom/zui/launcher/popup/SystemShortcut$Install;-><init>()V

    invoke-direct {p0, v0}, Lcom/zui/quickstep/TaskSystemShortcut;-><init>(Lcom/zui/launcher/popup/SystemShortcut;)V

    return-void
.end method


# virtual methods
.method protected getOnClickListenerForTask(Lcom/zui/launcher/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/util/InstantAppResolver;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/util/InstantAppResolver;->isInstantApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mSystemShortcut:Lcom/zui/launcher/popup/SystemShortcut;

    check-cast p0, Lcom/zui/launcher/popup/SystemShortcut$Install;

    invoke-virtual {p0, p1, p3}, Lcom/zui/launcher/popup/SystemShortcut$Install;->createOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
