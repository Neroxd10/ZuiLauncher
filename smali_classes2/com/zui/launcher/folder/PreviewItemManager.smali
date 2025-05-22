.class public Lcom/zui/launcher/folder/PreviewItemManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final o:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/launcher/folder/PreviewItemManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/zui/launcher/folder/FolderIcon;

.field private final c:Lcom/zui/launcher/graphics/DrawableFactory;

.field private final d:I

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/folder/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/folder/f;",
            ">;"
        }
    .end annotation
.end field

.field private m:F

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/folder/PreviewItemManager$a;

    const-string v1, "currentPageItemsTransX"

    invoke-direct {v0, v1}, Lcom/zui/launcher/folder/PreviewItemManager$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/folder/PreviewItemManager;->o:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/folder/FolderIcon;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->f:I

    iput v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->g:I

    iput v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->h:I

    iput v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->j:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->m:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    sget-object p1, Lcom/zui/launcher/graphics/DrawableFactory;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/graphics/DrawableFactory;

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->c:Lcom/zui/launcher/graphics/DrawableFactory;

    iget-object p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->folderChildIconSizePx:I

    iput p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->d:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/folder/PreviewItemManager;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->m:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/folder/PreviewItemManager;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->m:F

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/folder/PreviewItemManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method private e(III)V
    .locals 10

    iget v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->e:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->f:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->h:I

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->g:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->i:I

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iput p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->e:F

    iput p2, p0, Lcom/zui/launcher/folder/PreviewItemManager;->f:I

    iget-object p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->h:I

    iput p3, p0, Lcom/zui/launcher/folder/PreviewItemManager;->g:I

    iget-object p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->i:I

    iget-object v3, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, v3, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    iget-object v2, v3, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    iget v4, p0, Lcom/zui/launcher/folder/PreviewItemManager;->f:I

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/zui/launcher/folder/PreviewItemManager;->g:I

    iget v7, p0, Lcom/zui/launcher/folder/PreviewItemManager;->i:I

    iget-object p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderIcon;->isLayoutHorizontal()Z

    move-result v8

    iget-object p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    move-object v1, v2

    invoke-virtual/range {v0 .. v9}, Lcom/zui/launcher/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/zui/launcher/views/ActivityContext;Landroid/view/View;IIIIZI)V

    iget-object p1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    iget-object p2, p1, Lcom/zui/launcher/folder/FolderIcon;->j:Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;

    iget-object p3, p1, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    iget p3, p3, Lcom/zui/launcher/folder/PreviewBackground;->u:I

    iget v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->e:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    invoke-virtual {p2, p3, v0, p1}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->init(IFZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/PreviewItemManager;->n(Z)V

    :cond_1
    return-void
.end method

.method private g(Landroid/graphics/Canvas;Lcom/zui/launcher/folder/f;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Lcom/zui/launcher/folder/f;->a:F

    iget v1, p2, Lcom/zui/launcher/folder/f;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p2, Lcom/zui/launcher/folder/f;->c:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p2, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->e:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->e:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private h(Lcom/zui/launcher/folder/f;)Lcom/zui/launcher/folder/f;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderIcon;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->g:Lcom/zui/launcher/folder/PreviewBackground;

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->u:I

    int-to-float p0, p0

    sub-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    invoke-virtual {p1, p0, p0, v1}, Lcom/zui/launcher/folder/f;->a(FFF)V

    return-object p1
.end method

.method private l(Lcom/zui/launcher/folder/f;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    invoke-virtual {p2}, Lcom/zui/launcher/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->c:Lcom/zui/launcher/graphics/DrawableFactory;

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/zui/launcher/graphics/DrawableFactory;->newPendingIcon(Landroid/content/Context;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/graphics/PreloadIconDrawable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zui/launcher/WorkspaceItemInfo;->getInstallProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->c:Lcom/zui/launcher/graphics/DrawableFactory;

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/zui/launcher/graphics/DrawableFactory;->newIcon(Landroid/content/Context;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object p2, p1, Lcom/zui/launcher/folder/f;->h:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p1, p1, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private o(Lcom/zui/launcher/folder/f;Landroid/view/View;III)V
    .locals 10

    check-cast p2, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p2}, Lcom/zui/launcher/WorkspaceIconCompat;->getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    iget-object p2, p2, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p2}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    new-instance p2, Lcom/zui/launcher/folder/e;

    const/16 v8, 0x190

    const/4 v9, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p5

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/zui/launcher/folder/e;-><init>(Lcom/zui/launcher/folder/PreviewItemManager;Lcom/zui/launcher/folder/f;IIIIILjava/lang/Runnable;)V

    iget-object p0, p1, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/zui/launcher/folder/e;->e(Lcom/zui/launcher/folder/e;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/e;->d()V

    :cond_1
    iput-object p2, p1, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    return-void
.end method


# virtual methods
.method public createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/zui/launcher/folder/e;
    .locals 10

    const/4 v0, 0x0

    new-instance v9, Lcom/zui/launcher/folder/e;

    iget-object v2, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/folder/f;

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0xc8

    move-object v0, v9

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/folder/e;-><init>(Lcom/zui/launcher/folder/PreviewItemManager;Lcom/zui/launcher/folder/f;IIIIILjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x15e

    move-object v0, v9

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/folder/e;-><init>(Lcom/zui/launcher/folder/PreviewItemManager;Lcom/zui/launcher/folder/f;IIIIILjava/lang/Runnable;)V

    :goto_0
    return-object v9
.end method

.method d(ILjava/util/ArrayList;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/folder/f;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p1

    move-object/from16 v10, p2

    iget-object v1, v9, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance v1, Lcom/zui/launcher/folder/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/zui/launcher/folder/f;-><init>(FFFF)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    :cond_2
    sget v0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    :goto_2
    move v13, v0

    const/4 v0, 0x0

    move v14, v0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_a

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/zui/launcher/folder/f;

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0}, Lcom/zui/launcher/WorkspaceIconCompat;->getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v15, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ActiveIconView;

    if-eqz v0, :cond_3

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v0}, Lcom/zui/launcher/ActiveIconView;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v15, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, v15, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderIcon;->b:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v15, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, v9, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ActiveIconView;

    if-nez v0, :cond_5

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v9, v15, v0}, Lcom/zui/launcher/folder/PreviewItemManager;->l(Lcom/zui/launcher/folder/f;Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_5
    if-nez p3, :cond_6

    invoke-virtual {v9, v14, v13, v15}, Lcom/zui/launcher/folder/PreviewItemManager;->f(IILcom/zui/launcher/folder/f;)Lcom/zui/launcher/folder/f;

    iget-object v0, v9, Lcom/zui/launcher/folder/PreviewItemManager;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    iget-object v0, v15, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, v9, Lcom/zui/launcher/folder/PreviewItemManager;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_6
    new-instance v8, Lcom/zui/launcher/folder/e;

    const/16 v7, 0x190

    const/16 v16, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v14

    move v4, v12

    move v5, v14

    move v6, v13

    move-object v9, v8

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/folder/e;-><init>(Lcom/zui/launcher/folder/PreviewItemManager;Lcom/zui/launcher/folder/f;IIIIILjava/lang/Runnable;)V

    iget-object v0, v15, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v9}, Lcom/zui/launcher/folder/e;->e(Lcom/zui/launcher/folder/e;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, v15, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/e;->d()V

    :cond_8
    iput-object v9, v15, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    invoke-virtual {v9}, Lcom/zui/launcher/folder/e;->g()V

    :cond_9
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p0

    goto/16 :goto_3

    :cond_a
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;I)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderIcon;->getFolderBackground()Lcom/zui/launcher/folder/PreviewBackground;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->v:I

    int-to-float v1, v1

    iget v2, v0, Lcom/zui/launcher/folder/PreviewBackground;->w:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->n:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->l:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zui/launcher/folder/PreviewItemManager;->m:F

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/zui/launcher/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;FI)V

    const/high16 v1, -0x3cb80000    # -200.0f

    iget v2, p0, Lcom/zui/launcher/folder/PreviewItemManager;->m:F

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/zui/launcher/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;FI)V

    iget p0, v0, Lcom/zui/launcher/folder/PreviewBackground;->v:I

    neg-int p0, p0

    int-to-float p0, p0

    iget p2, v0, Lcom/zui/launcher/folder/PreviewBackground;->w:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;FI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/folder/f;",
            ">;FI)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/folder/f;

    iget-boolean v3, v2, Lcom/zui/launcher/folder/f;->f:Z

    if-nez v3, :cond_0

    invoke-direct {p0, p1, v2, p4}, Lcom/zui/launcher/folder/PreviewItemManager;->g(Landroid/graphics/Canvas;Lcom/zui/launcher/folder/f;I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    neg-float p0, p3

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method f(IILcom/zui/launcher/folder/f;)Lcom/zui/launcher/folder/f;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p3}, Lcom/zui/launcher/folder/PreviewItemManager;->h(Lcom/zui/launcher/folder/f;)Lcom/zui/launcher/folder/f;

    return-object p3

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderIcon;->j:Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/zui/launcher/folder/f;Z)Lcom/zui/launcher/folder/f;

    move-result-object p0

    return-object p0
.end method

.method public hidePreviewItem(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/folder/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iput-boolean p2, p0, Lcom/zui/launcher/folder/f;->f:Z

    :cond_1
    return-void
.end method

.method i()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->e:F

    return p0
.end method

.method j(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->n:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->m:F

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/launcher/folder/PreviewItemManager;->d(ILjava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewItemManager;->onParamsChanged()V

    sget-object p1, Lcom/zui/launcher/folder/PreviewItemManager;->o:Landroid/util/FloatProperty;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/folder/PreviewItemManager$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/PreviewItemManager$b;-><init>(Lcom/zui/launcher/folder/PreviewItemManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43480000    # 200.0f
    .end array-data
.end method

.method k(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v0}, Lcom/zui/launcher/WorkspaceIconCompat;->getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0, v1, v2, p1}, Lcom/zui/launcher/folder/PreviewItemManager;->e(III)V

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method m(Ljava/util/function/Predicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/folder/f;

    iget-object v4, v2, Lcom/zui/launcher/folder/f;->h:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v2, Lcom/zui/launcher/folder/f;->h:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0, v2, v1}, Lcom/zui/launcher/folder/PreviewItemManager;->l(Lcom/zui/launcher/folder/f;Lcom/zui/launcher/WorkspaceItemInfo;)V

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/folder/f;

    iget-object v4, v2, Lcom/zui/launcher/folder/f;->h:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, v2, Lcom/zui/launcher/folder/f;->h:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0, v2, v1}, Lcom/zui/launcher/folder/PreviewItemManager;->l(Lcom/zui/launcher/folder/f;Lcom/zui/launcher/WorkspaceItemInfo;)V

    move v1, v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method n(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/zui/launcher/folder/PreviewItemManager;->d(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public onDrop(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v7, v8}, Lcom/zui/launcher/folder/PreviewItemManager;->d(ILjava/util/ArrayList;Z)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move p3, v8

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    invoke-interface {v9, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/folder/f;

    invoke-virtual {p0, v0, v6, v1}, Lcom/zui/launcher/folder/PreviewItemManager;->f(IILcom/zui/launcher/folder/f;)Lcom/zui/launcher/folder/f;

    invoke-interface {v9, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v3, -0x3

    invoke-interface {v9, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/folder/PreviewItemManager;->o(Lcom/zui/launcher/folder/f;Landroid/view/View;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    move p3, v8

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    if-eq p3, v3, :cond_3

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/folder/f;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/folder/PreviewItemManager;->o(Lcom/zui/launcher/folder/f;Landroid/view/View;III)V

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move p2, v8

    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v6, v0}, Lcom/zui/launcher/folder/PreviewItemManager;->f(IILcom/zui/launcher/folder/f;)Lcom/zui/launcher/folder/f;

    move-result-object v9

    const/4 v4, -0x2

    move-object v0, p0

    move-object v1, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/folder/PreviewItemManager;->o(Lcom/zui/launcher/folder/f;Landroid/view/View;III)V

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v8, p0, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/folder/f;

    iget-object p0, p0, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    if-eqz p0, :cond_6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/folder/f;

    iget-object p0, p0, Lcom/zui/launcher/folder/f;->e:Lcom/zui/launcher/folder/e;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/e;->g()V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public onParamsChanged()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method p(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/folder/PreviewItemManager;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/folder/f;

    iget-object v2, v2, Lcom/zui/launcher/folder/f;->g:Landroid/graphics/drawable/Drawable;

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public recomputePreviewDrawingParams()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewItemManager;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/folder/PreviewItemManager;->b:Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launcher/folder/PreviewItemManager;->e(III)V

    :cond_0
    return-void
.end method
