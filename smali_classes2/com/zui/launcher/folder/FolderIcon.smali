.class public Lcom/zui/launcher/folder/FolderIcon;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/FolderInfo$FolderListener;


# static fields
.field public static final DRAWABLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/folder/FolderIcon;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPRING_LOADING_ENABLED:Z = true

.field private static final z:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/folder/FolderIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/zui/launcher/Launcher;

.field b:Lcom/zui/launcher/folder/Folder;

.field private c:Lcom/zui/launcher/FolderInfo;

.field private d:Lcom/zui/launcher/CheckLongPressHelper;

.field private e:Lcom/zui/launcher/StylusEventHelper;

.field f:Lcom/zui/launcher/BubbleTextView;

.field g:Lcom/zui/launcher/folder/PreviewBackground;

.field private h:Z

.field i:Lcom/zui/launcher/folder/FolderIconPreviewVerifier;

.field j:Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;

.field private k:Lcom/zui/launcher/folder/PreviewItemManager;

.field private l:Lcom/zui/launcher/folder/f;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mTargetDotScale:F

.field n:Z

.field private o:F

.field private p:Lcom/zui/launcher/Alarm;

.field private q:Lcom/zui/launcher/dot/FolderDotInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private r:Lcom/zui/launcher/icons/DotRenderer;

.field private s:Lcom/zui/launcher/icons/DotRenderer$DrawParams;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private t:F

.field private u:Landroid/animation/Animator;

.field v:Lcom/zui/launcher/OnAlarmListener;

.field private w:Z

.field private x:Z

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/folder/FolderIcon$a;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotScale"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/folder/FolderIcon$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/folder/FolderIcon;->z:Landroid/util/Property;

    new-instance v0, Lcom/zui/launcher/folder/FolderIcon$f;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "drawableAlpha"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/folder/FolderIcon$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/folder/FolderIcon;->DRAWABLE_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/zui/launcher/folder/PreviewBackground;

    invoke-direct {p1}, Lcom/zui/launcher/folder/PreviewBackground;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderIcon;->h:Z

    new-instance p1, Lcom/zui/launcher/folder/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/zui/launcher/folder/f;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->l:Lcom/zui/launcher/folder/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderIcon;->n:Z

    new-instance v0, Lcom/zui/launcher/Alarm;

    invoke-direct {v0}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->p:Lcom/zui/launcher/Alarm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    new-instance v0, Lcom/zui/launcher/folder/FolderIcon$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/FolderIcon$b;-><init>(Lcom/zui/launcher/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->v:Lcom/zui/launcher/OnAlarmListener;

    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderIcon;->w:Z

    const/16 p1, 0xff

    iput p1, p0, Lcom/zui/launcher/folder/FolderIcon;->y:I

    invoke-direct {p0}, Lcom/zui/launcher/folder/FolderIcon;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/zui/launcher/folder/PreviewBackground;

    invoke-direct {p1}, Lcom/zui/launcher/folder/PreviewBackground;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderIcon;->h:Z

    new-instance p1, Lcom/zui/launcher/folder/f;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Lcom/zui/launcher/folder/f;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->l:Lcom/zui/launcher/folder/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderIcon;->n:Z

    new-instance p2, Lcom/zui/launcher/Alarm;

    invoke-direct {p2}, Lcom/zui/launcher/Alarm;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->p:Lcom/zui/launcher/Alarm;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    new-instance p2, Lcom/zui/launcher/folder/FolderIcon$b;

    invoke-direct {p2, p0}, Lcom/zui/launcher/folder/FolderIcon$b;-><init>(Lcom/zui/launcher/folder/FolderIcon;)V

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->v:Lcom/zui/launcher/OnAlarmListener;

    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderIcon;->w:Z

    const/16 p1, 0xff

    iput p1, p0, Lcom/zui/launcher/folder/FolderIcon;->y:I

    invoke-direct {p0}, Lcom/zui/launcher/folder/FolderIcon;->i()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/folder/FolderIcon;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/FolderIcon;->t:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/folder/FolderIcon;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/folder/FolderIcon;->t:F

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/folder/FolderIcon;)Lcom/zui/launcher/folder/PreviewItemManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/folder/FolderIcon;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->u:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic e(Lcom/zui/launcher/folder/FolderIcon;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/folder/FolderIcon;->getDrawableAlpha()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/folder/FolderIcon;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->setDrawableAlpha(Ljava/lang/Integer;)V

    return-void
.end method

.method public static fromXml(ILcom/zui/launcher/Launcher;Landroid/view/ViewGroup;Lcom/zui/launcher/FolderInfo;)Lcom/zui/launcher/folder/FolderIcon;
    .locals 4

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/zui/launcher/folder/FolderIcon;->setLayoutHorizontal(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    const p2, 0x7f0a018d

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/BubbleTextView;

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    iget-object v1, p3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->isLayoutHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v3

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    sget-object p2, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    iget-object p2, v0, Lcom/zui/launcher/DeviceProfile;->mDotRenderer:Lcom/zui/launcher/icons/DotRenderer;

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->r:Lcom/zui/launcher/icons/DotRenderer;

    const p2, 0x7f1203bd

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->o(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zui/launcher/folder/Folder;->setDragController(Lcom/zui/launcher/dragndrop/DragController;)V

    invoke-virtual {p2, p0}, Lcom/zui/launcher/folder/Folder;->setFolderIcon(Lcom/zui/launcher/folder/FolderIcon;)V

    invoke-virtual {p2, p3}, Lcom/zui/launcher/folder/Folder;->k(Lcom/zui/launcher/FolderInfo;)V

    invoke-direct {p0, p2}, Lcom/zui/launcher/folder/FolderIcon;->setFolder(Lcom/zui/launcher/folder/Folder;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p3, p0}, Lcom/zui/launcher/FolderInfo;->addListener(Lcom/zui/launcher/FolderInfo$FolderListener;)V

    iget-object p1, p1, Lcom/zui/launcher/Launcher;->mFocusHandler:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    iget-object p2, p3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private g()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->u:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private getDrawableAlpha()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/FolderIcon;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private h(II[I)F
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    sget v1, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->l:Lcom/zui/launcher/folder/f;

    invoke-virtual {v0, p1, p2, v1}, Lcom/zui/launcher/folder/PreviewItemManager;->f(IILcom/zui/launcher/folder/f;)Lcom/zui/launcher/folder/f;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->l:Lcom/zui/launcher/folder/f;

    iget p2, p1, Lcom/zui/launcher/folder/f;->a:F

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    iget v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->v:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    iput p2, p1, Lcom/zui/launcher/folder/f;->a:F

    iget p2, p1, Lcom/zui/launcher/folder/f;->b:F

    iget v0, v0, Lcom/zui/launcher/folder/PreviewBackground;->w:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Lcom/zui/launcher/folder/f;->b:F

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/PreviewItemManager;->i()F

    move-result p1

    iget-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->l:Lcom/zui/launcher/folder/f;

    iget v0, p2, Lcom/zui/launcher/folder/f;->a:F

    iget v1, p2, Lcom/zui/launcher/folder/f;->c:F

    mul-float v2, v1, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget p2, p2, Lcom/zui/launcher/folder/f;->b:F

    mul-float/2addr v1, p1

    div-float/2addr v1, v3

    add-float/2addr p2, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    aput p1, p3, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x1

    aput p1, p3, p2

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->l:Lcom/zui/launcher/folder/f;

    iget p0, p0, Lcom/zui/launcher/folder/f;->c:F

    return p0
.end method

.method private i()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->d:Lcom/zui/launcher/CheckLongPressHelper;

    new-instance v0, Lcom/zui/launcher/StylusEventHelper;

    new-instance v1, Lcom/zui/launcher/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/zui/launcher/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/zui/launcher/StylusEventHelper;-><init>(Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->e:Lcom/zui/launcher/StylusEventHelper;

    new-instance v0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->j:Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/launcher/folder/FolderIcon;->o:F

    new-instance v0, Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/PreviewItemManager;-><init>(Lcom/zui/launcher/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    new-instance v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-direct {v0}, Lcom/zui/launcher/icons/DotRenderer$DrawParams;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->s:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    new-instance v0, Lcom/zui/launcher/dot/FolderDotInfo;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isZuiDotShown(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/dot/FolderDotInfo;-><init>(Z)V

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    return-void
.end method

.method private j(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v2, p5

    const/4 v4, -0x1

    iput v4, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v4, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-eqz v3, :cond_9

    iget-object v4, v0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v3, v5}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    if-nez p3, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v7}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zui/launcher/Workspace;->setFinalTransitionTransform()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v4, v0, v6}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v10

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v7}, Lcom/zui/launcher/Workspace;->resetTransitionTransform()V

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    move/from16 v10, p4

    :goto_0
    sget v7, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    add-int/lit8 v8, v2, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v15, 0x1

    if-nez p7, :cond_1

    sget v9, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-lt v2, v9, :cond_5

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v8}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    iget-object v11, v0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    iget-object v11, v0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v11, v0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move v11, v8

    :goto_1
    iget-object v12, v0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    iget-object v12, v0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v2, v11

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    iget-object v11, v0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {v11, v2, v15}, Lcom/zui/launcher/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    iget-object v11, v0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    iget-object v12, v0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    invoke-virtual {v11, v9, v12, v1}, Lcom/zui/launcher/folder/PreviewItemManager;->onDrop(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/WorkspaceItemInfo;)V

    move v14, v2

    move/from16 v17, v15

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1, v8}, Lcom/zui/launcher/folder/FolderIcon;->removeItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    :cond_5
    move v14, v2

    move/from16 v17, v8

    :goto_2
    if-nez v17, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_6
    const/4 v2, 0x2

    new-array v9, v2, [I

    invoke-direct {v0, v14, v7, v9}, Lcom/zui/launcher/folder/FolderIcon;->h(II[I)F

    move-result v7

    aget v11, v9, v8

    int-to-float v11, v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    aput v11, v9, v8

    aget v11, v9, v15

    int-to-float v11, v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    aput v11, v9, v15

    aget v8, v9, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    div-int/2addr v11, v2

    sub-int/2addr v8, v11

    aget v9, v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    div-int/2addr v11, v2

    sub-int/2addr v9, v11

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    sget v2, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-ge v14, v2, :cond_7

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    move v8, v2

    mul-float/2addr v10, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v11, 0x190

    sget-object v12, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    sget-object v13, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v2, v4

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v5, v6

    move v6, v8

    move v8, v9

    move v9, v10

    move/from16 v19, v14

    move-object/from16 v14, p6

    move/from16 v15, v16

    move-object/from16 v16, v18

    invoke-virtual/range {v2 .. v16}, Lcom/zui/launcher/dragndrop/DragLayer;->animateView(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    iget-object v2, v0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/folder/Folder;->hideItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    if-nez v17, :cond_8

    iget-object v2, v0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    move/from16 v3, v19

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/zui/launcher/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    goto :goto_4

    :cond_8
    move/from16 v3, v19

    :goto_4
    new-instance v2, Lcom/zui/launcher/folder/FolderIcon$c;

    invoke-direct {v2, v0, v3, v1}, Lcom/zui/launcher/folder/FolderIcon$c;-><init>(Lcom/zui/launcher/folder/FolderIcon;ILcom/zui/launcher/WorkspaceItemInfo;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :goto_5
    return-void
.end method

.method private k(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr p1, p2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/zui/launcher/folder/FolderIcon;->mTargetDotScale:F

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->animateDotScale([F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->u:Landroid/animation/Animator;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/folder/FolderIcon;->mTargetDotScale:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/folder/FolderIcon;->g()V

    iput v0, p0, Lcom/zui/launcher/folder/FolderIcon;->t:F

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_1
    return-void
.end method

.method private l(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/folder/PreviewItemManager;->n(Z)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->m:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private setDrawableAlpha(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/folder/FolderIcon;->y:I

    return-void
.end method

.method private setFolder(Lcom/zui/launcher/folder/Folder;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    new-instance p1, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {p1, v0}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->i:Lcom/zui/launcher/folder/FolderIconPreviewVerifier;

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/zui/launcher/FolderInfo;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->l(Z)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/zui/launcher/ItemInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->willAcceptItem(Lcom/zui/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public addItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public animateBgShadowAndStroke()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/PreviewBackground;->animateBackgroundStroke()V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->animateBackgroundAlpha()V

    return-void
.end method

.method public varargs animateDotScale([F)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/folder/FolderIcon;->g()V

    sget-object v0, Lcom/zui/launcher/folder/FolderIcon;->z:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->u:Landroid/animation/Animator;

    new-instance v0, Lcom/zui/launcher/folder/FolderIcon$d;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/FolderIcon$d;-><init>(Lcom/zui/launcher/folder/FolderIcon;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->u:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public changeFolderIconThemes(Landroid/content/Context;Lcom/zui/launcher/FolderInfo;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    return-void
.end method

.method public clearLeaveBehindIfExists()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->clearFolderLeaveBehind()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/zui/launcher/folder/FolderIcon;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/PreviewBackground;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    iget v1, p0, Lcom/zui/launcher/folder/FolderIcon;->y:I

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;I)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/launcher/folder/FolderIcon;->n:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/PreviewBackground;->getClipPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    iget v2, p0, Lcom/zui/launcher/folder/FolderIcon;->y:I

    invoke-virtual {v1, p1, v2}, Lcom/zui/launcher/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/PreviewBackground;->o()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->drawDot(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawDot(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/folder/FolderIcon;->x:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/zui/launcher/folder/FolderIcon;->t:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->s:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->isLayoutHorizontal()Z

    move-result v3

    invoke-static {p0, v0, v2, v3}, Lcom/zui/launcher/BubbleTextView;->getIconBounds(Landroid/view/View;Landroid/graphics/Rect;IZ)V

    iget-object v2, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    iget v2, v2, Lcom/zui/launcher/folder/PreviewBackground;->u:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->s:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    iget v2, p0, Lcom/zui/launcher/folder/FolderIcon;->t:F

    iget-object v3, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v3}, Lcom/zui/launcher/folder/PreviewBackground;->t()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->scale:F

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->s:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060064

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, v0, Lcom/zui/launcher/icons/DotRenderer$DrawParams;->color:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isZuiDotShown(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/zui/launcher/dot/DotInfo;->getZuiDotCount()I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/zui/launcher/dot/FolderDotInfo;->getNotificationCount()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/folder/FolderIcon;->r:Lcom/zui/launcher/icons/DotRenderer;

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->s:Lcom/zui/launcher/icons/DotRenderer$DrawParams;

    invoke-virtual {v2, p1, p0, v0, v1}, Lcom/zui/launcher/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/zui/launcher/icons/DotRenderer$DrawParams;ZI)V

    :cond_4
    return-void
.end method

.method public drawLeaveBehindIfExists()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->canReorder:Z

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    iget v1, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/CellLayout;->setFolderLeaveBehindCell(II)V

    :cond_0
    return-void
.end method

.method public forceHideDot(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/folder/FolderIcon;->x:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderIcon;->x:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->hasDot()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/zui/launcher/folder/FolderIcon;->mTargetDotScale:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->animateDotScale([F)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getBackgroundStrokeWidth()F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->getStrokeWidth()F

    move-result p0

    return p0
.end method

.method public getFolder()Lcom/zui/launcher/folder/Folder;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    return-object p0
.end method

.method public getFolderBackground()Lcom/zui/launcher/folder/PreviewBackground;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    return-object p0
.end method

.method public getFolderInfo()Lcom/zui/launcher/FolderInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    return-object p0
.end method

.method public getFolderName()Lcom/zui/launcher/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    return-object p0
.end method

.method public getFolderScale()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getForceHideDotFlag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/folder/FolderIcon;->x:Z

    return p0
.end method

.method public getLayoutRule()Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->j:Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;

    return-object p0
.end method

.method public getPreviewBackground()Lcom/zui/launcher/folder/PreviewBackground;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    return-object p0
.end method

.method public getPreviewBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/PreviewBackground;->p(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getPreviewHeight()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->u:I

    return p0
.end method

.method public getPreviewItemManager()Lcom/zui/launcher/folder/PreviewItemManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    return-object p0
.end method

.method public getPreviewItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewItemsOnPage(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->i:Lcom/zui/launcher/folder/FolderIconPreviewVerifier;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/zui/launcher/FolderInfo;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/zui/launcher/folder/FolderIcon;->i:Lcom/zui/launcher/folder/FolderIconPreviewVerifier;

    invoke-virtual {v4, p1, v3}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sget v5, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getTextVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDot()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/dot/FolderDotInfo;->hasDot()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLayoutHorizontal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/folder/FolderIcon;->w:Z

    return p0
.end method

.method public onAdd(Lcom/zui/launcher/WorkspaceItemInfo;I)V
    .locals 2

    iget-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    invoke-virtual {p2}, Lcom/zui/launcher/dot/FolderDotInfo;->hasDot()Z

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/Launcher;->getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/launcher/dot/FolderDotInfo;->addDotInfo(Lcom/zui/launcher/dot/DotInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/dot/FolderDotInfo;->hasDot()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/folder/FolderIcon;->k(ZZ)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onDragEnter(Lcom/zui/launcher/ItemInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->willAcceptItem(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    iget-object v2, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    iget v3, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/zui/launcher/folder/PreviewBackground;->animateToAccept(Lcom/zui/launcher/CellLayout;II)V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->p:Lcom/zui/launcher/Alarm;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->v:Lcom/zui/launcher/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Alarm;->setOnAlarmListener(Lcom/zui/launcher/OnAlarmListener;)V

    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    if-nez v0, :cond_2

    instance-of p1, p1, Lcom/zui/launcher/LayoutInfo;

    if-eqz p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->p:Lcom/zui/launcher/Alarm;

    const-wide/16 v0, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/Alarm;->setAlarm(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDragExit()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/PreviewBackground;->animateToRest()V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->p:Lcom/zui/launcher/Alarm;

    invoke-virtual {p0}, Lcom/zui/launcher/Alarm;->cancelAlarm()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    iget-boolean v0, v0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3a000000

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const v3, 0x3affffff

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrop(ILcom/zui/launcher/DropTarget$DragObject;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    iget-object v0, v9, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v11

    iget-object v0, v10, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    move-object v12, v0

    check-cast v12, Lcom/zui/launcher/LayoutInfo;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    invoke-virtual {v12}, Lcom/zui/launcher/LayoutInfo;->getCount()I

    move-result v0

    if-ge v14, v0, :cond_2

    invoke-virtual {v12, v14}, Lcom/zui/launcher/LayoutInfo;->getInfoAt(I)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v15

    iget-object v0, v10, Lcom/zui/launcher/DropTarget$DragObject;->dragViewList:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/zui/launcher/dragndrop/DragView;

    if-nez v14, :cond_0

    iget-object v0, v9, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v8, v13}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v13

    move-object v3, v8

    move/from16 v6, p1

    move-object v9, v8

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/folder/FolderIcon;->onLayoutDrop(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/graphics/Rect;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/zui/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11, v9, v15, v13}, Lcom/zui/launcher/XDockView;->animDragviewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;Landroid/graphics/Rect;)V

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p0

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Lcom/zui/launcher/XDockView;->hideDockView()V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/zui/launcher/XDockView;->startAnimatorSet(Z)V

    return-void
.end method

.method public onDrop(Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 9

    iget-object v0, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    instance-of v1, v0, Lcom/zui/launcher/LayoutInfo;

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p2}, Lcom/zui/launcher/folder/Folder;->notifyDrop()V

    iget-object p2, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    iget-object p2, p2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/folder/FolderIcon;->onDrop(ILcom/zui/launcher/DropTarget$DragObject;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/zui/launcher/AppInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zui/launcher/AppInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v1, v1, Lcom/zui/launcher/dragndrop/BaseItemDragListener;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->notifyDrop()V

    iget-object v3, p1, Lcom/zui/launcher/DropTarget$DragObject;->dragView:Lcom/zui/launcher/dragndrop/DragView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    iget-object v0, v0, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p1, Lcom/zui/launcher/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/folder/FolderIcon;->j(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Z)V

    return-void
.end method

.method public onFolderClose(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/PreviewItemManager;->j(I)V

    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->l(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onLayoutDrop(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/graphics/Rect;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/zui/launcher/DropTarget$DragObject;)Z
    .locals 18

    move-object/from16 v13, p0

    move-object/from16 v5, p1

    move/from16 v0, p6

    iget-object v1, v13, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v1

    iget-object v2, v13, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v2}, Lcom/zui/launcher/folder/Folder;->isFull()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->showOutOfFolderMessage()V

    return v3

    :cond_0
    const/4 v2, -0x1

    iput v2, v5, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v2, v5, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/16 v17, 0x1

    if-eqz p3, :cond_3

    iget-object v2, v13, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    if-nez p4, :cond_1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v13, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v13, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v2, v13, v4}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v2

    invoke-virtual {v13, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v13, v7}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_0

    :cond_1
    move-object/from16 v4, p4

    move/from16 v2, p5

    :goto_0
    const/4 v6, 0x2

    new-array v7, v6, [I

    sget v8, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    add-int/lit8 v9, v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {v13, v0, v8, v7}, Lcom/zui/launcher/folder/FolderIcon;->h(II[I)F

    move-result v8

    aget v9, v7, v3

    int-to-float v9, v9

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v7, v3

    aget v9, v7, v17

    int-to-float v9, v9

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v7, v17

    aget v3, v7, v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v6

    sub-int/2addr v3, v9

    aget v7, v7, v17

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/2addr v9, v6

    sub-int/2addr v7, v9

    invoke-virtual {v4, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    sget v3, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-ge v0, v3, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move/from16 v16, v0

    mul-float v9, v8, v2

    move v8, v9

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v10, 0x190

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v11, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v12, v0

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v5, v16

    move-object/from16 v13, p7

    move-object/from16 v16, p0

    invoke-virtual/range {v0 .. v16}, Lcom/zui/launcher/XDockView;->animDragviewIntoFolderIcon(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;Lcom/zui/launcher/folder/FolderIcon;)V

    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/zui/launcher/folder/Folder;->hideItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    new-instance v1, Lcom/zui/launcher/folder/FolderIcon$e;

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/folder/FolderIcon$e;-><init>(Lcom/zui/launcher/folder/FolderIcon;Lcom/zui/launcher/WorkspaceItemInfo;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    move-object v2, v5

    move-object v0, v13

    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :goto_2
    return v17
.end method

.method public onRecommendStatusChanged()V
    .locals 0

    return-void
.end method

.method public onRemove(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    iget-object v2, p0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/Launcher;->getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/zui/launcher/dot/FolderDotInfo;->subtractDotInfo(Lcom/zui/launcher/dot/DotInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/dot/FolderDotInfo;->hasDot()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/folder/FolderIcon;->k(ZZ)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onRemoveAll()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    const v0, 0x7f1203bc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203bd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, p0, v1, v2}, Lcom/zui/launcher/CheckLongPressHelper;->isContentRect(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderIcon;->e:Lcom/zui/launcher/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/zui/launcher/folder/FolderIcon;->o:F

    invoke-static {p0, v1, p1, v2}, Lcom/zui/launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->d:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->postCheckForLongPress()V

    :cond_5
    :goto_0
    return v0
.end method

.method public performCreateAnimation(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 8

    invoke-virtual {p0, p2}, Lcom/zui/launcher/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->addItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/zui/launcher/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/zui/launcher/folder/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/folder/e;->g()V

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/folder/FolderIcon;->j(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Z)V

    return-void
.end method

.method public performDestroyAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/zui/launcher/folder/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/e;->g()V

    return-void
.end method

.method public prepareAutoUpdate()V
    .locals 0

    return-void
.end method

.method public prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/PreviewItemManager;->k(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public refreshDummyIcon(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/folder/Folder;->refreshDummyIcon(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public removeItem(Lcom/zui/launcher/WorkspaceItemInfo;Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/FolderInfo;->remove(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public removeListeners()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/FolderInfo;->removeListener(Lcom/zui/launcher/FolderInfo$FolderListener;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/FolderInfo;->removeListener(Lcom/zui/launcher/FolderInfo$FolderListener;)V

    return-void
.end method

.method public setBackgroundVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderIcon;->h:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDotInfo(Lcom/zui/launcher/dot/FolderDotInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    invoke-virtual {p1}, Lcom/zui/launcher/dot/FolderDotInfo;->hasDot()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/folder/FolderIcon;->k(ZZ)V

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->q:Lcom/zui/launcher/dot/FolderDotInfo;

    return-void
.end method

.method public setFolderBackground(Lcom/zui/launcher/folder/PreviewBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/folder/PreviewBackground;->z(Landroid/view/View;)V

    return-void
.end method

.method public setLayoutHorizontal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderIcon;->w:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Lcom/zui/launcher/BubbleTextView;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v4, p1}, Lcom/zui/launcher/BubbleTextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_0
    instance-of v4, v3, Lcom/zui/launcher/ActiveIconView;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v4, p1}, Lcom/zui/launcher/ActiveIconView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/BubbleTextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setTextVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->f:Lcom/zui/launcher/BubbleTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public shouldTextBeVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v0, -0x65

    if-eq p0, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/PreviewItemManager;->m(Ljava/util/function/Predicate;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->k:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/folder/PreviewItemManager;->p(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

.method public willAcceptItem(Lcom/zui/launcher/ItemInfo;)Z
    .locals 3

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIcon;->c:Lcom/zui/launcher/FolderInfo;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->isFull()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
