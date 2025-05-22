.class public Lzui/app/FloatDialog$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/app/FloatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/zui/internal/app/FloatController$FloatParams;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lzui/platform/R$attr;->floatDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_FloatDialog:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lzui/platform/R$attr;->floatDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_FloatDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result p2

    iput p2, p0, Lzui/app/FloatDialog$Builder;->b:I

    new-instance v0, Lcom/zui/internal/app/FloatController$FloatParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/zui/internal/app/FloatController$FloatParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mParentContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lzui/app/FloatDialog;
    .locals 4

    new-instance v0, Lzui/app/FloatDialog;

    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lzui/app/FloatDialog$Builder;->b:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzui/app/FloatDialog;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v2, v0, Lzui/app/a;->mController:Lcom/zui/internal/app/DialogController;

    check-cast v2, Lcom/zui/internal/app/FloatController;

    invoke-virtual {v1, v2}, Lcom/zui/internal/app/FloatController$FloatParams;->apply(Lcom/zui/internal/app/FloatController;)V

    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-boolean v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v1, v1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mParentContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lzui/app/FloatDialog;->setParentContext(Landroid/content/Context;)V

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    iput-object p3, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setGaussBlurParams(I)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mGaussBlurRadius:I

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;
    .locals 2

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iget-object v1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorMaskWinBg:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setMaskWindowColor(I)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mMaskWinColor:I

    return-object p0
.end method

.method public setMaxHeight(I)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mDialogMaxHeight:I

    return-object p0
.end method

.method public setMaxWidth(I)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mDialogMaxWidth:I

    return-object p0
.end method

.method public setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    return-object p0
.end method

.method public setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;Landroid/view/View;)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    iput-object p2, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorView:Landroid/view/View;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-boolean p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mSystemStyle:Z

    return-object p0
.end method

.method public showAtLocation(Landroid/graphics/Rect;)Lzui/app/FloatDialog;
    .locals 0

    invoke-virtual {p0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public showAtLocation(Landroid/graphics/Rect;Landroid/graphics/Point;)Lzui/app/FloatDialog;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mGlobalOffset:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lzui/app/FloatDialog$Builder;->showAtLocation(Landroid/graphics/Rect;)Lzui/app/FloatDialog;

    move-result-object p0

    return-object p0
.end method

.method public showAtLocation(Landroid/view/View;)Lzui/app/FloatDialog;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p1, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorView:Landroid/view/View;

    invoke-virtual {p0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public showAtLocation(Landroid/view/View;Landroid/graphics/Point;)Lzui/app/FloatDialog;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-object p2, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mGlobalOffset:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lzui/app/FloatDialog$Builder;->showAtLocation(Landroid/view/View;)Lzui/app/FloatDialog;

    move-result-object p0

    return-object p0
.end method

.method public showAtLocation(Landroid/view/View;Z)Lzui/app/FloatDialog;
    .locals 1

    iget-object v0, p0, Lzui/app/FloatDialog$Builder;->a:Lcom/zui/internal/app/FloatController$FloatParams;

    iput-boolean p2, v0, Lcom/zui/internal/app/FloatController$FloatParams;->mHideArchorView:Z

    invoke-virtual {p0, p1}, Lzui/app/FloatDialog$Builder;->showAtLocation(Landroid/view/View;)Lzui/app/FloatDialog;

    move-result-object p0

    return-object p0
.end method
