.class public Lzui/app/FloatDialog;
.super Lzui/app/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/FloatDialog$Builder;,
        Lzui/app/FloatDialog$MenuAdapter;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lzui/app/FloatDialog;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/app/FloatDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lzui/app/FloatDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 6

    sget v3, Lzui/platform/R$attr;->floatDialogTheme:I

    sget v4, Lzui/platform/R$style;->Theme_Zui_FloatDialog:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lzui/app/a;-><init>(Landroid/content/Context;IIIZ)V

    new-instance p2, Lcom/zui/internal/app/FloatController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p2, v0, p0, v1}, Lcom/zui/internal/app/FloatController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lzui/app/FloatDialog;->setParentContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getButton(I)Landroid/widget/Button;
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getListView()Landroid/widget/ListView;
    .locals 0

    invoke-super {p0}, Lzui/app/a;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getParentContext()Landroid/content/Context;
    .locals 0

    invoke-super {p0}, Lzui/app/a;->getParentContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTitleView()Landroid/widget/TextView;
    .locals 0

    invoke-super {p0}, Lzui/app/a;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isInLandscape(I)Z
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->isInLandscape(I)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast p0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {p0}, Lcom/zui/internal/app/FloatController;->postCreate()V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lzui/app/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lzui/app/a;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0}, Lcom/zui/internal/app/FloatController;->postStop()V

    invoke-super {p0}, Lzui/app/a;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lzui/app/a;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lzui/app/a;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setButtonsVerticalAligned(Z)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->setButtonsVerticalAligned(Z)V

    return-void
.end method

.method public bridge synthetic setCancelableOnOrientation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->setCancelableOnOrientation(Z)V

    return-void
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setParentContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->setParentContext(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->setView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic show()V
    .locals 0

    invoke-super {p0}, Lzui/app/a;->show()V

    return-void
.end method

.method public showAtLocation(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    iget-object v1, p0, Lzui/app/a;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {p0, v1}, Lzui/app/FloatDialog;->isInLandscape(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/internal/app/FloatController;->setOrientation(Z)V

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p1}, Lcom/zui/internal/app/FloatController;->beforeShow(Landroid/graphics/Rect;)V

    invoke-super {p0}, Lzui/app/a;->show()V

    iget-object p0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast p0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {p0, p1}, Lcom/zui/internal/app/FloatController;->postShow(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showAtLocation(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p2}, Lcom/zui/internal/app/FloatController;->setGlobalOffset(Landroid/graphics/Point;)V

    invoke-virtual {p0, p1}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v1, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v1, p1}, Lcom/zui/internal/app/FloatController;->setArchorView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;IIZ)V
    .locals 1

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p2, p3}, Lcom/zui/internal/app/FloatController;->setPositionOffset(II)V

    invoke-virtual {p0, p1, p4}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;Z)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 1

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p2}, Lcom/zui/internal/app/FloatController;->setGlobalOffset(Landroid/graphics/Point;)V

    invoke-virtual {p0, p1, p3}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;Z)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v0, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v0, p2}, Lcom/zui/internal/app/FloatController;->hideArchorView(Z)V

    invoke-virtual {p0, p1}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;)V

    return-void
.end method
