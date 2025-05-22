.class public Lzui/widget/ZuiMenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/ZuiMenuListAdapter$c;,
        Lzui/widget/ZuiMenuListAdapter$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/zui/internal/menu/MenuBuilder;

.field private d:Lcom/zui/internal/menu/MenuBuilder;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzui/widget/ZuiMenuListAdapter$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter;->a:Landroid/content/Context;

    iput p2, p0, Lzui/widget/ZuiMenuListAdapter;->b:I

    return-void
.end method

.method private a(Landroid/view/Menu;Landroid/view/MenuItem;)V
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

.method private b()I
    .locals 0

    iget-object p0, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method private c(Landroid/view/Menu;Z)V
    .locals 5

    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lzui/widget/ZuiMenuListAdapter$c;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lzui/widget/ZuiMenuListAdapter$c;-><init>(Lzui/widget/ZuiMenuListAdapter;ILjava/lang/CharSequence;)V

    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lzui/widget/ZuiMenuListAdapter$c;->f(Z)V

    :cond_0
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lzui/widget/ZuiMenuListAdapter$c;->g(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, p2}, Lzui/widget/ZuiMenuListAdapter$c;->h(Z)V

    iget-object v1, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    invoke-direct {p0}, Lzui/widget/ZuiMenuListAdapter;->b()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzui/widget/ZuiMenuListAdapter$c;

    invoke-virtual {p0}, Lzui/widget/ZuiMenuListAdapter$c;->c()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getMenuId(I)I
    .locals 0

    iget-object p0, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzui/widget/ZuiMenuListAdapter$c;

    invoke-virtual {p0}, Lzui/widget/ZuiMenuListAdapter$c;->c()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lzui/widget/ZuiMenuListAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v1, p0, Lzui/widget/ZuiMenuListAdapter;->b:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lzui/widget/ZuiMenuListAdapter$b;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lzui/widget/ZuiMenuListAdapter$b;-><init>(Lzui/widget/ZuiMenuListAdapter;Lzui/widget/ZuiMenuListAdapter$a;)V

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lzui/widget/ZuiMenuListAdapter$b;->a:Landroid/widget/TextView;

    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lzui/widget/ZuiMenuListAdapter$b;->b:Landroid/widget/ImageView;

    const v1, 0x1020007

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lzui/widget/ZuiMenuListAdapter$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzui/widget/ZuiMenuListAdapter$b;

    :goto_0
    iget-object p0, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzui/widget/ZuiMenuListAdapter$c;

    iget-object p1, p3, Lzui/widget/ZuiMenuListAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzui/widget/ZuiMenuListAdapter$c;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p3, Lzui/widget/ZuiMenuListAdapter$b;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lzui/widget/ZuiMenuListAdapter$c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Lzui/widget/ZuiMenuListAdapter$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p3, Lzui/widget/ZuiMenuListAdapter$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object p1, p3, Lzui/widget/ZuiMenuListAdapter$b;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lzui/widget/ZuiMenuListAdapter$c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lzui/widget/ZuiMenuListAdapter$c;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p3, Lzui/widget/ZuiMenuListAdapter$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lzui/widget/ZuiMenuListAdapter$c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p3, Lzui/widget/ZuiMenuListAdapter$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p0, p3, Lzui/widget/ZuiMenuListAdapter$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-object p2
.end method

.method public initMenu(Lcom/zui/internal/menu/MenuBuilder;)V
    .locals 3

    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter;->c:Lcom/zui/internal/menu/MenuBuilder;

    new-instance p1, Lcom/zui/internal/menu/MenuBuilder;

    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter;->d:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lzui/widget/ZuiMenuListAdapter;->c:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lzui/widget/ZuiMenuListAdapter;->d:Lcom/zui/internal/menu/MenuBuilder;

    iget-object v2, p0, Lzui/widget/ZuiMenuListAdapter;->c:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/zui/internal/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/internal/menu/MenuBuilder;->putItem(Landroid/view/MenuItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->d:Lcom/zui/internal/menu/MenuBuilder;

    invoke-direct {p0, v0, p1}, Lzui/widget/ZuiMenuListAdapter;->c(Landroid/view/Menu;Z)V

    return-void
.end method

.method public onDismiss()V
    .locals 4

    iget-boolean v0, p0, Lzui/widget/ZuiMenuListAdapter;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/zui/internal/menu/MenuBuilder;

    iget-object v2, p0, Lzui/widget/ZuiMenuListAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->d:Lcom/zui/internal/menu/MenuBuilder;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lzui/widget/ZuiMenuListAdapter;->c:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lzui/widget/ZuiMenuListAdapter;->d:Lcom/zui/internal/menu/MenuBuilder;

    iget-object v3, p0, Lzui/widget/ZuiMenuListAdapter;->c:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v3, v0}, Lcom/zui/internal/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/internal/menu/MenuBuilder;->putItem(Landroid/view/MenuItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->d:Lcom/zui/internal/menu/MenuBuilder;

    invoke-direct {p0, v0, v1}, Lzui/widget/ZuiMenuListAdapter;->c(Landroid/view/Menu;Z)V

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lzui/widget/ZuiMenuListAdapter;->f:Z

    :goto_1
    return-void
.end method

.method public onItemSelected(I)Z
    .locals 4

    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzui/widget/ZuiMenuListAdapter$c;

    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->c:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1}, Lzui/widget/ZuiMenuListAdapter$c;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    new-instance v0, Lcom/zui/internal/menu/MenuBuilder;

    iget-object v3, p0, Lzui/widget/ZuiMenuListAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->d:Lcom/zui/internal/menu/MenuBuilder;

    invoke-interface {p1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lzui/widget/ZuiMenuListAdapter;->a(Landroid/view/Menu;Landroid/view/MenuItem;)V

    :goto_0
    invoke-interface {p1}, Landroid/view/SubMenu;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter;->d:Lcom/zui/internal/menu/MenuBuilder;

    invoke-interface {p1, v1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lzui/widget/ZuiMenuListAdapter;->a(Landroid/view/Menu;Landroid/view/MenuItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lzui/widget/ZuiMenuListAdapter;->d:Lcom/zui/internal/menu/MenuBuilder;

    invoke-direct {p0, p1, v2}, Lzui/widget/ZuiMenuListAdapter;->c(Landroid/view/Menu;Z)V

    iput-boolean v2, p0, Lzui/widget/ZuiMenuListAdapter;->f:Z

    move v1, v2

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lzui/widget/ZuiMenuListAdapter;->f:Z

    :cond_2
    :goto_1
    return v1
.end method
