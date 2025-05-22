.class public Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
    }
.end annotation


# instance fields
.field protected mCb:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

.field protected mInput:Lcom/zui/launcher/ExtendedEditText;

.field protected mLauncher:Lcom/zui/launcher/Launcher;

.field protected mQuery:Ljava/lang/String;

.field protected mSearchAlgorithm:Lcom/zui/launcher/allapps/search/SearchAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/allapps/search/SearchAlgorithm;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/zui/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/allapps/search/SearchAlgorithm;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/zui/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/allapps/search/SearchAlgorithm;

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1, v0, p0}, Lcom/zui/launcher/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public focusSearchField()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->showKeyboard()V

    return-void
.end method

.method public final initialize(Lcom/zui/launcher/allapps/search/SearchAlgorithm;Lcom/zui/launcher/ExtendedEditText;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 0

    iput-object p4, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    iput-object p3, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/ExtendedEditText;->setOnBackKeyListener(Lcom/zui/launcher/ExtendedEditText$OnBackKeyListener;)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/allapps/search/SearchAlgorithm;

    return-void
.end method

.method public isSearchFieldFocused()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result p0

    return p0
.end method

.method public onBackKey()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return p3

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return p3

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p2}, Lcom/zui/launcher/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x0

    sget-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_SEARCH:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0}, Lcom/zui/launcher/ExtendedEditText;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public refreshSearchResult()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/allapps/search/SearchAlgorithm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/zui/launcher/allapps/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0, v1, p0}, Lcom/zui/launcher/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Lcom/zui/launcher/ExtendedEditText;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method
