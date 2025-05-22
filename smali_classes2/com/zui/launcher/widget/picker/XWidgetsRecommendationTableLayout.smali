.class public final Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;
.super Landroid/widget/TableLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private d:F

.field private e:Landroid/view/View$OnLongClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/view/View$OnTouchListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->d:F

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07065b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->a:F

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070891

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->b:F

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07088d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->c:F

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/zui/launcher/widget/WidgetCell;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0193

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/WidgetCell;

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->g:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0a0440

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->e:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/widget/WidgetCell;->setAnimatePreview(Z)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private b(Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;)V
    .locals 9

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;->a(Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p1}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;->a(Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;->a(Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setGravity(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/model/WidgetItem;

    invoke-direct {p0, v3}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->a(Landroid/view/ViewGroup;)Lcom/zui/launcher/widget/WidgetCell;

    move-result-object v5

    iget v6, v4, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget v7, v4, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;->b(Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;)F

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/zui/launcher/widget/WidgetCell;->setPreviewSize(IIF)Landroid/util/Size;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/launcher/LauncherAppState;->getWidgetCache()Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/zui/launcher/widget/WidgetCell;->applyFromCellItem(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/widget/WidgetPreviewLoader;)V

    invoke-virtual {v5}, Lcom/zui/launcher/widget/WidgetCell;->ensurePreview()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setVisibility(I)V

    return-void
.end method

.method private c(FLjava/util/List;)Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;>;)",
            "Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hide recommended widgets. Can\'t down scale previews to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WidgetsRecommendationTableLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;-><init>(Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;Ljava/util/List;F)V

    return-object p2

    :cond_0
    iget v0, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->a:F

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    move v6, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/model/WidgetItem;

    iget v8, v7, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget v7, v7, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    invoke-static {v1, v8, v7}, Lcom/zui/launcher/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/zui/launcher/DeviceProfile;II)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    iget v8, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->c:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->b:F

    add-float/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-float/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    new-instance v0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;-><init>(Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;Ljava/util/List;F)V

    return-object v0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->c(FLjava/util/List;)Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    goto :goto_2
.end method


# virtual methods
.method public setRecommendedWidgets(Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;>;F)V"
        }
    .end annotation

    iput p2, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->d:F

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->c(FLjava/util/List;)Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->b(Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout$a;)V

    return-void
.end method

.method public setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->e:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setWidgetCellOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/XWidgetsRecommendationTableLayout;->g:Landroid/view/View$OnTouchListener;

    return-void
.end method
