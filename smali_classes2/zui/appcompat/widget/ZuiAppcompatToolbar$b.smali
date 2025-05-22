.class Lzui/appcompat/widget/ZuiAppcompatToolbar$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzui/app/FloatDialog$MenuAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/widget/ZuiAppcompatToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/view/Menu;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lzui/app/FloatDialog;

.field final synthetic d:Lzui/appcompat/widget/ZuiAppcompatToolbar;


# direct methods
.method private constructor <init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->d:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;Lzui/appcompat/widget/ZuiAppcompatToolbar$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;-><init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V

    return-void
.end method

.method static synthetic a(Lzui/appcompat/widget/ZuiAppcompatToolbar$b;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->e(Landroid/view/Menu;)V

    return-void
.end method

.method private b(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result p0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, p0, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->isVisible()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private c()Lzui/app/FloatDialog;
    .locals 3

    new-instance v0, Lzui/app/FloatDialog$Builder;

    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->d:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-static {v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->f(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroid/content/Context;

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

.method private d(Landroid/view/Menu;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    :try_start_0
    const-string v0, "androidx.appcompat.view.menu.MenuBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getActionItems"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "not allow to invoke getActionItems!"

    goto :goto_1

    :catch_1
    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "not allow to access getActionItems!"

    goto :goto_1

    :catch_2
    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "find getActionItems failed!"

    goto :goto_1

    :catch_3
    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get menubuilder class failed!"

    :goto_1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method private e(Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->a:Landroid/view/Menu;

    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->d(Landroid/view/Menu;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 4

    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->c:Lzui/app/FloatDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->c()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->c:Lzui/app/FloatDialog;

    :cond_0
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->c:Lzui/app/FloatDialog;

    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->d:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-static {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->d(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    invoke-static {}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->e()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;IIZ)V

    return-void
.end method

.method public onCreateFloatDialog(Landroid/view/Menu;Landroid/view/View;)V
    .locals 6

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->a:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->a:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

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

    invoke-direct {p0, v1, v4}, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->b(Landroid/view/Menu;Landroid/view/MenuItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->b(Landroid/view/Menu;Landroid/view/MenuItem;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onFloatDialogItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->d:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-static {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    return-void
.end method
