.class public Lzui/app/ProgressDialogX;
.super Lzui/app/a;
.source ""


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/widget/ProgressBar;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 6

    sget v3, Lzui/platform/R$attr;->progressDialogXTheme:I

    sget v4, Lzui/platform/R$style;->Theme_Zui_ProgressDialogX:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lzui/app/a;-><init>(Landroid/content/Context;IIIZ)V

    const/4 p2, 0x0

    iput p2, p0, Lzui/app/ProgressDialogX;->c:I

    const/4 p2, -0x1

    iput p2, p0, Lzui/app/ProgressDialogX;->e:I

    iput-object p1, p0, Lzui/app/ProgressDialogX;->b:Landroid/content/Context;

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

.method public getMax()I
    .locals 1

    iget-object v0, p0, Lzui/app/ProgressDialogX;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lzui/app/ProgressDialogX;->i:I

    return p0
.end method

.method public bridge synthetic getParentContext()Landroid/content/Context;
    .locals 0

    invoke-super {p0}, Lzui/app/a;->getParentContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lzui/app/ProgressDialogX;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lzui/app/ProgressDialogX;->h:I

    return p0
.end method

.method public bridge synthetic getTitleView()Landroid/widget/TextView;
    .locals 0

    invoke-super {p0}, Lzui/app/a;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    iget-object v0, p0, Lzui/app/ProgressDialogX;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lzui/app/ProgressDialogX;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lzui/app/ProgressDialogX;->j:I

    :goto_0
    return-void
.end method

.method public bridge synthetic isInLandscape(I)Z
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->isInLandscape(I)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lzui/app/a;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lzui/app/ProgressDialogX;->b:Landroid/content/Context;

    sget-object v0, Lzui/platform/R$styleable;->progressDialogX:[I

    sget v1, Lzui/platform/R$attr;->progressDialogXStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget v0, p0, Lzui/app/ProgressDialogX;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lzui/platform/R$styleable;->progressDialogX_horizontalProgressLayoutX:I

    sget v1, Lzui/platform/R$layout;->progress_dialog_x_horizontal:I

    goto :goto_0

    :cond_0
    sget v0, Lzui/platform/R$styleable;->progressDialogX_progressLayoutX:I

    sget v1, Lzui/platform/R$layout;->progress_dialog_x:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate:mProgressBarStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzui/app/ProgressDialogX;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " layoutId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgressDialogX"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget p1, Lzui/platform/R$id;->message:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzui/app/ProgressDialogX;->d:Landroid/widget/TextView;

    iget p1, p0, Lzui/app/ProgressDialogX;->e:I

    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->setMessage(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lzui/app/ProgressDialogX;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    sget p1, Lzui/platform/R$id;->progress:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lzui/app/ProgressDialogX;->g:Landroid/widget/ProgressBar;

    iget p1, p0, Lzui/app/ProgressDialogX;->i:I

    if-lez p1, :cond_2

    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->setMax(I)V

    :cond_2
    iget p1, p0, Lzui/app/ProgressDialogX;->h:I

    if-lez p1, :cond_3

    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->setProgress(I)V

    :cond_3
    iget p1, p0, Lzui/app/ProgressDialogX;->j:I

    if-lez p1, :cond_4

    invoke-virtual {p0, p1}, Lzui/app/ProgressDialogX;->incrementProgressBy(I)V

    :cond_4
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

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/app/ProgressDialogX;->k:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lzui/app/a;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/app/ProgressDialogX;->k:Z

    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
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

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lzui/app/ProgressDialogX;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lzui/app/ProgressDialogX;->i:I

    :goto_0
    return-void
.end method

.method public setMessage(I)V
    .locals 1

    iput p1, p0, Lzui/app/ProgressDialogX;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/app/ProgressDialogX;->f:Ljava/lang/CharSequence;

    iget-object p0, p0, Lzui/app/ProgressDialogX;->d:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lzui/app/ProgressDialogX;->e:I

    iput-object p1, p0, Lzui/app/ProgressDialogX;->f:Ljava/lang/CharSequence;

    iget-object p0, p0, Lzui/app/ProgressDialogX;->d:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMessageColor(I)V
    .locals 0

    iput p1, p0, Lzui/app/ProgressDialogX;->l:I

    iget-object p0, p0, Lzui/app/ProgressDialogX;->d:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setParentContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/a;->setParentContext(Landroid/content/Context;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-boolean v0, p0, Lzui/app/ProgressDialogX;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/app/ProgressDialogX;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lzui/app/ProgressDialogX;->h:I

    :goto_0
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    iput p1, p0, Lzui/app/ProgressDialogX;->c:I

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
