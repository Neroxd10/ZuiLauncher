.class public Lcom/zui/launcher/SearchWidgetView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;
.implements Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;
.implements Lcom/zui/launcher/LeosWidgetInterface;


# static fields
.field public static final SEARCH_WIDGET_TEXT_COLOR_BLACK:I = -0x34000000

.field public static final SEARCH_WIDGET_TEXT_COLOR_WHITE:I = -0x19000001


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Lcom/zui/launcher/CheckLongPressHelper;

.field private e:Lcom/zui/launcher/views/BaseDragLayer;

.field private f:Lcom/zui/launcher/Workspace;

.field private g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:I

.field private k:I

.field private l:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

.field m:F

.field final n:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/SearchWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/SearchWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/zui/launcher/SearchWidgetView;->j:I

    iput p2, p0, Lcom/zui/launcher/SearchWidgetView;->k:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/zui/launcher/SearchWidgetView;->m:F

    new-instance p2, Landroid/graphics/PointF;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/zui/launcher/SearchWidgetView;->n:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/SearchWidgetView;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/SearchWidgetView;->b:Landroid/view/LayoutInflater;

    new-instance p2, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {p2, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/launcher/SearchWidgetView;->d:Lcom/zui/launcher/CheckLongPressHelper;

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/SearchWidgetView;->e:Lcom/zui/launcher/views/BaseDragLayer;

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/SearchWidgetView;->f:Lcom/zui/launcher/Workspace;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0602f0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/SearchWidgetView;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0602ef

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/SearchWidgetView;->k:I

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/SearchWidgetView;->l:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    return-void
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/ObserverManager;->add(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)V

    invoke-direct {p0}, Lcom/zui/launcher/SearchWidgetView;->d()V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->c:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->b:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    const v1, 0x7f0d0159

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->c:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0a0348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    iput-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setTextDirection(I)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    const v1, 0x7f0a0346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->h:Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->i:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->c:Landroid/view/View;

    if-eqz v0, :cond_4

    const v1, 0x7f0a0326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->i:Landroid/widget/RelativeLayout;

    :cond_4
    return-void
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/SearchWidgetView;->b()V

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->c:Landroid/view/View;

    const v1, 0x7f0a0326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/SearchWidgetView$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/SearchWidgetView$a;-><init>(Lcom/zui/launcher/SearchWidgetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/SearchWidgetView;->c:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->l:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object v1, p0, Lcom/zui/launcher/SearchWidgetView;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getWidgteHotWordList(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/SearchWidgetView;->l:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->checkToppingWord()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toppingWord --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  hotWordList .size --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yudl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/SearchWidgetView;->setToopingList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/SearchWidgetView;->setNormalList(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public analyzeWidgetWeatherData(Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->cancelLongPress()V

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/ItemInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    :cond_0
    return-void
.end method

.method public getConfigure()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScaleToFit()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/SearchWidgetView;->m:F

    return p0
.end method

.method public getTranslationForCentering()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->n:Landroid/graphics/PointF;

    return-object p0
.end method

.method public handleConfigureResult(ZLandroid/content/Intent;)V
    .locals 0

    return-void
.end method

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

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->isRunning()Z

    move-result p0

    return p0
.end method

.method public notifyTextColor()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/SearchWidgetView;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x34000000    # -3.3554432E7f

    iput v0, p0, Lcom/zui/launcher/SearchWidgetView;->k:I

    :cond_0
    iget v0, p0, Lcom/zui/launcher/SearchWidgetView;->j:I

    if-ne v0, v1, :cond_1

    const v0, -0x19000001

    iput v0, p0, Lcom/zui/launcher/SearchWidgetView;->j:I

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/zui/launcher/SearchWidgetView;->c()V

    invoke-direct {p0}, Lcom/zui/launcher/SearchWidgetView;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/zui/launcher/SearchWidgetView;->isRegister(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/ObserverManager;->remove(Lcom/zui/launcher/globalsearch/ScrollTextViewObserverListener;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/SearchWidgetView;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/zui/launcher/CheckLongPressHelper;->postCheckForLongPress()V

    iget-object p1, p0, Lcom/zui/launcher/SearchWidgetView;->e:Lcom/zui/launcher/views/BaseDragLayer;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/views/BaseDragLayer;->setTouchCompleteListener(Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;)V

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->f:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->setWidgetDown(Z)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onScrollTextViewObserverData(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollTextViewObserverData -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch.HotWordDownLoad"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/SearchWidgetView;->setToopingList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/zui/launcher/SearchWidgetView;->setNormalList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/SearchWidgetView;->g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f120612

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchComplete()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    :goto_0
    return v0
.end method

.method public refreshWidgetSearchData(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->startRefreshData(I)V

    :cond_0
    return-void
.end method

.method public setConfiguring(Z)V
    .locals 0

    return-void
.end method

.method public setNormalList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setNormalRefresh(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScaleToFit(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/SearchWidgetView;->m:F

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method

.method public setTimeTextColor(ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/SearchWidgetView;->b()V

    invoke-virtual {p0}, Lcom/zui/launcher/SearchWidgetView;->notifyTextColor()V

    iget-object p2, p0, Lcom/zui/launcher/SearchWidgetView;->g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/zui/launcher/SearchWidgetView;->k:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/SearchWidgetView;->j:I

    :goto_0
    invoke-virtual {p2, v0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setTextColor(I)Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/SearchWidgetView;->i:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/SearchWidgetView;->a:Landroid/content/Context;

    if-eqz p1, :cond_2

    const v0, 0x7f0804e9

    goto :goto_1

    :cond_2
    const v0, 0x7f0804e8

    :goto_1
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object p2, p0, Lcom/zui/launcher/SearchWidgetView;->h:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0805cf

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0603ab

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0603ac

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public setToopingList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setToopingTextList(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTranslationForCentering(FF)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/SearchWidgetView;->n:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method public startConfigActivity()V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/SearchWidgetView;->g:Lcom/zui/launcher/globalsearch/VerticalScrollTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->stopAnimation()V

    :cond_0
    return-void
.end method
