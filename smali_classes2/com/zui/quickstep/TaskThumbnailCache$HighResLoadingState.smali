.class public Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighResLoadingState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->e:Ljava/util/ArrayList;

    invoke-static {}, Lcom/zui/quickstep/TaskThumbnailCache;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/zui/quickstep/TaskThumbnailCache$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->b:Z

    return p0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->d:Z

    iget-boolean v1, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->a:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->c:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->d:Z

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_2
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;

    iget-boolean v2, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->d:Z

    invoke-interface {v1, v2}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;->onHighResLoadingStateChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->d:Z

    return p0
.end method

.method public removeCallback(Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFlingingFast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->c:Z

    invoke-direct {p0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->b()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->b:Z

    invoke-direct {p0}, Lcom/zui/quickstep/TaskThumbnailCache$HighResLoadingState;->b()V

    return-void
.end method
