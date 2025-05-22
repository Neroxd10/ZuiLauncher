.class Lzui/app/a;
.super Landroid/app/Dialog;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field protected mController:Lcom/zui/internal/app/DialogController;

.field protected mWindow:Landroid/view/Window;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lzui/app/a;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/app/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 6

    sget v3, Lzui/platform/R$attr;->messageDialogTheme:I

    sget v4, Lzui/platform/R$style;->Theme_Zui_MessageDialog:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lzui/app/a;-><init>(Landroid/content/Context;IIIZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 0

    if-eqz p5, :cond_0

    invoke-static {p1, p2, p3, p4}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    iput-object p2, p0, Lzui/app/a;->mWindow:Landroid/view/Window;

    new-instance p2, Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-direct {p2, p3, p0, p4}, Lcom/zui/internal/app/DialogController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lzui/app/a;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static a(Landroid/content/Context;III)I
    .locals 1

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez p0, :cond_1

    return p3

    :cond_1
    return p0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0, p1}, Lcom/zui/internal/app/DialogController;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public getParentContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lzui/app/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public isInLandscape(I)Z
    .locals 3

    invoke-virtual {p0}, Lzui/app/a;->getParentContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzui/app/a;->getParentContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzui/app/a;->getParentContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p1}, Lcom/zui/internal/app/DialogController;->installContent()V

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->prepareWatchOrientation()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {v0, p1, p2}, Lcom/zui/internal/app/DialogController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {v0, p1, p2}, Lcom/zui/internal/app/DialogController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->stopWatchScreenOrientation()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {v0}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lzui/app/a;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lzui/app/a;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p0, p0, Lzui/app/a;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/internal/app/DialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zui/internal/app/DialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButtonsVerticalAligned(Z)V
    .locals 0

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0, p1}, Lcom/zui/internal/app/DialogController;->setVerticalAlignedButtons(Z)V

    return-void
.end method

.method public setCancelableOnOrientation(Z)V
    .locals 0

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0, p1}, Lcom/zui/internal/app/DialogController;->setCancelableOnOrientation(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0, p1}, Lcom/zui/internal/app/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParentContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lzui/app/a;->a:Landroid/content/Context;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0, p1}, Lcom/zui/internal/app/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0, p1}, Lcom/zui/internal/app/DialogController;->setView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->watchScreenOrientation()V

    return-void
.end method
