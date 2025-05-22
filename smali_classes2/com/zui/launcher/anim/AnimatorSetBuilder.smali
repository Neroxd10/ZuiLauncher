.class public Lcom/zui/launcher/anim/AnimatorSetBuilder;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ANIM_ALL_APPS_FADE:I = 0xa

.field public static final ANIM_HOTSEAT_SCALE:I = 0x4

.field public static final ANIM_HOTSEAT_TRANSLATE:I = 0x5

.field public static final ANIM_OVERVIEW_FADE:I = 0x9

.field public static final ANIM_OVERVIEW_SCALE:I = 0x6

.field public static final ANIM_OVERVIEW_TRANSLATE_X:I = 0x7

.field public static final ANIM_OVERVIEW_TRANSLATE_Y:I = 0x8

.field public static final ANIM_VERTICAL_PROGRESS:I = 0x0

.field public static final ANIM_WORKSPACE_FADE:I = 0x3

.field public static final ANIM_WORKSPACE_SCALE:I = 0x1

.field public static final ANIM_WORKSPACE_TRANSLATE:I = 0x2

.field public static final FLAG_DONT_ANIMATE_OVERVIEW:I = 0x1


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field protected final mAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->c:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addFlag(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->c:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->c:I

    return-void
.end method

.method public addOnFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()Landroid/animation/AnimatorSet;
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/anim/AnimatorSetBuilder$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder$a;-><init>(Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object v0
.end method

.method public getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public hasFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->c:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public play(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInterpolator(ILandroid/view/animation/Interpolator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/AnimatorSetBuilder;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
