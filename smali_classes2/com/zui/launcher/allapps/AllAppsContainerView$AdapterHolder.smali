.class public Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/AllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterHolder"
.end annotation


# static fields
.field public static final MAIN:I = 0x0

.field public static final WORK:I = 0x1


# instance fields
.field final a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final adapter:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

.field final b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

.field final c:Landroid/graphics/Rect;

.field d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

.field e:Z

.field final synthetic f:Lcom/zui/launcher/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/AllAppsContainerView;Z)V
    .locals 3

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->c:Landroid/graphics/Rect;

    new-instance v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-static {p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->i(Lcom/zui/launcher/allapps/AllAppsContainerView;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-static {p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->j(Lcom/zui/launcher/allapps/AllAppsContainerView;)Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/zui/launcher/allapps/AllAppsStore;Z)V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    new-instance p2, Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-static {p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->i(Lcom/zui/launcher/allapps/AllAppsContainerView;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-direct {p2, p1, v0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/allapps/AlphabeticalAppsList;)V

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->setAdapter(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->c:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public applyVerticalFadingEdgeEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->e:Z

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->i:[Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-boolean p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    return-void
.end method

.method b(Landroid/view/View;Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/util/ItemInfoMatcher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->updateItemFilter(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    check-cast p1, Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p2}, Lcom/zui/launcher/views/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->b:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    iget-boolean v0, v0, Lcom/zui/launcher/allapps/AllAppsContainerView;->u:Z

    invoke-virtual {p1, p2, v0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->setApps(Lcom/zui/launcher/allapps/AlphabeticalAppsList;Z)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p1, Lcom/zui/launcher/keyboard/FocusedItemDecorator;

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-direct {p1, p2}, Lcom/zui/launcher/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p1}, Lcom/zui/launcher/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->e:Z

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->applyVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->a()V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;->d:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    new-instance p2, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder$a;

    invoke-direct {p2, p0}, Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder$a;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView$AdapterHolder;)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->setOnOverScrollStateChangedListener(Lcom/zui/launcher/views/SpringRelativeLayout$OnOverScrollStateChangedListener;)V

    return-void
.end method
