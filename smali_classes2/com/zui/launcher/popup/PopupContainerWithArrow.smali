.class public Lcom/zui/launcher/popup/PopupContainerWithArrow;
.super Lcom/zui/launcher/popup/ArrowPopup;
.source ""

# interfaces
.implements Lcom/zui/launcher/DragSource;
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;


# instance fields
.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/shortcuts/DeepShortcutView;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/graphics/PointF;

.field private final m:I

.field protected final mIconLastTouchPos:Landroid/graphics/Point;

.field private final n:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

.field private o:Landroid/view/View;

.field private p:Lcom/zui/launcher/notification/NotificationItemView;

.field private q:I

.field private r:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->k:Ljava/util/List;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->l:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070251

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->m:I

    new-instance p1, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object p2, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-direct {p1, p2}, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->n:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702bc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/popup/PopupContainerWithArrow;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->m:I

    return p0
.end method

.method static synthetic g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    return-object p0
.end method

.method public static getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/popup/PopupContainerWithArrow;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;

    return-object p0
.end method

.method private getTitleForAccessibility()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120062

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/ArrowPopup;->setShowCenterOfObject(Z)V

    return-void
.end method

.method private i(Landroid/view/ViewGroup;Lcom/zui/launcher/popup/SystemShortcut;)I
    .locals 0

    const p0, 0x7f0a0357

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/zui/launcher/popup/SystemShortcut;->isLeftGroup()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method private j(ILandroid/view/ViewGroup;Lcom/zui/launcher/popup/SystemShortcut;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->i(Landroid/view/ViewGroup;Lcom/zui/launcher/popup/SystemShortcut;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    invoke-virtual {p2}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getBubbleText()Lcom/zui/launcher/BubbleTextView;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/zui/launcher/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Lcom/zui/launcher/popup/SystemShortcut;->setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p3, p2, p0}, Lcom/zui/launcher/popup/SystemShortcut;->getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    instance-of v2, v2, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    int-to-float v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_3

    iget-object v6, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->k:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    if-lt v5, v0, :cond_2

    const/16 v7, 0x8

    goto :goto_3

    :cond_2
    move v7, v4

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfoWithIcon;

    iget-object v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/Launcher;->getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/dot/DotInfo;->getNotificationCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/notification/NotificationItemView;->updateHeader(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static showForIcon(Landroid/view/View;)Lcom/zui/launcher/popup/PopupContainerWithArrow;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/popup/PopupContainerWithArrow;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d011c

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/popup/PopupContainerWithArrow;

    sget-object v3, Lcom/zui/launcher/popup/SystemShortcutFactory;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v3, v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/popup/SystemShortcutFactory;

    invoke-virtual {v2, p0, v1, v0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->populateAndShow(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/popup/SystemShortcutFactory;)V

    return-object v2
.end method


# virtual methods
.method public applyNotificationInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/notification/NotificationItemView;->applyNotificationInfos(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected changeOrderByType()V
    .locals 14

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v0, :cond_2

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/zui/launcher/popup/SystemShortcut;

    if-eqz v9, :cond_1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->isGravityVertical()Z

    move-result v0

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_7

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v11

    iget-object v12, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v11, v12, v9}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v11, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of v12, v11, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v12, :cond_4

    check-cast v11, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v11, v10}, Lcom/zui/launcher/WorkspaceIconCompat;->getIconBounds(Landroid/graphics/Rect;)V

    :cond_4
    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v11, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/2addr v10, v6

    add-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    iget-object v11, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v11}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    div-int/2addr v11, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    div-int/2addr v12, v6

    sub-int/2addr v11, v12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v10, v7

    add-int v7, v12, v13

    div-int/2addr v10, v7

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v11

    mul-int/2addr v13, v10

    add-int/2addr v7, v13

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    div-int/2addr v13, v6

    add-int/2addr v7, v13

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v11, v13

    mul-int/2addr v10, v12

    add-int/2addr v11, v10

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, v6

    add-int/2addr v11, v1

    if-gt v9, v7, :cond_5

    :goto_2
    move v1, v8

    goto :goto_4

    :cond_5
    if-lt v9, v11, :cond_6

    goto :goto_3

    :cond_6
    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v1, v7, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    move v1, v5

    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_8

    if-nez v1, :cond_9

    :cond_8
    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v0, :cond_b

    :cond_9
    move v0, v5

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    move v0, v5

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_d

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->orientAboutObject()V

    :cond_e
    :goto_9
    return-void
.end method

.method protected closeComplete()V
    .locals 2

    invoke-super {p0}, Lcom/zui/launcher/popup/ArrowPopup;->closeComplete()V

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/WorkspaceIconCompat;

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0}, Lcom/zui/launcher/WorkspaceIconCompat;->shouldTextBeVisible()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    check-cast p0, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->forceHideDot(Z)V

    :cond_0
    return-void
.end method

.method public createPreDragCondition()Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;
    .locals 1

    new-instance v0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;-><init>(Lcom/zui/launcher/popup/PopupContainerWithArrow;)V

    return-object v0
.end method

.method protected doSomethingAfterClose(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/popup/ArrowPopup;->doSomethingAfterClose(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->showLeosWidgetConfigRect(Z)V

    :cond_0
    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    sget-object p0, Lcom/zui/launcher/notification/NotificationMainView;->NOTIFICATION_ITEM_INFO:Lcom/zui/launcher/ItemInfo;

    if-ne p2, p0, :cond_0

    const/16 p0, 0x8

    iput p0, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    iput p0, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->rank:I

    iput p0, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->rank:I

    :goto_0
    const/16 p0, 0x9

    iput p0, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-void
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->n:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    return-object p0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getEndAlignedX(IIII)I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0}, Lcom/zui/launcher/WorkspaceIconCompat;->isLayoutHorizontal()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    add-int/2addr p2, p4

    sub-int/2addr p1, p2

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zui/launcher/popup/ArrowPopup;->getEndAlignedX(IIII)I

    move-result p0

    return p0
.end method

.method public getItemClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    sget-object p0, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getLogContainerType()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method protected getSupposedWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0705be

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getSystemShortcutContainerForTesting()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->r:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of v2, v1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v1}, Lcom/zui/launcher/WorkspaceIconCompat;->getIconSize()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of v2, v0, Lcom/zui/launcher/BubbleTextView;

    if-eqz v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->top:I

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_1
    add-int/2addr v1, p0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    instance-of p0, v0, Lcom/zui/launcher/ActiveIconView;

    if-eqz p0, :cond_4

    iget p0, p1, Landroid/graphics/Rect;->top:I

    check-cast v0, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v0}, Lcom/zui/launcher/ActiveIconView;->getIconHeight()I

    move-result v0

    add-int/2addr p0, v0

    goto :goto_2

    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    :goto_2
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_3
    return-void
.end method

.method protected getTargetObjectWidth(Landroid/graphics/Rect;)I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getVerticalLeftSideX(ZIIIII)I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0}, Lcom/zui/launcher/WorkspaceIconCompat;->isLayoutHorizontal()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    sub-int/2addr p3, p4

    return p3

    :cond_1
    if-eqz v1, :cond_2

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0}, Lcom/zui/launcher/WorkspaceIconCompat;->isLayoutHorizontal()Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    sub-int/2addr p3, p2

    sub-int/2addr p3, p5

    return p3

    :cond_3
    invoke-super/range {p0 .. p6}, Lcom/zui/launcher/popup/ArrowPopup;->getVerticalLeftSideX(ZIIIII)I

    move-result p0

    return p0
.end method

.method protected getVerticalRightSideX(ZIIIII)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0}, Lcom/zui/launcher/WorkspaceIconCompat;->isLayoutHorizontal()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    add-int/2addr p3, p2

    sub-int/2addr p3, p5

    return p3

    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/zui/launcher/popup/ArrowPopup;->getVerticalRightSideX(ZIIIII)I

    move-result p0

    return p0
.end method

.method public isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isRtlLayoutHorizontal()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0}, Lcom/zui/launcher/WorkspaceIconCompat;->isLayoutHorizontal()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v0

    :goto_0
    iget-boolean p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mIsRtl:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public logActionCommand(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getLogContainerType()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/popup/PopupDataProvider;->setChangeListener(Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionTapOutside(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of v1, v0, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0}, Lcom/zui/launcher/WorkspaceIconCompat;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/zui/launcher/WorkspaceIconCompat;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    check-cast p0, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/zui/launcher/WorkspaceIconCompat;->forceHideDot(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/popup/PopupDataProvider;->setChangeListener(Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mDeferContainerRemoval:Z

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mDeferContainerRemoval:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mDeferContainerRemoval:Z

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->closeComplete()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mDeferContainerRemoval:Z

    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->animateClose()V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 0

    return-void
.end method

.method protected onInflationComplete(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/notification/NotificationItemView;->inverseGutterMargin()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->l:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zui/launcher/notification/NotificationItemView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->l:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->l:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNotificationDotsUpdated(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    invoke-static {v0}, Lcom/zui/launcher/util/PackageUserKey;->fromItemInfo(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PackageUserKey;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onWidgetsBound()V
    .locals 0

    return-void
.end method

.method protected populateAndShow(Landroid/view/View;ILjava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationKeyData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    const v1, 0x10008

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->q:I

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->h(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iput-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->r:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-gtz p2, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080326

    invoke-static {v3, p0, v4}, Lcom/zui/launcher/popup/ArrowPopup;->createFrameView(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    :cond_2
    const v3, 0x7f0d0175

    if-lez p2, :cond_5

    iget-object v4, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/zui/launcher/notification/NotificationItemView;->addGutter()V

    :cond_3
    :goto_2
    if-lez p2, :cond_4

    iget-object v4, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->k:Ljava/util/List;

    const v5, 0x7f0d008e

    invoke-virtual {p0, v5, p0}, Lcom/zui/launcher/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->l()V

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v4, 0x7f080328

    invoke-static {p2, p0, v4}, Lcom/zui/launcher/popup/ArrowPopup;->createFrameView(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/zui/launcher/popup/SystemShortcut;

    invoke-direct {p0, v3, p0, p4}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->j(ILandroid/view/ViewGroup;Lcom/zui/launcher/popup/SystemShortcut;)V

    goto :goto_3

    :cond_5
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/zui/launcher/notification/NotificationItemView;->addGutter()V

    :cond_6
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/zui/launcher/popup/SystemShortcut;

    invoke-direct {p0, v3, p0, p4}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->j(ILandroid/view/ViewGroup;Lcom/zui/launcher/popup/SystemShortcut;)V

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f080325

    invoke-static {p2, p0, p4}, Lcom/zui/launcher/popup/ArrowPopup;->createFrameView(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    :cond_8
    invoke-virtual {p0, v0}, Lcom/zui/launcher/popup/ArrowPopup;->reorderAndShow(I)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_9

    invoke-direct {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getTitleForAccessibility()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p1, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    instance-of p2, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz p2, :cond_a

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p1, v1}, Lcom/zui/launcher/WorkspaceIconCompat;->forceHideDot(Z)V

    :cond_a
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    sget-object p1, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v6, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->k:Ljava/util/List;

    move-object v5, p0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/zui/launcher/popup/PopupPopulator;->createUpdateRunnable(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/os/Handler;Lcom/zui/launcher/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->showLeosWidgetConfigRect(Z)V

    return-void
.end method

.method protected populateAndShow(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/popup/SystemShortcutFactory;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zui/launcher/popup/PopupDataProvider;->getShortcutCountForItem(Lcom/zui/launcher/ItemInfo;)I

    move-result v1

    invoke-virtual {v0, p2}, Lcom/zui/launcher/popup/PopupDataProvider;->getNotificationKeysForItem(Lcom/zui/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3, v2, p2}, Lcom/zui/launcher/popup/SystemShortcutFactory;->getEnabledShortcuts(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->populateAndShow(Landroid/view/View;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public showLeosWidgetConfigRect(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {v0}, Lcom/zui/launcher/LeosWidgetInterface;->canShowConfigureRect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    check-cast p0, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {p0, p1}, Lcom/zui/launcher/LeosWidgetInterface;->setConfigureRect(Z)V

    const-string p0, "DaulTimeZoneView"

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->printStack(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public trimNotifications(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            "Lcom/zui/launcher/dot/DotInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/zui/launcher/util/PackageUserKey;->fromItemInfo(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PackageUserKey;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/dot/DotInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    invoke-virtual {p1}, Lcom/zui/launcher/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/notification/NotificationKeyData;->extractKeysOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/notification/NotificationItemView;->trimNotifications(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    invoke-virtual {p1}, Lcom/zui/launcher/notification/NotificationItemView;->removeAllViews()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow;->p:Lcom/zui/launcher/notification/NotificationItemView;

    invoke-direct {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->l()V

    invoke-direct {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->k()V

    :cond_4
    :goto_1
    return-void
.end method
