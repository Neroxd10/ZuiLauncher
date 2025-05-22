.class public Lcom/zui/internal/menu/SubMenuBuilder;
.super Lcom/zui/internal/menu/MenuBuilder;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private x:Lcom/zui/internal/menu/MenuBuilder;

.field private y:Lcom/zui/internal/menu/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/internal/menu/MenuBuilder;Lcom/zui/internal/menu/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    iput-object p3, p0, Lcom/zui/internal/menu/SubMenuBuilder;->y:Lcom/zui/internal/menu/a;

    return-void
.end method


# virtual methods
.method c(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->c(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->c(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public collapseItemActionView(Lcom/zui/internal/menu/a;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->collapseItemActionView(Lcom/zui/internal/menu/a;)Z

    move-result p0

    return p0
.end method

.method public expandItemActionView(Lcom/zui/internal/menu/a;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->expandItemActionView(Lcom/zui/internal/menu/a;)Z

    move-result p0

    return p0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->y:Lcom/zui/internal/menu/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/internal/menu/a;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/zui/internal/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->y:Lcom/zui/internal/menu/a;

    return-object p0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    return-object p0
.end method

.method public getRootMenu()Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->getRootMenu()Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p0

    return-object p0
.end method

.method public isQwertyMode()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->isQwertyMode()Z

    move-result p0

    return p0
.end method

.method public isShortcutsVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/zui/internal/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result p0

    return p0
.end method

.method public setCallback(Lcom/zui/internal/menu/MenuBuilder$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setCallback(Lcom/zui/internal/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->y:Lcom/zui/internal/menu/a;

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/a;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->y:Lcom/zui/internal/menu/a;

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/a;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setQwertyMode(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/SubMenuBuilder;->x:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/MenuBuilder;->setShortcutsVisible(Z)V

    return-void
.end method
