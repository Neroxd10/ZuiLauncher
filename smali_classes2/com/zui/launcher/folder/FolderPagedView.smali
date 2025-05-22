.class public Lcom/zui/launcher/folder/FolderPagedView;
.super Lcom/zui/launcher/PagedView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/PagedView<",
        "Lcom/zui/launcher/pageindicators/PageIndicatorDots;",
        ">;"
    }
.end annotation


# static fields
.field private static final z:[I


# instance fields
.field public final mIsRtl:Z

.field private final o:Landroid/view/LayoutInflater;

.field private final p:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

.field final q:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final r:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final s:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final t:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private u:I

.field private v:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private w:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private x:Lcom/zui/launcher/folder/Folder;

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/zui/launcher/folder/FolderPagedView;->z:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->y:J

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/folder/FolderPagedView;->s:I

    iput p2, p0, Lcom/zui/launcher/folder/FolderPagedView;->r:I

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->r:I

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    iput p2, p0, Lcom/zui/launcher/folder/FolderPagedView;->s:I

    :goto_0
    iget p2, p0, Lcom/zui/launcher/folder/FolderPagedView;->r:I

    iget v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->s:I

    mul-int/2addr p2, v0

    iput p2, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderPagedView;->o:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/folder/FolderPagedView;->mIsRtl:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    new-instance p1, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-direct {p1, p0}, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderPagedView;->p:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    return-void
.end method

.method public static calculateGridSize(IIIIII[I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lt p0, p5, :cond_0

    move p2, p4

    move p4, v0

    goto :goto_0

    :cond_0
    move p4, p1

    :goto_0
    if-nez p4, :cond_2

    div-int p4, p0, p3

    add-int/2addr p4, v0

    if-ne p3, p3, :cond_1

    if-ne p4, p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    move v1, p4

    move p4, p2

    move p2, v1

    goto :goto_0

    :cond_2
    aput p3, p6, p1

    aput p2, p6, v0

    return-void
.end method

.method static synthetic s(Lcom/zui/launcher/folder/FolderPagedView;)Lcom/zui/launcher/folder/Folder;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    return-object p0
.end method

.method private t(Ljava/util/ArrayList;IZ)V
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;IZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v5}, Lcom/zui/launcher/CellLayout;->removeAllViews()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->setupContentDimensions(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v4, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {v4, v5}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    iget-object v5, v0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v5}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/zui/launcher/FolderInfo;)V

    move v6, v3

    move v8, v6

    move v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v6, :cond_1

    move-object/from16 v10, p1

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    goto :goto_2

    :cond_1
    move-object/from16 v10, p1

    const/4 v11, 0x0

    :goto_2
    if-eqz v7, :cond_2

    iget v12, v0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    if-lt v8, v12, :cond_4

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/CellLayout;

    goto :goto_3

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/folder/FolderPagedView;->u()Lcom/zui/launcher/CellLayout;

    move-result-object v7

    :goto_3
    move v8, v3

    :cond_4
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v12, v0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v13, v8, v12

    div-int v12, v8, v12

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/zui/launcher/ItemInfo;

    iget v5, v14, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ne v5, v13, :cond_5

    iget v5, v14, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ne v5, v12, :cond_5

    iget v5, v14, Lcom/zui/launcher/ItemInfo;->rank:I

    if-eq v5, v9, :cond_6

    :cond_5
    iput v13, v14, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v12, v14, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v9, v14, Lcom/zui/launcher/ItemInfo;->rank:I

    if-eqz p3, :cond_6

    iget-object v5, v0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    iget-object v5, v5, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v16

    iget-object v5, v0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    iget-object v5, v5, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget v5, v5, Lcom/zui/launcher/ItemInfo;->id:I

    const/16 v19, 0x0

    iget v12, v14, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v13, v14, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object/from16 v17, v14

    move/from16 v18, v5

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Lcom/zui/launcher/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    :cond_6
    iget v5, v14, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v5, v15, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v14, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v5, v15, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    const/4 v5, -0x1

    invoke-virtual {v14}, Lcom/zui/launcher/ItemInfo;->getViewId()I

    move-result v16

    const/16 v17, 0x1

    move-object v12, v7

    move-object v13, v11

    move v14, v5

    move-object v5, v15

    move/from16 v15, v16

    move-object/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lcom/zui/launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/CellLayout$LayoutParams;Z)Z

    invoke-virtual {v4, v9}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->isItemInPreview(I)Z

    move-result v5

    if-eqz v5, :cond_7

    instance-of v5, v11, Lcom/zui/launcher/BubbleTextView;

    if-eqz v5, :cond_7

    check-cast v11, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v11}, Lcom/zui/launcher/BubbleTextView;->verifyHighRes()V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x1

    move v4, v3

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move v4, v1

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v0, v3}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v1, :cond_b

    move v2, v1

    goto :goto_5

    :cond_b
    move v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Lcom/zui/launcher/PagedView;->setEnableOverscroll(Z)V

    iget-object v2, v0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v2, Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v4

    if-le v4, v1, :cond_c

    goto :goto_6

    :cond_c
    const/16 v3, 0x8

    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    iget-object v0, v0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method private u()Lcom/zui/launcher/CellLayout;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderPagedView;->o:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00be

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1, v3}, Lcom/zui/launcher/CellLayout;->setExchangeXYFlag(Z)V

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->folderCellWidthPx:I

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->folderCellHeightPx:I

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/CellLayout;->setCellDimensions(II)V

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/CellLayout;->setInvertIfRtl(Z)V

    iget v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    iget v2, p0, Lcom/zui/launcher/folder/FolderPagedView;->w:I

    invoke-virtual {v1, v0, v2}, Lcom/zui/launcher/CellLayout;->setGridSize(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private v()V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addViewForRank(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;I)V
    .locals 7

    iget v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    rem-int v1, p3, v0

    div-int v0, p3, v0

    iput p3, p2, Lcom/zui/launcher/ItemInfo;->rank:I

    iget p3, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v2, v1, p3

    iput v2, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    div-int/2addr v1, p3

    iput v1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput p3, v5, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget p3, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput p3, v5, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->getViewId()I

    move-result v4

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/zui/launcher/CellLayout$LayoutParams;Z)Z

    :cond_1
    return-void
.end method

.method public allocateRankForNewItem()I
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->allocateSpaceForRank(I)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    return v0
.end method

.method public allocateSpaceForRank(I)I
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-le p1, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-direct {p0, v0, p1, v2}, Lcom/zui/launcher/folder/FolderPagedView;->t(Ljava/util/ArrayList;IZ)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    invoke-virtual {v0, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launcher/folder/FolderPagedView;->t(Ljava/util/ArrayList;IZ)V

    return p1
.end method

.method public arrangeChildren(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/folder/FolderPagedView;->t(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->createNewView(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/zui/launcher/folder/FolderPagedView;->t(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public clearScrollHint()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    :cond_0
    return-void
.end method

.method public completePendingPageChanges()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createAndAddViewForRank(Lcom/zui/launcher/WorkspaceItemInfo;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderPagedView;->createNewView(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/folder/FolderPagedView;->allocateSpaceForRank(I)I

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/zui/launcher/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;I)V

    return-object v0
.end method

.method public createNewView(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherContext;->isCurrentThemeIsDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, p1, v0}, Lcom/zui/launcher/ActiveIconUtil;->getActiveIconView(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/ItemInfoWithIcon;Lcom/zui/launcher/icons/IconCache;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/folder/FolderPagedView;->o:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0049

    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v1, p1, v0}, Lcom/zui/launcher/ActiveIconView;->applyFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;)V

    sget-object v0, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->p:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p0, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/zui/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Lcom/zui/launcher/ActiveIconView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->o:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00ba

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHapticFeedbackEnabled(Z)V

    sget-object v1, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderPagedView;->p:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/zui/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncherContext()Lcom/zui/launcher/LauncherContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherContext;->getTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/BubbleTextView;->setTextColor(I)V

    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->p:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected doPageBeginTransition()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getFolderLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    instance-of v0, p0, Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_1
    return-void
.end method

.method public findNearestArea(II)I
    .locals 8

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v7

    sget-object v6, Lcom/zui/launcher/folder/FolderPagedView;->z:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v7

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/CellLayout;->findNearestArea(IIII[I)[I

    iget-object p1, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->isLayoutRtl()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/zui/launcher/folder/FolderPagedView;->z:[I

    invoke-virtual {v7}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v2

    sget-object v3, Lcom/zui/launcher/folder/FolderPagedView;->z:[I

    aget v3, v3, p2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    aput v2, p1, p2

    :cond_0
    iget p1, p0, Lcom/zui/launcher/folder/FolderPagedView;->u:I

    sub-int/2addr p1, v1

    iget v2, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    mul-int/2addr v0, v2

    sget-object v2, Lcom/zui/launcher/folder/FolderPagedView;->z:[I

    aget v1, v2, v1

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    aget p0, v2, p2

    add-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->w:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const p0, 0x7f1203be

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllocatedContentSize()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->u:I

    return p0
.end method

.method public getCellCountX()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->r:I

    return p0
.end method

.method public getCellCountY()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->s:I

    return p0
.end method

.method public getChildByItemInfo(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 1

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    iget v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getChildGap()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getCurrentCellLayout()Lcom/zui/launcher/CellLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int v1, v0, p0

    :cond_0
    return v1
.end method

.method public getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    add-int v1, v0, p0

    :cond_0
    return v1
.end method

.method public getFirstItem()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getCurrentCellLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    const/4 v1, 0x0

    if-lez p0, :cond_1

    invoke-virtual {v0, v1, v1}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getIconViewByItemInfo(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;
    .locals 2

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    iget v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zui/launcher/CellLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v1, p1, p0

    div-int/2addr p1, p0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0, v1, p1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    mul-int/2addr v0, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public getLastItem()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getCurrentCellLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    if-lez p0, :cond_1

    rem-int v1, v2, p0

    div-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method public getPageAt(I)Lcom/zui/launcher/CellLayout;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    return-object p0
.end method

.method public isReordering()Z
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v4}, Lcom/zui/launcher/CellLayout;->isReordering()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public itemsPerPage()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    return p0
.end method

.method public iterateOverItems(Lcom/zui/launcher/Workspace$ItemOperator;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v0

    :goto_2
    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4, v3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/ItemInfo;

    invoke-interface {p1, v6, v5}, Lcom/zui/launcher/Workspace$ItemOperator;->evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/PagedView;->notifyPageSwitchListener(I)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->updateTextViewFocus()V

    :cond_0
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->onPageBeginTransition()V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->doPageBeginTransition()V

    return-void
.end method

.method protected onPageEndTransition()V
    .locals 4

    invoke-super {p0}, Lcom/zui/launcher/PagedView;->onPageEndTransition()V

    iget-wide v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->y:J

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Launcher;->onPageMove(II)V

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->y:J

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/folder/FolderPagedView;->v()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    iget-object p2, p0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p2, Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    iget p0, p0, Lcom/zui/launcher/PagedView;->mMaxScroll:I

    invoke-virtual {p2, p1, p0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->setScroll(II)V

    return-void
.end method

.method public rankOnCurrentPage(I)Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public realTimeReorder(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/folder/FolderPagedView;->completePendingPageChanges()V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v3

    iget v4, v0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int v5, v2, v4

    rem-int v4, v2, v4

    if-eq v5, v3, :cond_0

    const-string v5, "FolderPagedView"

    const-string v6, "Cannot animate when the target cell is invisible"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v5, v0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    rem-int v6, v1, v5

    div-int v7, v1, v5

    if-ne v2, v1, :cond_1

    return-void

    :cond_1
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v2, v1, :cond_3

    if-ge v7, v3, :cond_2

    mul-int v8, v3, v5

    move v6, v9

    goto :goto_0

    :cond_2
    move v1, v8

    :goto_0
    move v2, v10

    goto :goto_2

    :cond_3
    if-le v7, v3, :cond_4

    add-int/lit8 v2, v3, 0x1

    mul-int/2addr v2, v5

    sub-int/2addr v2, v10

    add-int/lit8 v6, v5, -0x1

    goto :goto_1

    :cond_4
    move v1, v8

    move v2, v1

    :goto_1
    move/from16 v19, v8

    move v8, v2

    move/from16 v2, v19

    :goto_2
    if-eq v1, v8, :cond_9

    add-int v5, v1, v2

    iget v7, v0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int v11, v5, v7

    rem-int v7, v5, v7

    iget v12, v0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v13, v7, v12

    div-int/2addr v7, v12

    invoke-virtual {v0, v11}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v12

    invoke-virtual {v12, v13, v7}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8

    if-eq v3, v11, :cond_5

    invoke-virtual {v12, v7}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v7, v11, v1}, Lcom/zui/launcher/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v11

    new-instance v12, Lcom/zui/launcher/folder/FolderPagedView$a;

    invoke-direct {v12, v0, v7, v11, v1}, Lcom/zui/launcher/folder/FolderPagedView$a;-><init>(Lcom/zui/launcher/folder/FolderPagedView;Landroid/view/View;FI)V

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-lez v2, :cond_6

    move v11, v10

    goto :goto_3

    :cond_6
    move v11, v9

    :goto_3
    iget-boolean v13, v0, Lcom/zui/launcher/folder/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v11, v13

    if-eqz v11, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    :goto_4
    int-to-float v11, v11

    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v13, 0xe6

    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v13, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_5
    move v1, v5

    goto :goto_2

    :cond_9
    sub-int v1, v4, v6

    mul-int/2addr v1, v2

    if-gtz v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {v0, v3}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v1

    const/high16 v3, 0x41f00000    # 30.0f

    :goto_6
    if-eq v6, v4, :cond_d

    add-int v5, v6, v2

    iget v7, v0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v8, v5, v7

    div-int v7, v5, v7

    invoke-virtual {v1, v8, v7}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/ItemInfo;

    iget v8, v7, Lcom/zui/launcher/ItemInfo;->rank:I

    sub-int/2addr v8, v2

    iput v8, v7, Lcom/zui/launcher/ItemInfo;->rank:I

    :cond_b
    iget v7, v0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v12, v6, v7

    div-int v13, v6, v7

    const/16 v14, 0xe6

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v10, v1

    move v15, v9

    invoke-virtual/range {v10 .. v18}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    move-result v6

    if-eqz v6, :cond_c

    int-to-float v6, v9

    add-float/2addr v6, v3

    float-to-int v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v3, v7

    move v9, v6

    :cond_c
    move v6, v5

    goto :goto_6

    :cond_d
    return-void
.end method

.method public realTimeReorderAfterRemove(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/folder/FolderPagedView;->completePendingPageChanges()V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v3

    iget v4, v0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int v5, v2, v4

    rem-int v4, v2, v4

    const-string v6, "FolderPagedView"

    if-eq v5, v3, :cond_0

    const-string v7, "Cannot animate when the target cell is invisible"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v7, v0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    rem-int v8, v1, v7

    div-int v9, v1, v7

    const/4 v11, 0x1

    if-ne v2, v1, :cond_3

    if-ltz v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_2

    if-nez v8, :cond_2

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v1, v0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v1, Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v0

    if-le v0, v11, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/16 v10, 0x8

    :goto_0
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v12, -0x1

    if-le v2, v1, :cond_7

    if-ge v9, v3, :cond_4

    mul-int/2addr v7, v3

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    if-ne v9, v5, :cond_5

    move v1, v12

    move v2, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v3, 0x1

    mul-int/2addr v1, v7

    sub-int/2addr v1, v11

    :goto_1
    move v7, v2

    :goto_2
    if-eq v9, v5, :cond_6

    iget v2, v0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    add-int/lit8 v4, v2, -0x1

    :cond_6
    move v12, v11

    goto :goto_3

    :cond_7
    if-le v9, v3, :cond_8

    add-int/lit8 v2, v3, 0x1

    mul-int/2addr v2, v7

    sub-int/2addr v2, v11

    add-int/lit8 v8, v7, -0x1

    move v7, v2

    goto :goto_3

    :cond_8
    move v1, v12

    move v7, v1

    :goto_3
    const/4 v2, 0x0

    :goto_4
    const/4 v5, 0x0

    if-eq v1, v7, :cond_e

    add-int v9, v1, v12

    iget v15, v0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int v11, v9, v15

    rem-int v15, v9, v15

    iget v10, v0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v13, v15, v10

    div-int v10, v15, v10

    invoke-virtual {v0, v11}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v14

    if-nez v14, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v14, v13, v10}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_d

    if-eq v3, v11, :cond_a

    invoke-virtual {v14, v10}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v10, v13, v1}, Lcom/zui/launcher/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;I)V

    add-int/lit8 v1, v3, 0x1

    if-ne v11, v1, :cond_d

    if-nez v15, :cond_d

    invoke-virtual {v10, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10, v1}, Landroid/view/View;->setTranslationX(F)V

    move-object v2, v10

    goto :goto_7

    :cond_a
    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v5

    new-instance v11, Lcom/zui/launcher/folder/FolderPagedView$b;

    invoke-direct {v11, v0, v10, v5, v1}, Lcom/zui/launcher/folder/FolderPagedView$b;-><init>(Lcom/zui/launcher/folder/FolderPagedView;Landroid/view/View;FI)V

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-lez v12, :cond_b

    const/4 v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    iget-boolean v13, v0, Lcom/zui/launcher/folder/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v5, v13

    if-eqz v5, :cond_c

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    goto :goto_6

    :cond_c
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v5

    :goto_6
    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v13, 0xe6

    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v13, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_7
    move v1, v9

    const/4 v11, 0x1

    goto :goto_4

    :cond_e
    :goto_8
    sub-int v1, v4, v8

    mul-int/2addr v1, v12

    const/high16 v7, 0x3f800000    # 1.0f

    if-gtz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----realTimeReorderAfterRemove   return  endPos: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " startPos: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " direction: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_f

    new-instance v1, Lcom/zui/launcher/folder/FolderPagedView$c;

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/folder/FolderPagedView$c;-><init>(Lcom/zui/launcher/folder/FolderPagedView;Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xe6

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v6, 0x0

    int-to-long v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    new-instance v1, Lcom/zui/launcher/folder/FolderPagedView$d;

    invoke-direct {v1, v0}, Lcom/zui/launcher/folder/FolderPagedView$d;-><init>(Lcom/zui/launcher/folder/FolderPagedView;)V

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_9
    return-void

    :cond_10
    const/4 v6, 0x0

    invoke-virtual {v0, v3}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v1

    const/high16 v3, 0x41f00000    # 30.0f

    move v10, v6

    :goto_a
    if-eq v8, v4, :cond_13

    add-int v6, v8, v12

    iget v9, v0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v11, v6, v9

    div-int v9, v6, v9

    invoke-virtual {v1, v11, v9}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/ItemInfo;

    iget v11, v9, Lcom/zui/launcher/ItemInfo;->rank:I

    sub-int/2addr v11, v12

    iput v11, v9, Lcom/zui/launcher/ItemInfo;->rank:I

    :cond_11
    iget v9, v0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v15, v8, v9

    div-int v16, v8, v9

    const/16 v17, 0xe6

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v13, v1

    move/from16 v18, v10

    invoke-virtual/range {v13 .. v21}, Lcom/zui/launcher/CellLayout;->animateChildToPosition(Landroid/view/View;IIIILandroid/animation/ValueAnimator;ZZ)Z

    move-result v8

    if-eqz v8, :cond_12

    int-to-float v8, v10

    add-float/2addr v8, v3

    float-to-int v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v3, v9

    move v10, v8

    :cond_12
    move v8, v6

    goto :goto_a

    :cond_13
    if-eqz v2, :cond_14

    new-instance v1, Lcom/zui/launcher/folder/FolderPagedView$e;

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/folder/FolderPagedView$e;-><init>(Lcom/zui/launcher/folder/FolderPagedView;Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xe6

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, v0, Lcom/zui/launcher/folder/FolderPagedView;->q:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_14
    new-instance v1, Lcom/zui/launcher/folder/FolderPagedView$f;

    invoke-direct {v1, v0}, Lcom/zui/launcher/folder/FolderPagedView$f;-><init>(Lcom/zui/launcher/folder/FolderPagedView;)V

    int-to-long v2, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_b
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveOrder(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderPagedView;->setupContentDimensions(I)V

    new-instance v1, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {v1, v2}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    iget-object v2, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v2}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/zui/launcher/FolderInfo;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget v5, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int v9, v3, v5

    rem-int v5, v3, v5

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v6, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    rem-int v7, v5, v6

    div-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/zui/launcher/ItemInfo;

    iget v6, v13, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ne v6, v7, :cond_0

    iget v6, v13, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ne v6, v5, :cond_0

    iget v6, v13, Lcom/zui/launcher/ItemInfo;->rank:I

    if-ne v6, v3, :cond_0

    iget v6, v13, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-eq v6, v9, :cond_1

    :cond_0
    iput v7, v13, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v5, v13, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v3, v13, Lcom/zui/launcher/ItemInfo;->rank:I

    iput v9, v13, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget-object v5, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    iget-object v5, v5, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v6

    iget-object v5, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    iget-object v5, v5, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    iget v8, v5, Lcom/zui/launcher/ItemInfo;->id:I

    iget v10, v13, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v11, v13, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v7, v13

    invoke-virtual/range {v6 .. v11}, Lcom/zui/launcher/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    :cond_1
    iget v5, v13, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v5, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v13, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v5, v12, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/zui/launcher/CellLayout;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v5, v4}, Lcom/zui/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->isItemInPreview(I)Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, v4, Lcom/zui/launcher/BubbleTextView;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v4}, Lcom/zui/launcher/BubbleTextView;->verifyHighRes()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    iget p1, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    div-int v1, v0, p1

    rem-int/2addr v0, p1

    if-eqz v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_1
    if-lt p1, v1, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result p1

    if-le p1, v0, :cond_7

    move p1, v0

    goto :goto_2

    :cond_7
    move p1, v2

    :goto_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->setEnableOverscroll(Z)V

    iget-object p1, p0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast p1, Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_8

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->mFolderName:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public setFixedSize(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v1, p1, p2}, Lcom/zui/launcher/CellLayout;->setFixedSize(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFocusOnFirstChild()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/FolderPagedView;->getCurrentCellLayout()Lcom/zui/launcher/CellLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setFolder(Lcom/zui/launcher/folder/Folder;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/folder/FolderPagedView;->x:Lcom/zui/launcher/folder/Folder;

    const v0, 0x7f0a0192

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/PagedView;->mPageIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/PagedView;->initParentViews(Landroid/view/View;)V

    return-void
.end method

.method public setupContentDimensions(I)V
    .locals 7

    iput p1, p0, Lcom/zui/launcher/folder/FolderPagedView;->u:I

    iget v1, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    iget v2, p0, Lcom/zui/launcher/folder/FolderPagedView;->w:I

    iget v3, p0, Lcom/zui/launcher/folder/FolderPagedView;->r:I

    iget v4, p0, Lcom/zui/launcher/folder/FolderPagedView;->s:I

    iget v5, p0, Lcom/zui/launcher/folder/FolderPagedView;->t:I

    sget-object v6, Lcom/zui/launcher/folder/FolderPagedView;->z:[I

    move v0, p1

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/folder/FolderPagedView;->calculateGridSize(IIIIII[I)V

    sget-object p1, Lcom/zui/launcher/folder/FolderPagedView;->z:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p0, Lcom/zui/launcher/folder/FolderPagedView;->w:I

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/folder/FolderPagedView;->v:I

    iget v2, p0, Lcom/zui/launcher/folder/FolderPagedView;->w:I

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/CellLayout;->setGridSize(II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showScrollHint(I)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/zui/launcher/folder/FolderPagedView;->mIsRtl:Z

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    const p1, -0x4270a3d7    # -0.07f

    goto :goto_1

    :cond_1
    const p1, 0x3d8f5c29    # 0.07f

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    sub-int v4, v0, p1

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    return-void
.end method

.method public verifyVisibleHighResIcons(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderPagedView;->getPageAt(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    move-object v1, v0

    check-cast v1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v1}, Lcom/zui/launcher/WorkspaceIconCompat;->verifyHighRes()V

    invoke-interface {v1}, Lcom/zui/launcher/WorkspaceIconCompat;->getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
