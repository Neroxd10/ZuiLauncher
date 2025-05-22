.class final Lcom/zui/internal/menu/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/menu/a$b;
    }
.end annotation


# static fields
.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/MenuItem$OnActionExpandListener;

.field private B:Z

.field private C:Landroid/view/ContextMenu$ContextMenuInfo;

.field private D:Ljava/lang/CharSequence;

.field private E:Ljava/lang/CharSequence;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:I

.field private j:C

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/graphics/PorterDuff$Mode;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/zui/internal/menu/MenuBuilder;

.field private t:Lcom/zui/internal/menu/SubMenuBuilder;

.field private u:Ljava/lang/Runnable;

.field private v:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private w:I

.field private x:I

.field private y:Landroid/view/View;

.field private z:Landroid/view/ActionProvider;


# direct methods
.method constructor <init>(Lcom/zui/internal/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/zui/internal/menu/a;->i:I

    iput v0, p0, Lcom/zui/internal/menu/a;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/internal/menu/a;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/internal/menu/a;->n:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/zui/internal/menu/a;->o:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Lcom/zui/internal/menu/a;->p:Z

    iput-boolean v0, p0, Lcom/zui/internal/menu/a;->q:Z

    iput-boolean v0, p0, Lcom/zui/internal/menu/a;->r:Z

    const/16 v1, 0x10

    iput v1, p0, Lcom/zui/internal/menu/a;->w:I

    iput v0, p0, Lcom/zui/internal/menu/a;->x:I

    iput-boolean v0, p0, Lcom/zui/internal/menu/a;->B:Z

    invoke-virtual {p1}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/internal/menu/a;->G:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/internal/menu/a;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sput-object v0, Lcom/zui/internal/menu/a;->F:Ljava/lang/String;

    const-string v0, "prepend_shortcut_label"

    const-string v1, ""

    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/internal/menu/a;->G:Ljava/lang/String;

    const-string v0, "menu_enter_shortcut_label"

    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "menu_delete_shortcut_label"

    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "menu_space_shortcut_label"

    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    iput p3, p0, Lcom/zui/internal/menu/a;->a:I

    iput p2, p0, Lcom/zui/internal/menu/a;->b:I

    iput p4, p0, Lcom/zui/internal/menu/a;->c:I

    iput p5, p0, Lcom/zui/internal/menu/a;->d:I

    iput-object p6, p0, Lcom/zui/internal/menu/a;->e:Ljava/lang/CharSequence;

    iput p7, p0, Lcom/zui/internal/menu/a;->x:I

    return-void
.end method

.method static synthetic a(Lcom/zui/internal/menu/a;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    return-object p0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/zui/internal/menu/a;->r:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/internal/menu/a;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/internal/menu/a;->q:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean v0, p0, Lcom/zui/internal/menu/a;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/menu/a;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/zui/internal/menu/a;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/internal/menu/a;->o:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/internal/menu/a;->r:Z

    :cond_3
    return-object p1
.end method


# virtual methods
.method public c()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/menu/a;->d:I

    return p0
.end method

.method public collapseActionView()Z
    .locals 2

    iget v0, p0, Lcom/zui/internal/menu/a;->x:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/a;->y:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Lcom/zui/internal/menu/a;->A:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zui/internal/menu/MenuBuilder;->collapseItemActionView(Lcom/zui/internal/menu/a;)Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/zui/internal/menu/a;->x:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/menu/a;->y:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/menu/a;->y:Landroid/view/View;

    :cond_0
    iget-object p0, p0, Lcom/zui/internal/menu/a;->y:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public e()Z
    .locals 4

    iget-object v0, p0, Lcom/zui/internal/menu/a;->v:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, v0, p0}, Lcom/zui/internal/menu/MenuBuilder;->c(Lcom/zui/internal/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/zui/internal/menu/a;->u:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/zui/internal/menu/a;->g:Landroid/content/Intent;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/internal/menu/a;->g:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object p0, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public expandActionView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/zui/internal/menu/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/a;->A:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zui/internal/menu/MenuBuilder;->expandItemActionView(Lcom/zui/internal/menu/a;)Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 1

    iget p0, p0, Lcom/zui/internal/menu/a;->w:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Z
    .locals 0

    iget p0, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    return-object p0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/menu/a;->y:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/menu/a;->y:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlphabeticModifiers()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/menu/a;->k:I

    return p0
.end method

.method public getAlphabeticShortcut()C
    .locals 0

    iget-char p0, p0, Lcom/zui/internal/menu/a;->j:C

    return p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->D:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getGroupId()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/menu/a;->b:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/menu/a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/zui/internal/menu/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/zui/internal/menu/a;->m:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/zui/internal/menu/a;->m:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/internal/menu/a;->m:I

    iput-object v0, p0, Lcom/zui/internal/menu/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/zui/internal/menu/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->n:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->o:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public getItemId()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget p0, p0, Lcom/zui/internal/menu/a;->a:I

    return p0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->C:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object p0
.end method

.method public getNumericModifiers()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/menu/a;->i:I

    return p0
.end method

.method public getNumericShortcut()C
    .locals 0

    iget-char p0, p0, Lcom/zui/internal/menu/a;->h:C

    return p0
.end method

.method public getOrder()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/menu/a;->c:I

    return p0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->t:Lcom/zui/internal/menu/SubMenuBuilder;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object p0, p0, Lcom/zui/internal/menu/a;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/menu/a;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/menu/a;->e:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->E:Ljava/lang/CharSequence;

    return-object p0
.end method

.method h(Z)V
    .locals 3

    iget v0, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Lcom/zui/internal/menu/a;->w:I

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p0, v2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public hasSubMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->t:Lcom/zui/internal/menu/SubMenuBuilder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i(Z)V
    .locals 1

    iget v0, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/internal/menu/a;->w:I

    return-void
.end method

.method public isActionViewExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/internal/menu/a;->B:Z

    return p0
.end method

.method public isCheckable()Z
    .locals 1

    iget p0, p0, Lcom/zui/internal/menu/a;->w:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget p0, p0, Lcom/zui/internal/menu/a;->w:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget p0, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible()Z
    .locals 3

    iget-object v0, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget p0, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method j(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/menu/a;->C:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method k(Lcom/zui/internal/menu/SubMenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/menu/a;->t:Lcom/zui/internal/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/zui/internal/menu/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method l(Z)Z
    .locals 3

    iget v0, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Lcom/zui/internal/menu/a;->w:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public requiresActionButton()Z
    .locals 1

    iget p0, p0, Lcom/zui/internal/menu/a;->x:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requiresOverflow()Z
    .locals 1

    iget p0, p0, Lcom/zui/internal/menu/a;->x:I

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/internal/menu/a$b;

    invoke-direct {v0}, Lcom/zui/internal/menu/a$b;-><init>()V

    iget-object v1, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    invoke-virtual {v0, v1}, Lcom/zui/internal/menu/a$b;->setRealObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/zui/internal/menu/a$b;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/internal/menu/a;->y:Landroid/view/View;

    iput-object p1, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    iget-object p1, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/zui/internal/menu/a$a;

    invoke-direct {v0, p0}, Lcom/zui/internal/menu/a$a;-><init>(Lcom/zui/internal/menu/a;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    :cond_1
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3

    iget-object v0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/a;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/zui/internal/menu/a;->y:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/internal/menu/a;->z:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zui/internal/menu/a;->a:I

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/MenuBuilder;->m(Lcom/zui/internal/menu/a;)V

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, Lcom/zui/internal/menu/a;->j:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/zui/internal/menu/a;->j:C

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, Lcom/zui/internal/menu/a;->j:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/zui/internal/menu/a;->k:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/zui/internal/menu/a;->j:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/menu/a;->k:I

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Lcom/zui/internal/menu/a;->w:I

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget v0, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/MenuBuilder;->p(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/a;->h(Z)V

    :goto_0
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lcom/zui/internal/menu/a;->D:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zui/internal/menu/a;->w:I

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zui/internal/menu/a;->w:I

    and-int/lit8 p1, p1, -0x11

    :goto_0
    iput p1, p0, Lcom/zui/internal/menu/a;->w:I

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/internal/menu/a;->l:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/zui/internal/menu/a;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/internal/menu/a;->r:Z

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/internal/menu/a;->m:I

    iput-object p1, p0, Lcom/zui/internal/menu/a;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/internal/menu/a;->r:Z

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lcom/zui/internal/menu/a;->n:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/internal/menu/a;->p:Z

    iput-boolean p1, p0, Lcom/zui/internal/menu/a;->r:Z

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lcom/zui/internal/menu/a;->o:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/internal/menu/a;->q:Z

    iput-boolean p1, p0, Lcom/zui/internal/menu/a;->r:Z

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/menu/a;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, Lcom/zui/internal/menu/a;->h:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, Lcom/zui/internal/menu/a;->h:C

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-char v0, p0, Lcom/zui/internal/menu/a;->h:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/zui/internal/menu/a;->i:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, Lcom/zui/internal/menu/a;->h:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/menu/a;->i:I

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/menu/a;->A:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/menu/a;->v:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, Lcom/zui/internal/menu/a;->h:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/zui/internal/menu/a;->j:C

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    iput-char p1, p0, Lcom/zui/internal/menu/a;->h:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/menu/a;->i:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/zui/internal/menu/a;->j:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/menu/a;->k:I

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/zui/internal/menu/a;->x:I

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/MenuBuilder;->m(Lcom/zui/internal/menu/a;)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/a;->setShowAsAction(I)V

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/a;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Lcom/zui/internal/menu/a;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    iget-object v0, p0, Lcom/zui/internal/menu/a;->t:Lcom/zui/internal/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/internal/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lcom/zui/internal/menu/a;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lcom/zui/internal/menu/a;->E:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/internal/menu/a;->l(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/menu/a;->s:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/MenuBuilder;->n(Lcom/zui/internal/menu/a;)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/menu/a;->e:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
