.class public Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/zui/launcher/search/SearchCallback;
.implements Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/text/TextWatcher;",
        "Lcom/zui/launcher/search/SearchCallback<",
        "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
        ">;",
        "Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;",
        "Landroid/view/View$OnKeyListener;"
    }
.end annotation


# instance fields
.field private a:Z

.field protected mCancelButton:Landroid/widget/ImageView;

.field protected mInput:Lcom/zui/launcher/ExtendedEditText;

.field protected mQuery:Ljava/lang/String;

.field protected mSearchAlgorithm:Lcom/zui/launcher/search/SearchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/search/SearchAlgorithm<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchModeListener:Lcom/zui/launcher/widget/picker/search/SearchModeListener;

.field protected mTvCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/search/SearchAlgorithm;Lcom/zui/launcher/ExtendedEditText;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/zui/launcher/widget/picker/search/SearchModeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/search/SearchAlgorithm<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;",
            "Lcom/zui/launcher/ExtendedEditText;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/TextView;",
            "Lcom/zui/launcher/widget/picker/search/SearchModeListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->a:Z

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/search/SearchAlgorithm;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/ExtendedEditText;->setOnBackKeyListener(Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iput-object p3, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mCancelButton:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mTvCancel:Landroid/widget/TextView;

    new-instance p1, Lcom/zui/launcher/widget/picker/search/g;

    invoke-direct {p1, p0}, Lcom/zui/launcher/widget/picker/search/g;-><init>(Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mTvCancel:Landroid/widget/TextView;

    new-instance p2, Lcom/zui/launcher/widget/picker/search/f;

    invoke-direct {p2, p0}, Lcom/zui/launcher/widget/picker/search/f;-><init>(Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p5, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/zui/launcher/widget/picker/search/SearchModeListener;

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    new-instance p2, Lcom/zui/launcher/widget/picker/search/e;

    invoke-direct {p2, p0}, Lcom/zui/launcher/widget/picker/search/e;-><init>(Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/ExtendedEditText;->setOnFocusChangedListener(Lcom/zui/launcher/ExtendedEditText$OnFocusChangedListener;)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mTvCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/search/SearchAlgorithm;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/zui/launcher/search/SearchAlgorithm;->cancel(Z)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mCancelButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/zui/launcher/widget/picker/search/SearchModeListener;

    invoke-interface {v0}, Lcom/zui/launcher/widget/picker/search/SearchModeListener;->exitSearchMode()V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/zui/launcher/widget/picker/search/SearchModeListener;

    invoke-interface {p0}, Lcom/zui/launcher/widget/picker/search/SearchModeListener;->prepareSearchMode()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/search/SearchAlgorithm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/launcher/search/SearchAlgorithm;->cancel(Z)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/zui/launcher/widget/picker/search/SearchModeListener;

    invoke-interface {v0}, Lcom/zui/launcher/widget/picker/search/SearchModeListener;->enterSearchMode()V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/search/SearchAlgorithm;

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Lcom/zui/launcher/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/zui/launcher/search/SearchCallback;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->a()V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->clearSearchResult()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->exitSearch()V

    return-void
.end method

.method public clearFocus()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->hideKeyboard()V

    return-void
.end method

.method public clearSearchResult()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->a:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->a:Z

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/zui/launcher/widget/picker/search/SearchModeListener;

    invoke-interface {v0}, Lcom/zui/launcher/widget/picker/search/SearchModeListener;->prepareSearchMode()V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public exitSearch()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->clearFocus()V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/search/SearchAlgorithm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/launcher/search/SearchAlgorithm;->cancel(Z)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/zui/launcher/widget/picker/search/SearchModeListener;

    invoke-interface {v0}, Lcom/zui/launcher/widget/picker/search/SearchModeListener;->exitSearchMode()V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mCancelButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->a:Z

    return-void
.end method

.method public onAppendSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBackKey()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->clearFocus()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->exitSearch()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/search/SearchAlgorithm;

    invoke-interface {p0}, Lcom/zui/launcher/search/SearchAlgorithm;->destroy()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->clearFocus()V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->mSearchModeListener:Lcom/zui/launcher/widget/picker/search/SearchModeListener;

    invoke-interface {p0, p2}, Lcom/zui/launcher/widget/picker/search/SearchModeListener;->onSearchResults(Ljava/util/List;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public resetSearch()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBarController;->a()V

    return-void
.end method
