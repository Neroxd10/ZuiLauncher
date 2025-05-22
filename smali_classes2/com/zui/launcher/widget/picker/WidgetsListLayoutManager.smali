.class public final Lcom/zui/launcher/widget/picker/WidgetsListLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListLayoutManager;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public setOnContentChangeListener(Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;)V
    .locals 0
    .param p1    # Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListLayoutManager;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsScrollController$OnContentChangeListener;

    return-void
.end method
