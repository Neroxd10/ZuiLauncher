.class public Lcom/zui/launcher/allapps/AllTaskIconAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;,
        Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;,
        Lcom/zui/launcher/allapps/AllTaskIconAdapter$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_EMPTY_VIEW:I = 0x4

.field public static final VIEW_TYPE_TASK:I = 0x2


# instance fields
.field private a:Lcom/zui/launcher/Launcher;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;

.field e:Lcom/zui/quickstep/RecentsModel;

.field private f:Lcom/zui/quickstep/util/CancellableTask;

.field private final g:I

.field private h:Landroid/os/Handler;

.field private i:I

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    new-instance v0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/AllTaskIconAdapter$b;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->j:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->c:Landroid/view/LayoutInflater;

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/RecentsModel;

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->e:Lcom/zui/quickstep/RecentsModel;

    new-instance v1, Lcom/zui/launcher/allapps/l;

    invoke-direct {v1, p0}, Lcom/zui/launcher/allapps/l;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->getTasksIgnoreLock(Ljava/util/function/Consumer;)I

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->g:I

    new-instance v0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/AllTaskIconAdapter$a;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->setOnItemClickListener(Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->i:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->a:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method private d(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Lcom/android/systemui/shared/recents/model/Task;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->g:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Lcom/android/systemui/shared/recents/model/Task;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic e(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic f(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task-------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllTaskIconAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01d4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v0}, Lcom/zui/launcher/BubbleTextView;->reset()V

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->getNewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a03af

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static getNewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static isEmptyView(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public synthetic g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->d:Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;

    iget p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;->b:I

    return p0
.end method

.method public synthetic h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->d:Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;->onItemLongClick(Landroid/view/View;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic i()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->h:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, p2, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->e:Lcom/zui/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsModel;->getIconCache()Lcom/zui/quickstep/TaskIconCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;

    iget-object p2, p2, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;->a:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v1, Lcom/zui/launcher/allapps/k;

    invoke-direct {v1, p1}, Lcom/zui/launcher/allapps/k;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, p2, v1}, Lcom/zui/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/zui/quickstep/util/CancellableTask;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->f:Lcom/zui/quickstep/util/CancellableTask;

    iget-object p2, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->d:Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;

    if-eqz p2, :cond_3

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/zui/launcher/allapps/m;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/allapps/m;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/zui/launcher/allapps/n;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/allapps/n;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0d003a

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsCellHeightPx:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p2, Lcom/zui/launcher/allapps/AllTaskIconAdapter$d;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter$d;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0039

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const p2, 0x7f0a01d4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2, v1}, Lcom/zui/launcher/BubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->i:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p2, Lcom/zui/launcher/allapps/AllTaskIconAdapter$d;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter$d;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p1, :cond_0

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p0, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/widget/RelativeLayout;

    const p1, 0x7f0a01d4

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/BubbleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/BubbleTextView;->setIconVisible(Z)V

    :cond_0
    return-void
.end method

.method public reloadIfNeed()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->a:Lcom/zui/launcher/Launcher;

    new-instance v1, Lcom/zui/launcher/allapps/o;

    invoke-direct {v1, p0}, Lcom/zui/launcher/allapps/o;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->addOnResumeCallback(Lcom/zui/launcher/Launcher$OnResumeCallback;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->f:Lcom/zui/quickstep/util/CancellableTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/CancellableTask;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->f:Lcom/zui/quickstep/util/CancellableTask;

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->d:Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;

    return-void
.end method
