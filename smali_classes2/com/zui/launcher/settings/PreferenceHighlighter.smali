.class public Lcom/zui/launcher/settings/PreferenceHighlighter;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/settings/PreferenceHighlighter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:I


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:I

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/settings/PreferenceHighlighter$a;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "highlightColor"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/settings/PreferenceHighlighter$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/settings/PreferenceHighlighter;->f:Landroid/util/Property;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    sput v0, Lcom/zui/launcher/settings/PreferenceHighlighter;->g:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->d:Z

    sget v0, Lcom/zui/launcher/settings/PreferenceHighlighter;->g:I

    iput v0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->e:I

    iput-object p1, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->c:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/settings/PreferenceHighlighter;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->e:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/settings/PreferenceHighlighter;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->e:I

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/settings/PreferenceHighlighter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/settings/PreferenceHighlighter;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/settings/PreferenceHighlighter;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    sget-object v0, Lcom/zui/launcher/settings/PreferenceHighlighter;->f:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->e:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/zui/launcher/settings/PreferenceHighlighter;->g:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/zui/launcher/settings/PreferenceHighlighter$c;

    invoke-direct {v1, p0}, Lcom/zui/launcher/settings/PreferenceHighlighter$c;-><init>(Lcom/zui/launcher/settings/PreferenceHighlighter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    iget v0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->c:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-boolean p3, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->d:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p3

    const/16 v1, 0x42

    invoke-static {p3, v1}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p3

    sget-object v1, Lcom/zui/launcher/settings/PreferenceHighlighter;->f:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    sget v5, Lcom/zui/launcher/settings/PreferenceHighlighter;->g:I

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p3, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-wide/16 v5, 0xc8

    invoke-virtual {p3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p3, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    new-instance v1, Lcom/zui/launcher/settings/PreferenceHighlighter$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/settings/PreferenceHighlighter$b;-><init>(Lcom/zui/launcher/settings/PreferenceHighlighter;)V

    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v4, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->d:Z

    :cond_2
    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float v5, p2

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float v6, p2, p3

    iget-object v7, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/zui/launcher/settings/PreferenceHighlighter;->c:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
