.class Lzui/widget/SimpleToolbar$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzui/app/FloatDialog$MenuAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SimpleToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lzui/app/FloatDialog;

.field final synthetic b:Lzui/widget/SimpleToolbar;


# direct methods
.method private constructor <init>(Lzui/widget/SimpleToolbar;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/SimpleToolbar;Lzui/widget/SimpleToolbar$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar$b;-><init>(Lzui/widget/SimpleToolbar;)V

    return-void
.end method

.method private a()Lzui/app/FloatDialog;
    .locals 3

    new-instance v0, Lzui/app/FloatDialog$Builder;

    iget-object v1, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzui/platform/R$style;->Theme_Zui_FloatDialog_OverflowMenu:I

    invoke-direct {v0, v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p0}, Lzui/app/FloatDialog$Builder;->setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;)Lzui/app/FloatDialog$Builder;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lzui/widget/SimpleToolbar$b;->a:Lzui/app/FloatDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzui/widget/SimpleToolbar$b;->a()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/SimpleToolbar$b;->a:Lzui/app/FloatDialog;

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    iget-object v2, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-static {v2}, Lzui/widget/SimpleToolbar;->f(Lzui/widget/SimpleToolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    iget-object v2, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-static {v2}, Lzui/widget/SimpleToolbar;->f(Lzui/widget/SimpleToolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    iget-object v2, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lzui/platform/R$dimen;->simple_toolbar_popup_menu_offset_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lzui/platform/R$dimen;->simple_toolbar_popup_menu_offset_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    const/4 v4, 0x0

    aget v5, v0, v4

    aget v4, v1, v4

    sub-int/2addr v5, v4

    add-int/2addr v5, v2

    aget v0, v0, v3

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->simple_toolbar_popup_menu_offset_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lzui/widget/SimpleToolbar$b;->a:Lzui/app/FloatDialog;

    iget-object p0, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-static {p0}, Lzui/widget/SimpleToolbar;->f(Lzui/widget/SimpleToolbar;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {v1, p0, v5, v0, v3}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;IIZ)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lzui/widget/SimpleToolbar$b;->a:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/SimpleToolbar$b;->a:Lzui/app/FloatDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/SimpleToolbar$b;->a:Lzui/app/FloatDialog;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lzui/widget/SimpleToolbar$b;->c()V

    :goto_0
    return-void
.end method

.method public onCreateFloatDialog(Landroid/view/Menu;Landroid/view/View;)V
    .locals 6

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-static {v1}, Lzui/widget/SimpleToolbar;->c(Lzui/widget/SimpleToolbar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-static {v1}, Lzui/widget/SimpleToolbar;->c(Lzui/widget/SimpleToolbar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v5

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v3, v4, v5, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    move v3, p2

    :goto_1
    invoke-interface {v2}, Landroid/view/SubMenu;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-static {v5, v1, v4}, Lzui/widget/SimpleToolbar;->d(Lzui/widget/SimpleToolbar;Landroid/view/Menu;Landroid/view/MenuItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-static {v2, p1, v1}, Lzui/widget/SimpleToolbar;->d(Lzui/widget/SimpleToolbar;Landroid/view/Menu;Landroid/view/MenuItem;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onFloatDialogItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-static {v0}, Lzui/widget/SimpleToolbar;->e(Lzui/widget/SimpleToolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/widget/SimpleToolbar$b;->b:Lzui/widget/SimpleToolbar;

    invoke-static {p0}, Lzui/widget/SimpleToolbar;->e(Lzui/widget/SimpleToolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
