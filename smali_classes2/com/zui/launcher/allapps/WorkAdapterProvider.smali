.class public Lcom/zui/launcher/allapps/WorkAdapterProvider;
.super Lcom/zui/launcher/allapps/BaseAdapterProvider;
.source ""


# static fields
.field public static final KEY_WORK_EDU_STEP:Ljava/lang/String; = "showed_work_profile_edu"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Lcom/zui/launcher/BaseDraggingActivity;

.field private c:Z


# direct methods
.method private a()Z
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/allapps/WorkAdapterProvider;->b:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "showed_work_profile_edu"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public addWorkItems(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/WorkAdapterProvider;->c:Z

    if-nez v0, :cond_0

    new-instance p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    const/high16 v0, 0x200000

    :goto_0
    iput v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/allapps/WorkAdapterProvider;->a()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    const/high16 v0, 0x100000

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemsPerRow(II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isViewSupported(I)Z
    .locals 0

    const/high16 p0, 0x200000

    if-eq p1, p0, :cond_1

    const/high16 p0, 0x100000

    if-ne p1, p0, :cond_0

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

.method public onBindView(Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .locals 0

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p0, Lcom/zui/launcher/allapps/WorkEduCard;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/zui/launcher/allapps/WorkEduCard;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/allapps/WorkEduCard;->setPosition(I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 1

    const/high16 p0, 0x200000

    if-ne p3, p0, :cond_0

    const p0, 0x7f0d01ad

    goto :goto_0

    :cond_0
    const p0, 0x7f0d01ac

    :goto_0
    new-instance p3, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/zui/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p3
.end method

.method public shouldShowWorkApps()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/allapps/WorkAdapterProvider;->c:Z

    return p0
.end method

.method public updateCurrentState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/WorkAdapterProvider;->c:Z

    iget-object p0, p0, Lcom/zui/launcher/allapps/WorkAdapterProvider;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
