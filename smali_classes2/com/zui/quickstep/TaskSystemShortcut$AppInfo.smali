.class public Lcom/zui/quickstep/TaskSystemShortcut$AppInfo;
.super Lcom/zui/quickstep/TaskSystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/quickstep/TaskSystemShortcut<",
        "Lcom/zui/launcher/popup/SystemShortcut$AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;

    invoke-direct {v0}, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/zui/quickstep/TaskSystemShortcut;-><init>(Lcom/zui/launcher/popup/SystemShortcut;)V

    const v0, 0x7f080257

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/TaskSystemShortcut;->setNormalIconResId(I)V

    const v0, 0x7f080258

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/TaskSystemShortcut;->setHighLightIconResId(I)V

    return-void
.end method


# virtual methods
.method public setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/quickstep/TaskSystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mSystemShortcut:Lcom/zui/launcher/popup/SystemShortcut;

    check-cast p1, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;

    iget p0, p0, Lcom/zui/quickstep/TaskSystemShortcut;->mActionWhenStarted:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;->setActionWhenInit(I)V

    return-void
.end method
