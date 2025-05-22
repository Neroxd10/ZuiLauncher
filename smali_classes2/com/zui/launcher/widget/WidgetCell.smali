.class public Lcom/zui/launcher/widget/WidgetCell;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/widget/FrameLayout;

.field private d:Lcom/zui/launcher/widget/WidgetImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/zui/launcher/widget/WidgetPreviewLoader;

.field private i:Z

.field private j:Z

.field private k:Landroid/graphics/drawable/Drawable;

.field private final l:Lcom/zui/launcher/CheckLongPressHelper;

.field private m:F

.field protected mActiveRequest:Landroid/os/CancellationSignal;

.field protected final mActivity:Lcom/zui/launcher/views/ActivityContext;

.field protected mItem:Lcom/zui/launcher/model/WidgetItem;

.field protected mPresetPreviewSize:I

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field private n:I

.field private o:Landroid/widget/RemoteViews;

.field private p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/zui/launcher/widget/WidgetCell;->b:F

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/zui/launcher/widget/WidgetCell;->i:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/zui/launcher/widget/WidgetCell;->j:Z

    iput-boolean p3, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    instance-of v0, p1, Lcom/zui/launcher/BaseAlertActivity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/BaseAlertActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseAlertActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    new-instance v0, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->l:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/CheckLongPressHelper;->setLongPressTimeoutFactor(F)V

    invoke-direct {p0}, Lcom/zui/launcher/widget/WidgetCell;->e()V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iget-object p2, p0, Lcom/zui/launcher/widget/WidgetCell;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p2}, Lcom/zui/launcher/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-boolean p2, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/zui/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    :goto_1
    iput p1, p0, Lcom/zui/launcher/widget/WidgetCell;->m:F

    iget-boolean p1, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0708c9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p3, p1, 0x2

    :goto_2
    iput p3, p0, Lcom/zui/launcher/widget/WidgetCell;->n:I

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/widget/WidgetCell;->j:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->k:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/zui/launcher/widget/WidgetCell;->b:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/zui/launcher/widget/WidgetCell;->d(II)V

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->d:Lcom/zui/launcher/widget/WidgetImageView;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/widget/WidgetImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->d:Lcom/zui/launcher/widget/WidgetImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    :cond_3
    iget-boolean p1, p0, Lcom/zui/launcher/widget/WidgetCell;->i:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetCell;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetCell;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private b(Lcom/zui/launcher/model/WidgetItem;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->o:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/widget/WidgetCell$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/widget/WidgetCell$a;-><init>(Lcom/zui/launcher/widget/WidgetCell;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    iget-object p1, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->o:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0, p1, v1}, Lcom/zui/launcher/widget/WidgetCell;->c(Lcom/zui/launcher/widget/NavigableAppWidgetHostView;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/model/WidgetItem;->hasPreviewLayout()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iget-object p1, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    iput p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    iget-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/widget/WidgetCell;->c(Lcom/zui/launcher/widget/NavigableAppWidgetHostView;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private c(Lcom/zui/launcher/widget/NavigableAppWidgetHostView;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p3    # Landroid/widget/RemoteViews;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object p2, p0, Lcom/zui/launcher/widget/WidgetCell;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p2}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iget-boolean p0, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    if-eqz p0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->shouldInsetWidgets()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->getWidgetInset(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object p0, p2, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    :goto_0
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    invoke-virtual {p1, p3}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private d(II)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p1, p1

    iget v1, p0, Lcom/zui/launcher/widget/WidgetCell;->b:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float p1, p2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetCell;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/launcher/widget/WidgetCell;->a:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mPresetPreviewSize:I

    iput v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    iput v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    return-void
.end method

.method private getTagToString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyFromCellItem(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/widget/WidgetPreviewLoader;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/WidgetCell;->b(Lcom/zui/launcher/model/WidgetItem;)V

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    iget v4, v4, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    iget v4, v4, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const v4, 0x7f120737

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    iget v3, v3, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    iget v3, v3, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f120731

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    iget-object v0, v0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/zui/launcher/widget/WidgetCell;->h:Lcom/zui/launcher/widget/WidgetPreviewLoader;

    iget-object p2, p1, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    iget-object p1, p1, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Lcom/zui/launcher/widget/PendingAddShortcutInfo;-><init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget p1, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    iget p2, p0, Lcom/zui/launcher/widget/WidgetCell;->n:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    iget p1, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz p2, :cond_3

    new-instance p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-direct {p1, p2}, Lcom/zui/launcher/LenovoWidgetViewInfo;-><init>(Lcom/zui/launcher/LenovoWidgetsProviderInfo;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget-object p1, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p2, p1}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public applyPreview(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/zui/launcher/icons/RoundDrawableWrapper;

    iget v1, p0, Lcom/zui/launcher/widget/WidgetCell;->m:F

    invoke-direct {p1, v0, v1}, Lcom/zui/launcher/icons/RoundDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/WidgetCell;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->cancelLongPress()V

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetCell;->l:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->d:Lcom/zui/launcher/widget/WidgetImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->d:Lcom/zui/launcher/widget/WidgetImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/WidgetImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->d:Lcom/zui/launcher/widget/WidgetImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mPresetPreviewSize:I

    iput v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    iput v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    :cond_1
    iput-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->o:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/widget/WidgetCell;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    return-void
.end method

.method public ensurePreview()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    iget v1, v0, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget v0, v0, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/widget/WidgetCell;->setPreviewSize(II)Landroid/util/Size;

    :cond_0
    iget v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    iget v1, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/widget/WidgetCell;->d(II)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    iget v2, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    iget-boolean v3, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x11

    goto :goto_0

    :cond_1
    const/16 v3, 0x77

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    iget v2, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    iget v3, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->widgetsAddGetScale(Landroid/content/Context;Landroid/util/Size;)F

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->setScaleX(F)V

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->setScaleY(F)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->d:Lcom/zui/launcher/widget/WidgetImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/WidgetCell;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->h:Lcom/zui/launcher/widget/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetCell;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    iget-object v2, p0, Lcom/zui/launcher/widget/WidgetCell;->mItem:Lcom/zui/launcher/model/WidgetItem;

    new-instance v3, Landroid/util/Size;

    iget v4, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    iget v5, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Lcom/zui/launcher/widget/b;

    invoke-direct {v4, p0}, Lcom/zui/launcher/widget/b;-><init>(Lcom/zui/launcher/widget/WidgetCell;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zui/launcher/widget/WidgetPreviewLoader;->loadPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppWidgetHostViewPreview()Lcom/zui/launcher/widget/NavigableAppWidgetHostView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetCell;->p:Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    return-object p0
.end method

.method public getRemoteViewsPreview()Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetCell;->o:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getWidgetView()Lcom/zui/launcher/widget/WidgetImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetCell;->d:Lcom/zui/launcher/widget/WidgetImageView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0440

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f0a043f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/WidgetImageView;

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->d:Lcom/zui/launcher/widget/WidgetImageView;

    const v0, 0x7f0a043c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0439

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0438

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->g:Landroid/widget/TextView;

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/WidgetCell;->ensurePreview()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetCell;->l:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setAnimatePreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/WidgetCell;->i:Z

    return-void
.end method

.method public setApplyBitmapDeferred(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/widget/WidgetCell;->j:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/WidgetCell;->j:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->k:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/WidgetCell;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->k:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setIsAddWidget(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zui/launcher/widget/WidgetCell;->q:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/zui/launcher/widget/WidgetCell;->m:F

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0708c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    :goto_1
    iput p1, p0, Lcom/zui/launcher/widget/WidgetCell;->n:I

    return-void
.end method

.method public setPreviewSize(II)Landroid/util/Size;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/widget/WidgetCell;->setPreviewSize(IIF)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public setPreviewSize(IIF)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetCell;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/zui/launcher/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/zui/launcher/DeviceProfile;II)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    iput p3, p0, Lcom/zui/launcher/widget/WidgetCell;->b:F

    return-object p1
.end method

.method public setRealPreviewSize(II)Landroid/util/Size;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/widget/WidgetCell;->setRealPreviewSize(IIF)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public setRealPreviewSize(IIF)Landroid/util/Size;
    .locals 0

    iput p1, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewWidth:I

    iput p2, p0, Lcom/zui/launcher/widget/WidgetCell;->mPreviewHeight:I

    iput p3, p0, Lcom/zui/launcher/widget/WidgetCell;->b:F

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public setRemoteViewsPreview(Landroid/widget/RemoteViews;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetCell;->o:Landroid/widget/RemoteViews;

    return-void
.end method
