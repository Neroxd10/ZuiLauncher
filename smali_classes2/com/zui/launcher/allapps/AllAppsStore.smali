.class public Lcom/zui/launcher/allapps/AllAppsStore;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;
    }
.end annotation


# static fields
.field public static final DEFER_UPDATES_NEXT_DRAW:I = 0x1

.field public static final DEFER_UPDATES_TEST:I = 0x2


# instance fields
.field private a:Lcom/zui/launcher/util/PackageUserKey;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/zui/launcher/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->a:Lcom/zui/launcher/util/PackageUserKey;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->e:I

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->f:Z

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->g:Z

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/BubbleTextView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget v0, p0, Lcom/zui/launcher/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/BubbleTextView;->applyFromApplicationInfo(Lcom/zui/launcher/AppInfo;)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/BubbleTextView;->applyProgressLevel(I)Lcom/zui/launcher/graphics/PreloadIconDrawable;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/PromiseAppInfo;Lcom/zui/launcher/BubbleTextView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget p0, p0, Lcom/zui/launcher/PromiseAppInfo;->level:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/BubbleTextView;->applyProgressLevel(I)Lcom/zui/launcher/graphics/PreloadIconDrawable;

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->f:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsStore;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;

    invoke-interface {v2}, Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;->onAppsUpdated()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/BubbleTextView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsStore;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/zui/launcher/BubbleTextView;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/zui/launcher/BubbleTextView;

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/function/Predicate;Lcom/zui/launcher/BubbleTextView;)V
    .locals 2

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsStore;->a:Lcom/zui/launcher/util/PackageUserKey;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/PackageUserKey;->updateFromItemInfo(Lcom/zui/launcher/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->a:Lcom/zui/launcher/util/PackageUserKey;

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p2, v0, p0}, Lcom/zui/launcher/BubbleTextView;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    :cond_0
    return-void
.end method

.method public addOrUpdateApps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/AppInfo;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsStore;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/zui/launcher/AppInfo;->toComponentKey()Lcom/zui/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsStore;->d()V

    return-void
.end method

.method public addUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disableDeferUpdates(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->e:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsStore;->e:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsStore;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsStore;->d()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsStore;->f:Z

    :cond_0
    return-void
.end method

.method public disableDeferUpdatesSilently(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->e:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsStore;->e:I

    return-void
.end method

.method public enableDeferUpdates(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->e:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsStore;->e:I

    return-void
.end method

.method public getApp(Lcom/zui/launcher/util/ComponentKey;)Lcom/zui/launcher/AppInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/AppInfo;

    return-object p0
.end method

.method public getApps()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getDeferUpdatesFlags()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->e:I

    return p0
.end method

.method public isUpdateRecommend()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->g:Z

    return p0
.end method

.method public justUpdateAllApps()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsStore;->d()V

    return-void
.end method

.method public justUpdateRecommendApp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->g:Z

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsStore;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->g:Z

    return-void
.end method

.method public registerIconContainer(Landroid/view/ViewGroup;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeApps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/AppInfo;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsStore;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/zui/launcher/AppInfo;->toComponentKey()Lcom/zui/launcher/util/ComponentKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsStore;->d()V

    return-void
.end method

.method public removeUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    return-void
.end method

.method public unregisterIconContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsStore;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/allapps/g;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/allapps/g;-><init>(Lcom/zui/launcher/allapps/AllAppsStore;Ljava/util/function/Predicate;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsStore;->e(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateProgressBar(Lcom/zui/launcher/AppInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/allapps/i;

    invoke-direct {v0, p1}, Lcom/zui/launcher/allapps/i;-><init>(Lcom/zui/launcher/AppInfo;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsStore;->e(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updatePromiseAppProgress(Lcom/zui/launcher/PromiseAppInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/allapps/h;

    invoke-direct {v0, p1}, Lcom/zui/launcher/allapps/h;-><init>(Lcom/zui/launcher/PromiseAppInfo;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/AllAppsStore;->e(Ljava/util/function/Consumer;)V

    return-void
.end method
