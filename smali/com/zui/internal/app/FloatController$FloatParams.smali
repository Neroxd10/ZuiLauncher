.class public Lcom/zui/internal/app/FloatController$FloatParams;
.super Lcom/zui/internal/app/DialogController$DialogParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/FloatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatParams"
.end annotation


# instance fields
.field public mArchorMaskWinBg:Landroid/graphics/drawable/Drawable;

.field public mArchorView:Landroid/view/View;

.field public mDialogMaxHeight:I

.field public mDialogMaxWidth:I

.field public mGaussBlurRadius:I

.field public mGlobalOffset:Landroid/graphics/Point;

.field public mHideArchorView:Z

.field public mMaskWinColor:I

.field public mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

.field public mSystemStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mGaussBlurRadius:I

    iput p1, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mMaskWinColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCancelable:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/zui/internal/app/FloatController;)V
    .locals 3

    iget v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mGaussBlurRadius:I

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->y(Lcom/zui/internal/app/FloatController;I)I

    iget v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mMaskWinColor:I

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->B(Lcom/zui/internal/app/FloatController;I)I

    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorMaskWinBg:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->C(Lcom/zui/internal/app/FloatController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mArchorView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->E(Lcom/zui/internal/app/FloatController;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->G(Lcom/zui/internal/app/FloatController;Lzui/app/FloatDialog$MenuAdapter;)Lzui/app/FloatDialog$MenuAdapter;

    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mGlobalOffset:Landroid/graphics/Point;

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->H(Lcom/zui/internal/app/FloatController;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-boolean v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mHideArchorView:Z

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->I(Lcom/zui/internal/app/FloatController;Z)Z

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mMenuAdapter:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/internal/menu/MenuBuilder;

    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->K(Lcom/zui/internal/app/FloatController;Lcom/zui/internal/menu/MenuBuilder;)Lcom/zui/internal/menu/MenuBuilder;

    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->F(Lcom/zui/internal/app/FloatController;)Lzui/app/FloatDialog$MenuAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->J(Lcom/zui/internal/app/FloatController;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->D(Lcom/zui/internal/app/FloatController;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lzui/app/FloatDialog$MenuAdapter;->onCreateFloatDialog(Landroid/view/Menu;Landroid/view/View;)V

    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->L(Lcom/zui/internal/app/FloatController;)Lzui/widget/ZuiMenuListAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->J(Lcom/zui/internal/app/FloatController;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/widget/ZuiMenuListAdapter;->initMenu(Lcom/zui/internal/menu/MenuBuilder;)V

    invoke-static {p1}, Lcom/zui/internal/app/FloatController;->L(Lcom/zui/internal/app/FloatController;)Lzui/widget/ZuiMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_0
    iget-boolean v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mSystemStyle:Z

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->x(Lcom/zui/internal/app/FloatController;Z)Z

    iget v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mDialogMaxHeight:I

    if-lez v0, :cond_1

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->z(Lcom/zui/internal/app/FloatController;I)I

    :cond_1
    iget v0, p0, Lcom/zui/internal/app/FloatController$FloatParams;->mDialogMaxWidth:I

    if-lez v0, :cond_2

    invoke-static {p1, v0}, Lcom/zui/internal/app/FloatController;->A(Lcom/zui/internal/app/FloatController;I)I

    :cond_2
    invoke-super {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;->apply(Lcom/zui/internal/app/DialogController;)V

    return-void
.end method
