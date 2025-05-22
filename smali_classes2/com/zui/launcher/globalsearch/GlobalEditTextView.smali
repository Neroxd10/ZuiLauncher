.class public Lcom/zui/launcher/globalsearch/GlobalEditTextView;
.super Landroid/widget/EditText;
.source ""

# interfaces
.implements Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/GlobalEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/GlobalEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/globalsearch/GlobalEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public isRegister(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)Z
    .locals 0

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/ObserverManager;->isRegister(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/ObserverManager;->add(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/ObserverManager;->isRegister(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/ObserverManager;->remove(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)V

    :cond_0
    return-void
.end method

.method public onScrollTextViewObserverData(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalEditTextView;->a:Ljava/util/List;

    return-void
.end method

.method public refreshWidgetSearchData(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalEditTextView;->a:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getWidgteHotWordList(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalEditTextView;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalEditTextView;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalEditTextView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/HotWordData;

    iget-object p1, p1, Lcom/zui/launcher/globalsearch/HotWordData;->word:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120612

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
