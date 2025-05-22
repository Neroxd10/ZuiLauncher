.class public Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;


# instance fields
.field private a:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;

.field private b:Lcom/zui/launcher/ExtendedEditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public clearSearchBarFocus()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->a:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->clearFocus()V

    return-void
.end method

.method public exitSearch()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->a:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->exitSearch()V

    return-void
.end method

.method public initialize(Lcom/zui/launcher/popup/PopupDataProvider;Lcom/zui/launcher/widget/picker/search/SearchModeListener;)V
    .locals 7

    new-instance v6, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;

    new-instance v1, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;

    invoke-direct {v1, p1}, Lcom/zui/launcher/widget/picker/search/SimpleWidgetsSearchAlgorithm;-><init>(Lcom/zui/launcher/popup/PopupDataProvider;)V

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->b:Lcom/zui/launcher/ExtendedEditText;

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->d:Landroid/widget/TextView;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;-><init>(Lcom/zui/launcher/search/SearchAlgorithm;Lcom/zui/launcher/ExtendedEditText;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/zui/launcher/widget/picker/search/SearchModeListener;)V

    iput-object v6, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->a:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;

    return-void
.end method

.method public isSearchBarFocused()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->b:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->a:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->onDestroy()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a044b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ExtendedEditText;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->b:Lcom/zui/launcher/ExtendedEditText;

    const v0, 0x7f0a044c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a044d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->d:Landroid/widget/TextView;

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->a:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->clearSearchResult()V

    return-void
.end method

.method public resetSearch()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/LauncherWidgetsSearchBar;->a:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->resetSearch()V

    return-void
.end method
