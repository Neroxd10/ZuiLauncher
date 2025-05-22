.class public Lcom/zui/launcher/widget/PendingAppWidgetHostView;
.super Lcom/zui/launcher/widget/LauncherAppWidgetHostView;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;


# instance fields
.field private final D:Landroid/graphics/Rect;

.field private E:Landroid/view/View$OnClickListener;

.field private final F:Lcom/zui/launcher/LauncherAppWidgetInfo;

.field private final G:I

.field private final H:Z

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Landroid/graphics/drawable/Drawable;

.field private K:Z

.field private final L:Landroid/text/TextPaint;

.field private M:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/icons/IconCache;Z)V
    .locals 2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f1303bb

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->F:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget p1, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    iput p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->G:I

    iput-boolean p4, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->H:Z

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->L:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x1010036

    invoke-static {p4, v0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->L:Landroid/text/TextPaint;

    iget-object p4, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p4}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p4

    iget p4, p4, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    const p1, 0x7f080464

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setBackgroundResource(I)V

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0705b4

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setElevation(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    sget-object p1, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/zui/launcher/model/PackageItemInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/zui/launcher/model/PackageItemInfo;

    iget-object p4, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/zui/launcher/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    iput-object p1, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object p2, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, p0, p1}, Lcom/zui/launcher/icons/IconCache;->updateIconInBackground(Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/cache/HandlerRunnable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->reapplyItemInfo(Lcom/zui/launcher/ItemInfoWithIcon;)V

    :goto_0
    return-void
.end method

.method private o()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0705b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int/2addr v7, v5

    mul-int/lit8 v5, v6, 0x2

    sub-int v11, v7, v5

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    sub-int/2addr v7, v3

    sub-int/2addr v7, v5

    iget-object v3, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->J:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v5, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v3

    iget-object v4, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_0
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const v16, 0x3fe66666    # 1.8f

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    mul-float v9, v3, v16

    int-to-float v8, v8

    cmpl-float v9, v9, v8

    if-lez v9, :cond_1

    div-float v3, v8, v16

    :cond_1
    iget v8, v1, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float v8, v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v3

    div-int/lit8 v17, v8, 0x2

    const/4 v15, 0x0

    iput-object v15, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->M:Landroid/text/Layout;

    if-lez v11, :cond_3

    new-instance v14, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1203c5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->L:Landroid/text/TextPaint;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v8, v14

    move-object v5, v14

    move/from16 v14, v18

    move/from16 v18, v2

    move-object v2, v15

    move/from16 v15, v19

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->M:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v8, v5

    int-to-float v9, v3

    mul-float v9, v9, v16

    add-float/2addr v8, v9

    iget v9, v1, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v7, v7

    cmpg-float v7, v8, v7

    if-gez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v5

    iget v5, v1, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v3

    div-int/lit8 v17, v2, 0x2

    goto :goto_0

    :cond_2
    iput-object v2, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->M:Landroid/text/Layout;

    goto :goto_0

    :cond_3
    move/from16 v18, v2

    :goto_0
    move/from16 v2, v17

    iget-object v5, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    add-int/2addr v4, v6

    iput v4, v2, Landroid/graphics/Rect;->left:I

    const v5, 0x3ecccccd    # 0.4f

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v4, v3

    iput v5, v2, Landroid/graphics/Rect;->right:I

    add-int v5, v18, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->M:Landroid/text/Layout;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v0, v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->top:I

    :cond_4
    :goto_1
    return-void
.end method

.method private p(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    aget v1, v0, p1

    const v2, 0x3f333333    # 0.7f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, p1

    const/4 p1, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    iget-object p0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->J:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public applyState()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->F:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->installProgress:I

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->applyState()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    return-object v0
.end method

.method public isReadyForClickSetup()Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->F:Lcom/zui/launcher/LauncherAppWidgetInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->F:Lcom/zui/launcher/LauncherAppWidgetInfo;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->F:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isReinflateIfNeeded()Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->G:I

    iget-object p0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->F:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->E:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->K:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->o()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->K:Z

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->J:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->M:Landroid/text/Layout;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->D:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->M:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->K:Z

    return-void
.end method

.method public reapplyItemInfo(Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->H:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080288

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->J:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->p(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/launcher/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/graphics/PreloadIconDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->applyState()V

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-boolean v2, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->K:Z

    :cond_3
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->E:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->F:Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/WidgetManagerHelper;->isAppWidgetRestored(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_0
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->I:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
