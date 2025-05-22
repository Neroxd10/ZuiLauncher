.class public Lzui/app/ActionDialog$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/app/ActionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/zui/internal/app/ActionController$ActionParams;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result p2

    iput p2, p0, Lzui/app/ActionDialog$Builder;->b:I

    new-instance v0, Lcom/zui/internal/app/ActionController$ActionParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/zui/internal/app/ActionController$ActionParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mParentContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lzui/app/ActionDialog;
    .locals 5

    new-instance v0, Lzui/app/ActionDialog;

    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lzui/app/ActionDialog$Builder;->b:I

    iget-boolean v3, p0, Lzui/app/ActionDialog$Builder;->c:Z

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v2, v0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v2, Lcom/zui/internal/app/ActionController;

    invoke-virtual {v1, v2}, Lcom/zui/internal/app/ActionController$ActionParams;->apply(Lcom/zui/internal/app/ActionController;)V

    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mParentContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lzui/app/ActionDialog;->setParentContext(Landroid/content/Context;)V

    return-object v0
.end method

.method public enableCustomizedLineFeed(Z)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCustomizedLF:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public hideButtonPanelDivider(Z)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mHideBtnPanelDivider:Z

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setButtonTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/app/ActionDialog$Builder;->c:Z

    return-void
.end method

.method public setButtonsVerticalAligned(Z)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsVerticalBtn:Z

    return-object p0
.end method

.method public setCancelable(Z)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Lzui/app/ActionDialog$Builder;
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIconId:I

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMenuAdapter(Lzui/app/ActionDialog$MenuAdapter;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mMenuAdapter:Lzui/app/ActionDialog$MenuAdapter;

    return-object p0
.end method

.method public setMenuAdapter(Lzui/app/ActionDialog$MenuAdapter;Landroid/view/View;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mMenuAdapter:Lzui/app/ActionDialog$MenuAdapter;

    iput-object p2, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mAttachedView:Landroid/view/View;

    return-object p0
.end method

.method public setMessage(I)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessageTitle(I)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    return-object p0
.end method

.method public setMessageTitle(Ljava/lang/CharSequence;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitle:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItems:[Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    iput-object p4, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsCheckedColumn:Ljava/lang/String;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItems:[Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setOptionItems(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mOptionItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mOptionItems:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p3, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    iput-object p4, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitle:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/zui/internal/app/ActionController$ActionParams;->mMessageTitle:Z

    return-object p0
.end method

.method public setView(I)Lzui/app/ActionDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mView:Landroid/view/View;

    iput p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lzui/app/ActionDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/ActionDialog$Builder;->a:Lcom/zui/internal/app/ActionController$ActionParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lzui/app/ActionDialog;
    .locals 0

    invoke-virtual {p0}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object p0

    invoke-virtual {p0}, Lzui/app/ActionDialog;->show()V

    return-object p0
.end method
