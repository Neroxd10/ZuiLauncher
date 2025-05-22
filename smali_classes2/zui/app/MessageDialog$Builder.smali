.class public Lzui/app/MessageDialog$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/app/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private final b:Lcom/zui/internal/app/MessageController$MessageParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lzui/platform/R$attr;->messageDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_MessageDialog:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lzui/platform/R$attr;->messageDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_MessageDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result p2

    iput p2, p0, Lzui/app/MessageDialog$Builder;->a:I

    new-instance v0, Lcom/zui/internal/app/MessageController$MessageParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/zui/internal/app/MessageController$MessageParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mParentContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addGroup(II)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lzui/app/MessageDialog$Builder;->addGroup(Ljava/lang/CharSequence;I)Lzui/app/MessageDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addGroup(Ljava/lang/CharSequence;I)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    invoke-virtual {v0, p1, p2}, Lcom/zui/internal/app/MessageController$MessageParams;->addGroup(Ljava/lang/CharSequence;I)V

    :cond_0
    return-object p0
.end method

.method public addPairedItem2Group(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zui/internal/app/MessageController$MessageParams;->addItemToGroup(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public create()Lzui/app/MessageDialog;
    .locals 4

    new-instance v0, Lzui/app/MessageDialog;

    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lzui/app/MessageDialog$Builder;->a:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzui/app/MessageDialog;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v2, v0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v2, Lcom/zui/internal/app/MessageController;

    invoke-virtual {v1, v2}, Lcom/zui/internal/app/MessageController$MessageParams;->apply(Lcom/zui/internal/app/MessageController;)V

    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsDialogCenter:Z

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog;->setDialogCenter(Z)V

    iget-object p0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mParentContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lzui/app/MessageDialog;->setParentContext(Landroid/content/Context;)V

    return-object v0
.end method

.method public enableCustomizedLineFeed(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCustomizedLF:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public hideButtonPanelDivider(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mHideBtnPanelDivider:Z

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setButtonsVerticalAligned(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsVerticalBtn:Z

    return-object p0
.end method

.method public setCancelable(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    return-object p0
.end method

.method public setCheckMessage(IZ)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckMessage:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIsChecked:Z

    return-object p0
.end method

.method public setCheckMessage(Ljava/lang/CharSequence;Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckMessage:Ljava/lang/CharSequence;

    iput-boolean p2, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIsChecked:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickableTexts:[Ljava/lang/CharSequence;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Lzui/app/MessageDialog$OnDescriptionClickableTextListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickableTexts:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    return-object p0
.end method

.method public setDialogCenter(Z)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIsDialogCenter:Z

    return-object p0
.end method

.method public setEditorErrorMessage(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorError:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorErrorMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorError:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorHint(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorHint(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorPromptMessage(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorPrompt:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorPromptMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorPrompt:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorText(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorText(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditorTextWatcher(Landroid/text/TextWatcher;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public setIcon(I)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lzui/app/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    return-object p0
.end method

.method public setIcon(II)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(III)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mIconHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lzui/app/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mIconHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessageDialogType(I)Lzui/app/MessageDialog$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mType:I

    :cond_0
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItems:[Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    iput-object p4, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsCheckedColumn:Ljava/lang/String;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItems:[Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPairedItems(II)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lzui/app/MessageDialog$Builder;->setPairedItems(III)Lzui/app/MessageDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPairedItems(III)Lzui/app/MessageDialog$Builder;
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsTitle:[Ljava/lang/CharSequence;

    :cond_0
    if-lez p2, :cond_1

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v0, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsMessage:[Ljava/lang/CharSequence;

    :cond_1
    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p3, p1, Lcom/zui/internal/app/MessageController$MessageParams;->mItemHighlight:I

    return-object p0
.end method

.method public setPairedItems(Lzui/widget/PairedItemListAdapter;)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lzui/app/MessageDialog$Builder;->setPairedItems(Lzui/widget/PairedItemListAdapter;I)Lzui/app/MessageDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPairedItems(Lzui/widget/PairedItemListAdapter;I)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    iput p2, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemHighlight:I

    return-object p0
.end method

.method public setPairedItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lzui/app/MessageDialog$Builder;->setPairedItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)Lzui/app/MessageDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPairedItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsTitle:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsMessage:[Ljava/lang/CharSequence;

    iput p3, v0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemHighlight:I

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p3, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    iput-object p4, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleIcon(I)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIconId:I

    return-object p0
.end method

.method public setTitleIcon(Landroid/graphics/drawable/Drawable;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setTitleIconAttribute(I)Lzui/app/MessageDialog$Builder;
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p1, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIconId:I

    return-object p0
.end method

.method public setView(I)Lzui/app/MessageDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mView:Landroid/view/View;

    iput p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lzui/app/MessageDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/MessageDialog$Builder;->b:Lcom/zui/internal/app/MessageController$MessageParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lzui/app/MessageDialog;
    .locals 0

    invoke-virtual {p0}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p0

    invoke-virtual {p0}, Lzui/app/MessageDialog;->show()V

    return-object p0
.end method
