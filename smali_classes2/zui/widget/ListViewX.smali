.class public Lzui/widget/ListViewX;
.super Landroid/widget/ListView;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lzui/widget/SlideView$OnSlideListener;
.implements Lzui/widget/SlideView$OnViewPressedListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/ListViewX$g;,
        Lzui/widget/ListViewX$f;,
        Lzui/widget/ListViewX$XAdapter;,
        Lzui/widget/ListViewX$OnFloatMenuShowListener;,
        Lzui/widget/ListViewX$OnFloatMenuOnClickListener;,
        Lzui/widget/ListViewX$OnEditModeStateListener;,
        Lzui/widget/ListViewX$OnSlideLoadingStateListener;,
        Lzui/widget/ListViewX$OnSlideOutItemClickListener;,
        Lzui/widget/ListViewX$OnSlideListener;
    }
.end annotation


# static fields
.field public static final FIX_ITEM_FLAG:I = 0x11000001

.field public static final LIST_MODE_LEFT_SLIDE_SHOW_ITEM:I = 0x1

.field public static final LIST_MODE_LONG_PRESS_EDIT_MODE:I = 0x10

.field public static final LIST_MODE_LONG_PRESS_FLOAT_MENU:I = 0x1000000

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final LIST_MODE_RESERVE_LONG_PRESS:I = 0x10000

.field public static final LIST_MODE_RIGHT_SLIDE:I = 0x1000

.field public static final LIST_MODE_SPLIT_SLIDE_VIEW:I = 0x100000

.field private static final N0:Ljava/lang/String;

.field private static O0:J = 0x0L

.field private static final P0:J

.field private static Q0:Z = false

.field private static R0:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lzui/widget/ListViewX;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_HEADER_VIEW_HIDE:I = 0x0

.field public static final STATE_HEADER_VIEW_SHOW:I = 0x2

.field public static final STATE_HEADER_VIEW_SLIDING:I = 0x1


# instance fields
.field private A:[I

.field private A0:I

.field private B:Z

.field private final B0:Ljava/lang/Runnable;

.field private C:I

.field private C0:I

.field private D:I

.field private D0:I

.field private E:I

.field private E0:Z

.field private F:I

.field private F0:I

.field private G:Z

.field private G0:Z

.field private H:Lzui/widget/ListViewXEditBar;

.field private H0:Landroid/animation/Animator$AnimatorListener;

.field private I:Lzui/widget/ListViewX$OnSlideOutItemClickListener;

.field private I0:[I

.field private J:Lzui/widget/ListViewX$OnSlideListener;

.field private J0:[I

.field private K:Lzui/widget/ListViewX$f;

.field private K0:Landroid/animation/ObjectAnimator;

.field private L:Z

.field private L0:I

.field private M:[Z

.field private M0:I

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Lzui/widget/ListViewX$OnEditModeStateListener;

.field private T:I

.field private U:Landroid/content/res/ColorStateList;

.field private V:Landroid/content/res/ColorStateList;

.field private W:Z

.field private X:Landroid/view/VelocityTracker;

.field private Y:Z

.field private Z:Landroid/widget/AbsListView$OnScrollListener;

.field private a:I

.field private a0:I

.field private b:I

.field private b0:I

.field private c:I

.field private c0:Z

.field private d:I

.field private d0:I

.field private e:I

.field private e0:I

.field private f:I

.field private f0:Lzui/app/FloatDialog;

.field private g:I

.field private g0:[Ljava/lang/CharSequence;

.field private h:I

.field private h0:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

.field private i:I

.field private i0:Landroid/widget/ListAdapter;

.field private j:I

.field private j0:Lzui/app/FloatDialog$MenuAdapter;

.field private k:Landroid/content/Context;

.field private k0:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private l0:Lzui/widget/ListViewX$OnFloatMenuShowListener;

.field private m:Lzui/widget/SlideView;

.field private m0:Z

.field private n:Lzui/widget/SlideView;

.field private n0:Landroid/widget/LinearLayout;

.field private o:Lzui/widget/SlideView$SlideViewParams;

.field private o0:I

.field private p:Landroid/widget/ListAdapter;

.field private p0:I

.field private q:I

.field private q0:I

.field private r:I

.field private r0:I

.field private s:I

.field private s0:I

.field private t:Lzui/widget/SlideView;

.field private t0:Z

.field private u:Z

.field private u0:Z

.field private v:I

.field private v0:I

.field private w:Z

.field private w0:Lzui/widget/ListViewX$OnSlideLoadingStateListener;

.field private x:Z

.field private x0:Landroid/animation/AnimatorSet;

.field private y:Z

.field private y0:Landroid/animation/ValueAnimator;

.field private z:Lzui/widget/ListViewX$g;

.field private z0:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lzui/widget/ListViewX;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/widget/ListViewX;->N0:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lzui/widget/ListViewX;->P0:J

    new-instance v0, Lzui/widget/ListViewX$e;

    const-string v1, "HeaderHeight"

    invoke-direct {v0, v1}, Lzui/widget/ListViewX$e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzui/widget/ListViewX;->R0:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/ListViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lzui/platform/R$attr;->listviewXStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/ListViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/ListViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x12c

    iput v0, p0, Lzui/widget/ListViewX;->a:I

    const/16 v1, 0x32

    iput v1, p0, Lzui/widget/ListViewX;->b:I

    const/16 v2, 0xfa

    iput v2, p0, Lzui/widget/ListViewX;->c:I

    const/16 v2, 0x1e

    iput v2, p0, Lzui/widget/ListViewX;->d:I

    const/16 v3, 0x96

    iput v3, p0, Lzui/widget/ListViewX;->e:I

    iput v0, p0, Lzui/widget/ListViewX;->f:I

    iput v1, p0, Lzui/widget/ListViewX;->g:I

    const/16 v0, 0xc8

    iput v0, p0, Lzui/widget/ListViewX;->h:I

    iput v2, p0, Lzui/widget/ListViewX;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lzui/widget/ListViewX;->q:I

    iput v0, p0, Lzui/widget/ListViewX;->r:I

    iput v0, p0, Lzui/widget/ListViewX;->s:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lzui/widget/ListViewX;->w:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lzui/widget/ListViewX;->A:[I

    iput v0, p0, Lzui/widget/ListViewX;->C:I

    iput v0, p0, Lzui/widget/ListViewX;->D:I

    iput v0, p0, Lzui/widget/ListViewX;->E:I

    iput v0, p0, Lzui/widget/ListViewX;->F:I

    const/4 v2, 0x0

    iput-object v2, p0, Lzui/widget/ListViewX;->J:Lzui/widget/ListViewX$OnSlideListener;

    new-instance v3, Lzui/widget/ListViewX$f;

    invoke-direct {v3, p0, v2}, Lzui/widget/ListViewX$f;-><init>(Lzui/widget/ListViewX;Lzui/widget/ListViewX$a;)V

    iput-object v3, p0, Lzui/widget/ListViewX;->K:Lzui/widget/ListViewX$f;

    iput v0, p0, Lzui/widget/ListViewX;->O:I

    iput v0, p0, Lzui/widget/ListViewX;->P:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lzui/widget/ListViewX;->W:Z

    iput v0, p0, Lzui/widget/ListViewX;->a0:I

    iput v0, p0, Lzui/widget/ListViewX;->b0:I

    iput v0, p0, Lzui/widget/ListViewX;->d0:I

    iput v0, p0, Lzui/widget/ListViewX;->e0:I

    iput v0, p0, Lzui/widget/ListViewX;->k0:I

    iput v0, p0, Lzui/widget/ListViewX;->s0:I

    iput-boolean v2, p0, Lzui/widget/ListViewX;->t0:Z

    iput v1, p0, Lzui/widget/ListViewX;->v0:I

    iput v1, p0, Lzui/widget/ListViewX;->A0:I

    new-instance v2, Lzui/widget/ListViewX$c;

    invoke-direct {v2, p0}, Lzui/widget/ListViewX$c;-><init>(Lzui/widget/ListViewX;)V

    iput-object v2, p0, Lzui/widget/ListViewX;->B0:Ljava/lang/Runnable;

    const/4 v2, 0x4

    iput v2, p0, Lzui/widget/ListViewX;->C0:I

    iput v1, p0, Lzui/widget/ListViewX;->D0:I

    iput-boolean v1, p0, Lzui/widget/ListViewX;->E0:Z

    iput v0, p0, Lzui/widget/ListViewX;->F0:I

    iput-boolean v1, p0, Lzui/widget/ListViewX;->G0:Z

    new-instance v0, Lzui/widget/ListViewX$d;

    invoke-direct {v0, p0}, Lzui/widget/ListViewX$d;-><init>(Lzui/widget/ListViewX;)V

    iput-object v0, p0, Lzui/widget/ListViewX;->H0:Landroid/animation/Animator$AnimatorListener;

    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Lzui/widget/ListViewX;->I0:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lzui/widget/ListViewX;->J0:[I

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/widget/ListViewX;->d0(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lzui/widget/ListViewX;->e0()V

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic A(Lzui/widget/ListViewX;)I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->M0:I

    return p0
.end method

.method static synthetic B(Lzui/widget/ListViewX;I)I
    .locals 0

    iput p1, p0, Lzui/widget/ListViewX;->M0:I

    return p1
.end method

.method private B0(II)V
    .locals 1

    iget-object p0, p0, Lzui/widget/ListViewX;->J0:[I

    aget v0, p0, p2

    if-nez v0, :cond_0

    aput p1, p0, p2

    :cond_0
    return-void
.end method

.method static synthetic C(Lzui/widget/ListViewX;I)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->U0(I)V

    return-void
.end method

.method private C0(Landroid/view/View;II)V
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    const/16 v0, 0xa

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lzui/widget/ListViewX;->B0(II)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lzui/widget/ListViewX;->J0:[I

    aget p0, p0, p3

    add-int/2addr p0, p2

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic D(Lzui/widget/ListViewX;)Z
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->q0()Z

    move-result p0

    return p0
.end method

.method private D0(II)V
    .locals 1

    iget-object p0, p0, Lzui/widget/ListViewX;->I0:[I

    aget v0, p0, p2

    if-nez v0, :cond_0

    aput p1, p0, p2

    :cond_0
    return-void
.end method

.method static synthetic E(Lzui/widget/ListViewX;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    return-object p0
.end method

.method private E0(II)V
    .locals 2

    if-ltz p2, :cond_1

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lzui/widget/ListViewX;->D0(II)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object p0, p0, Lzui/widget/ListViewX;->I0:[I

    aget p0, p0, p2

    add-int/2addr p0, p1

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic F(Lzui/widget/ListViewX;)Lzui/widget/SlideView$SlideViewParams;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    return-object p0
.end method

.method private F0(IZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/widget/SlideView;->isViewChecked()Z

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-direct {p0, v0, p1}, Lzui/widget/ListViewX;->W0(Lzui/widget/SlideView;I)V

    invoke-direct {p0, v0, p1, p2}, Lzui/widget/ListViewX;->R0(Lzui/widget/SlideView;IZ)V

    :cond_0
    return-void
.end method

.method static synthetic G(Lzui/widget/ListViewX;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private G0()Z
    .locals 1

    iget p0, p0, Lzui/widget/ListViewX;->j:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic H(Lzui/widget/ListViewX;)I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->C:I

    return p0
.end method

.method private H0()V
    .locals 4

    invoke-direct {p0}, Lzui/widget/ListViewX;->N0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    iget-object v2, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lzui/widget/SlideView;->shrink(Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    :cond_0
    iput-boolean v1, p0, Lzui/widget/ListViewX;->u:Z

    invoke-direct {p0, v1}, Lzui/widget/ListViewX;->f0(Z)V

    iget v1, p0, Lzui/widget/ListViewX;->q:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v3, p0, Lzui/widget/ListViewX;->M:[Z

    aput-boolean v0, v3, v1

    :cond_1
    iget-object v1, p0, Lzui/widget/ListViewX;->S:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lzui/widget/ListViewX;->M:[Z

    invoke-interface {v1, p0, v3}, Lzui/widget/ListViewX$OnEditModeStateListener;->onPrepareEditMode(Landroid/widget/ListView;[Z)V

    :cond_2
    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->L0(Z)V

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidateViews()V

    invoke-direct {p0}, Lzui/widget/ListViewX;->s0()V

    iget-object v0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    if-nez v0, :cond_3

    new-instance v0, Lzui/widget/ListViewXEditBar;

    iget v1, p0, Lzui/widget/ListViewX;->Q:I

    invoke-direct {v0, p0, v1}, Lzui/widget/ListViewXEditBar;-><init>(Landroid/widget/ListView;I)V

    iput-object v0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    :cond_3
    iget-object v0, p0, Lzui/widget/ListViewX;->S:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    invoke-virtual {v1}, Lzui/widget/ListViewXEditBar;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lzui/widget/ListViewX$OnEditModeStateListener;->prepareCustomizedTitle(Landroid/widget/ListView;Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    iget-boolean v1, p0, Lzui/widget/ListViewX;->W:Z

    invoke-virtual {v0, v1}, Lzui/widget/ListViewXEditBar;->showDivider(Z)V

    iget-object v0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    invoke-direct {p0}, Lzui/widget/ListViewX;->getCheckItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lzui/widget/ListViewXEditBar;->updateTitle(I)V

    iget v0, p0, Lzui/widget/ListViewX;->d0:I

    if-gt v0, v2, :cond_6

    iget v0, p0, Lzui/widget/ListViewX;->e0:I

    if-le v0, v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    invoke-virtual {p0}, Lzui/widget/ListViewXEditBar;->show()V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    iget v1, p0, Lzui/widget/ListViewX;->e0:I

    iget p0, p0, Lzui/widget/ListViewX;->d0:I

    invoke-virtual {v0, v1, p0}, Lzui/widget/ListViewXEditBar;->show(II)V

    :goto_1
    return-void
.end method

.method private I(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lzui/widget/ListViewX;->X:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/ListViewX;->X:Landroid/view/VelocityTracker;

    :cond_0
    iget-object p0, p0, Lzui/widget/ListViewX;->X:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private I0()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    invoke-direct {p0, v1}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v0, 0x0

    iget-object v2, p0, Lzui/widget/ListViewX;->f0:Lzui/app/FloatDialog;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v2, :cond_5

    iget-object v2, p0, Lzui/widget/ListViewX;->i0:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    iget-object v2, p0, Lzui/widget/ListViewX;->j0:Lzui/app/FloatDialog$MenuAdapter;

    if-nez v2, :cond_1

    iget-object v2, p0, Lzui/widget/ListViewX;->g0:[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    sget-object p0, Lzui/widget/ListViewX;->N0:Ljava/lang/String;

    const-string v0, "Do not show float menu without content!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Lzui/app/FloatDialog$Builder;

    iget-object v5, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    invoke-direct {v2, v5}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lzui/widget/ListViewX;->g0:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    invoke-virtual {v2, v5, p0}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    :cond_2
    iget-object v5, p0, Lzui/widget/ListViewX;->i0:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    invoke-virtual {v2, v5, p0}, Lzui/app/FloatDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lzui/widget/ListViewX;->j0:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz v5, :cond_4

    invoke-virtual {v2, v5, v1}, Lzui/app/FloatDialog$Builder;->setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;Landroid/view/View;)Lzui/app/FloatDialog$Builder;

    :cond_4
    :goto_0
    iget v5, p0, Lzui/widget/ListViewX;->k0:I

    if-eq v5, v3, :cond_6

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lzui/widget/ListViewX;->j0:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz v2, :cond_7

    new-instance v2, Lzui/app/FloatDialog$Builder;

    iget-object v5, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    invoke-direct {v2, v5}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lzui/widget/ListViewX;->j0:Lzui/app/FloatDialog$MenuAdapter;

    invoke-virtual {v2, v5, v1}, Lzui/app/FloatDialog$Builder;->setMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;Landroid/view/View;)Lzui/app/FloatDialog$Builder;

    iget v5, p0, Lzui/widget/ListViewX;->k0:I

    if-eq v5, v3, :cond_6

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_1
    invoke-virtual {v2, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move v0, v4

    :cond_6
    invoke-virtual {v2, p0}, Lzui/app/FloatDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/FloatDialog$Builder;

    invoke-virtual {v2}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/ListViewX;->f0:Lzui/app/FloatDialog;

    :cond_7
    iget v2, p0, Lzui/widget/ListViewX;->r:I

    iput v2, p0, Lzui/widget/ListViewX;->s:I

    iput-boolean v4, p0, Lzui/widget/ListViewX;->m0:Z

    invoke-virtual {v1, v4}, Lzui/widget/SlideView;->setPressed(Z)V

    invoke-virtual {v1, v4}, Lzui/widget/SlideView;->lockPressUI(Z)V

    iget-object v2, p0, Lzui/widget/ListViewX;->f0:Lzui/app/FloatDialog;

    xor-int/2addr v0, v4

    invoke-virtual {v2, v1, v0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/view/View;Z)V

    iget-object v0, p0, Lzui/widget/ListViewX;->l0:Lzui/widget/ListViewX$OnFloatMenuShowListener;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lzui/widget/ListViewX;->f0:Lzui/app/FloatDialog;

    iget p0, p0, Lzui/widget/ListViewX;->s:I

    invoke-interface {v0, v1, v4, p0}, Lzui/widget/ListViewX$OnFloatMenuShowListener;->onShow(Landroid/content/DialogInterface;ZI)V

    :cond_8
    return-void
.end method

.method private J()Z
    .locals 1

    iget p0, p0, Lzui/widget/ListViewX;->L0:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private J0()V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v7, p0, Lzui/widget/ListViewX;->M:[Z

    add-int v8, v0, v2

    aget-boolean v7, v7, v8

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_0
    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v7, p0, Lzui/widget/ListViewX;->M:[Z

    add-int v9, v0, v2

    aget-boolean v7, v7, v9

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    mul-int/2addr v7, v5

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v12, v11, v4

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v11, v8

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    :goto_3
    add-int/2addr v0, v8

    goto :goto_0

    :cond_4
    :goto_4
    if-ge v4, v6, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private K(I)Z
    .locals 7

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->setPullingMode(I)V

    iget v0, p0, Lzui/widget/ListViewX;->F0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lzui/widget/ListViewX;->F0:I

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget v4, p0, Lzui/widget/ListViewX;->F0:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget v5, p0, Lzui/widget/ListViewX;->F0:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    if-nez p1, :cond_3

    goto :goto_6

    :cond_3
    if-eqz v0, :cond_4

    iget v5, p0, Lzui/widget/ListViewX;->L0:I

    iget v6, p0, Lzui/widget/ListViewX;->e:I

    if-lt v5, v6, :cond_4

    if-lez p1, :cond_4

    return v2

    :cond_4
    if-eqz v3, :cond_5

    iget v5, p0, Lzui/widget/ListViewX;->L0:I

    iget v6, p0, Lzui/widget/ListViewX;->e:I

    neg-int v6, v6

    if-gt v5, v6, :cond_5

    if-gez p1, :cond_5

    return v2

    :cond_5
    iget v5, p0, Lzui/widget/ListViewX;->L0:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x28

    div-int/lit8 v5, v5, 0x32

    add-int/2addr v5, v1

    if-eqz v0, :cond_8

    iget v0, p0, Lzui/widget/ListViewX;->L0:I

    if-ltz v0, :cond_8

    if-lez p1, :cond_6

    div-int v6, p1, v5

    add-int/2addr v0, v6

    goto :goto_3

    :cond_6
    add-int/2addr v0, p1

    :goto_3
    iput v0, p0, Lzui/widget/ListViewX;->L0:I

    iget v0, p0, Lzui/widget/ListViewX;->L0:I

    iget v6, p0, Lzui/widget/ListViewX;->e:I

    if-le v0, v6, :cond_7

    iput v6, p0, Lzui/widget/ListViewX;->L0:I

    goto :goto_4

    :cond_7
    if-gez v0, :cond_8

    iput v2, p0, Lzui/widget/ListViewX;->L0:I

    :cond_8
    :goto_4
    if-nez v3, :cond_9

    if-eqz v4, :cond_c

    :cond_9
    iget v0, p0, Lzui/widget/ListViewX;->L0:I

    if-gez p1, :cond_a

    div-int/2addr p1, v5

    :cond_a
    add-int/2addr v0, p1

    iput v0, p0, Lzui/widget/ListViewX;->L0:I

    iget p1, p0, Lzui/widget/ListViewX;->L0:I

    iget v0, p0, Lzui/widget/ListViewX;->e:I

    neg-int v3, v0

    if-ge p1, v3, :cond_b

    neg-int p1, v0

    iput p1, p0, Lzui/widget/ListViewX;->L0:I

    goto :goto_5

    :cond_b
    if-lez p1, :cond_c

    iput v2, p0, Lzui/widget/ListViewX;->L0:I

    :cond_c
    :goto_5
    return v1

    :cond_d
    :goto_6
    return v2
.end method

.method private K0(I)V
    .locals 3

    iget-boolean v0, p0, Lzui/widget/ListViewX;->L:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/ListViewX;->L:Z

    iget-object v1, p0, Lzui/widget/ListViewX;->K:Lzui/widget/ListViewX$f;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lzui/widget/ListViewX;->K:Lzui/widget/ListViewX$f;

    sget-wide v1, Lzui/widget/ListViewX;->O0:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private L(I)V
    .locals 3

    iget-object v0, p0, Lzui/widget/ListViewX;->K:Lzui/widget/ListViewX$f;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lzui/widget/ListViewX;->K:Lzui/widget/ListViewX$f;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private L0(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v3

    instance-of v4, v2, Lzui/widget/SlideView;

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lzui/widget/SlideView;->startEditModeAnimation(Z)V

    goto :goto_1

    :cond_0
    instance-of v2, v2, Lzui/widget/SlideViewEx;

    if-eqz v2, :cond_1

    invoke-virtual {v3, p1}, Lzui/widget/SlideView;->showCheckItem(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private M(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lzui/widget/ListViewX;->q0()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    instance-of v0, p2, Lzui/widget/SlideViewEx;

    if-eqz v0, :cond_2

    check-cast p2, Lzui/widget/SlideViewEx;

    invoke-virtual {p2, p1}, Lzui/widget/SlideViewEx;->d(Landroid/view/MotionEvent;)I

    move-result p1

    iget-object p2, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setLongClickable(Z)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lzui/widget/ListViewX;->Y:Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private M0(IZ)V
    .locals 1

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lzui/widget/ListViewX;->N:Z

    iput p1, p0, Lzui/widget/ListViewX;->O:I

    iput p1, p0, Lzui/widget/ListViewX;->P:I

    iput-boolean v0, p0, Lzui/widget/ListViewX;->w:Z

    sput-boolean v0, Lzui/widget/ListViewX;->Q0:Z

    const/4 p1, 0x0

    iput p1, p0, Lzui/widget/ListViewX;->R:I

    return-void
.end method

.method private N()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setPressed(Z)V

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lzui/widget/ListViewX;->setAbsListViewTouchMode(I)V

    iget-object p0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lzui/widget/SlideView;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private N0()V
    .locals 1

    iget v0, p0, Lzui/widget/ListViewX;->L0:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lzui/widget/ListViewX;->E0:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzui/widget/ListViewX;->Q()V

    invoke-direct {p0}, Lzui/widget/ListViewX;->O0()V

    :cond_0
    return-void
.end method

.method private O0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/ListViewX;->E0:Z

    iget-object p0, p0, Lzui/widget/ListViewX;->K0:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private P(Ljava/lang/String;)V
    .locals 1

    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lzui/widget/ListViewX;->j:I

    or-int/lit8 p1, p1, 0x0

    :goto_0
    iput p1, p0, Lzui/widget/ListViewX;->j:I

    goto :goto_2

    :cond_0
    const-string v0, "leftSlideShowItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lzui/widget/ListViewX;->j:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "longPressEditMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lzui/widget/ListViewX;->j:I

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_2
    const-string v0, "rightSlide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p1, p0, Lzui/widget/ListViewX;->j:I

    or-int/lit16 p1, p1, 0x1000

    goto :goto_0

    :cond_3
    const-string v0, "splitSlideView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget p1, p0, Lzui/widget/ListViewX;->j:I

    const/high16 v0, 0x100000

    :goto_1
    or-int/2addr p1, v0

    goto :goto_0

    :cond_4
    const-string v0, "reserveLongPress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p1, p0, Lzui/widget/ListViewX;->j:I

    const/high16 v0, 0x10000

    goto :goto_1

    :cond_5
    const-string v0, "longPressFloatMenu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget p1, p0, Lzui/widget/ListViewX;->j:I

    const/high16 v0, 0x1000000

    goto :goto_1

    :cond_6
    const-string p0, "slideLoading"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private P0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/ListViewX;->L:Z

    iget-object v0, p0, Lzui/widget/ListViewX;->K:Lzui/widget/ListViewX$f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/widget/ListViewX;->K:Lzui/widget/ListViewX$f;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 4

    iget v0, p0, Lzui/widget/ListViewX;->L0:I

    iput v0, p0, Lzui/widget/ListViewX;->D0:I

    iput v0, p0, Lzui/widget/ListViewX;->M0:I

    sget-object v1, Lzui/widget/ListViewX;->R0:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lzui/widget/ListViewX;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lzui/widget/ListViewX;->H0:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lzui/widget/ListViewX;->K0:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private Q0()V
    .locals 4

    iget v0, p0, Lzui/widget/ListViewX;->R:I

    if-eqz v0, :cond_1

    iget v0, p0, Lzui/widget/ListViewX;->O:I

    iget v1, p0, Lzui/widget/ListViewX;->P:I

    if-ge v1, v0, :cond_0

    move v3, v1

    move v1, v0

    move v0, v3

    :cond_0
    :goto_0
    if-ge v0, v1, :cond_2

    iget-boolean v2, p0, Lzui/widget/ListViewX;->N:Z

    invoke-direct {p0, v0, v2}, Lzui/widget/ListViewX;->F0(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lzui/widget/ListViewX;->q:I

    iget-boolean v1, p0, Lzui/widget/ListViewX;->N:Z

    invoke-direct {p0, v0, v1}, Lzui/widget/ListViewX;->F0(IZ)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/ListViewX;->N:Z

    const/4 v1, -0x1

    iput v1, p0, Lzui/widget/ListViewX;->O:I

    iput v1, p0, Lzui/widget/ListViewX;->P:I

    sput-boolean v0, Lzui/widget/ListViewX;->Q0:Z

    iput-boolean v0, p0, Lzui/widget/ListViewX;->w:Z

    iput v0, p0, Lzui/widget/ListViewX;->R:I

    return-void
.end method

.method private R()V
    .locals 4

    iget v0, p0, Lzui/widget/ListViewX;->O:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/widget/SlideView;->isViewChecked()Z

    move-result v0

    iget-boolean v1, p0, Lzui/widget/ListViewX;->N:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->setViewChecked(Z)V

    iget-object v0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    iget v1, p0, Lzui/widget/ListViewX;->q:I

    iget-boolean v2, p0, Lzui/widget/ListViewX;->N:Z

    invoke-direct {p0, v0, v1, v2}, Lzui/widget/ListViewX;->R0(Lzui/widget/SlideView;IZ)V

    :cond_0
    invoke-direct {p0}, Lzui/widget/ListViewX;->S0()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lzui/widget/ListViewX;->N:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lzui/widget/ListViewX;->N:Z

    iget v3, p0, Lzui/widget/ListViewX;->R:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lzui/widget/ListViewX;->q:I

    sub-int/2addr v3, v2

    :goto_0
    invoke-direct {p0, v3, v0}, Lzui/widget/ListViewX;->F0(IZ)V

    goto :goto_1

    :cond_1
    if-ne v3, v1, :cond_2

    iget v3, p0, Lzui/widget/ListViewX;->q:I

    add-int/2addr v3, v2

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lzui/widget/ListViewX;->R:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lzui/widget/ListViewX;->q:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    goto :goto_2

    :cond_3
    if-ne v0, v1, :cond_4

    iget v0, p0, Lzui/widget/ListViewX;->q:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(II)V

    :cond_4
    return-void
.end method

.method private R0(Lzui/widget/SlideView;IZ)V
    .locals 7

    iget-object v0, p0, Lzui/widget/ListViewX;->M:[Z

    aput-boolean p3, v0, p2

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lzui/widget/ListViewX;->W0(Lzui/widget/SlideView;I)V

    :cond_0
    iget-object p3, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    invoke-direct {p0}, Lzui/widget/ListViewX;->getCheckItemCount()I

    move-result v0

    invoke-virtual {p3, v0}, Lzui/widget/ListViewXEditBar;->updateTitle(I)V

    iget-object v1, p0, Lzui/widget/ListViewX;->S:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    int-to-long v4, p1

    iget-object p1, p0, Lzui/widget/ListViewX;->M:[Z

    aget-boolean v6, p1, p2

    move-object v2, p0

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lzui/widget/ListViewX$OnEditModeStateListener;->onItemCheckedChanged(Landroid/widget/ListView;IJZ)V

    :cond_1
    return-void
.end method

.method private S()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->f0(Z)V

    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->L0(Z)V

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lzui/widget/SlideView;->setViewChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidateViews()V

    invoke-direct {p0}, Lzui/widget/ListViewX;->s0()V

    return-void
.end method

.method private S0()Z
    .locals 4

    iget v0, p0, Lzui/widget/ListViewX;->R:I

    iget v1, p0, Lzui/widget/ListViewX;->q:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v3, p0, Lzui/widget/ListViewX;->P:I

    if-eq v3, v1, :cond_1

    if-ge v3, v1, :cond_0

    iput v2, p0, Lzui/widget/ListViewX;->R:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lzui/widget/ListViewX;->R:I

    :goto_0
    iget v1, p0, Lzui/widget/ListViewX;->q:I

    iput v1, p0, Lzui/widget/ListViewX;->P:I

    :cond_1
    if-eqz v0, :cond_2

    iget p0, p0, Lzui/widget/ListViewX;->R:I

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private T()V
    .locals 2

    iget-object v0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->setAbsListViewTouchMode(I)V

    iget-object v0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->lockPressUI(Z)V

    iget-object v0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->setPressed(Z)V

    :cond_0
    iput-boolean v1, p0, Lzui/widget/ListViewX;->m0:Z

    sput-boolean v1, Lzui/widget/ListViewX;->Q0:Z

    return-void
.end method

.method private T0(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lzui/widget/SlideView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p1, Lzui/widget/SlideView;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lzui/widget/SlideView;

    :cond_1
    check-cast v0, Lzui/widget/SlideView;

    iput-object v0, p0, Lzui/widget/ListViewX;->n:Lzui/widget/SlideView;

    if-eq v0, v1, :cond_3

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lzui/widget/SlideView;->setFocused(Z)V

    :cond_2
    iget-object p0, p0, Lzui/widget/ListViewX;->n:Lzui/widget/SlideView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->setFocused(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private U0(I)V
    .locals 3

    iget-object v0, p0, Lzui/widget/ListViewX;->n0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getTop()I

    move-result v1

    iget v2, p0, Lzui/widget/ListViewX;->o0:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 p1, 0x2

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lzui/widget/ListViewX;->n0:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    move p1, v0

    :goto_0
    iget-object v0, p0, Lzui/widget/ListViewX;->n0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->V0(I)V

    return-void
.end method

.method private V(Ljava/lang/Object;IZ)Landroid/widget/ListView$FixedViewInfo;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-class v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz p3, :cond_1

    :try_start_0
    const-string p3, "mHeaderViewInfos"

    goto :goto_0

    :cond_1
    const-string p3, "mFooterViewInfos"

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView$FixedViewInfo;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p0
.end method

.method private V0(I)V
    .locals 1

    iget v0, p0, Lzui/widget/ListViewX;->v0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lzui/widget/ListViewX;->v0:I

    iget-object v0, p0, Lzui/widget/ListViewX;->w0:Lzui/widget/ListViewX$OnSlideLoadingStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lzui/widget/ListViewX$OnSlideLoadingStateListener;->onSlideLoadingState(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private W(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private W0(Lzui/widget/SlideView;I)V
    .locals 2

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Lzui/widget/ListViewX;->M:[Z

    aget-boolean p0, p0, p2

    invoke-virtual {p1, p0}, Lzui/widget/SlideView;->setViewChecked(Z)V

    :cond_0
    return-void
.end method

.method private X(I)I
    .locals 6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 p1, 0xbb8

    if-ge p0, p1, :cond_0

    int-to-double p0, p0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    div-double/2addr p0, v4

    sub-double p0, v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    :goto_0
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr v2, p0

    mul-double/2addr v2, v0

    double-to-int p0, v2

    goto :goto_1

    :cond_0
    const/16 p1, 0x32c8

    if-ge p0, p1, :cond_1

    int-to-double p0, p0

    const-wide v4, 0x40cafe0000000000L    # 13820.0

    div-double/2addr p0, v4

    sub-double p0, v2, p0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    goto :goto_0

    :cond_1
    const-wide v0, 0x4072c00000000000L    # 300.0

    int-to-double p0, p0

    const-wide v2, 0x40d3880000000000L    # 20000.0

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    double-to-int p0, p0

    :goto_1
    return p0
.end method

.method private Y(Landroid/view/View;)Lzui/widget/SlideView;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lzui/widget/ListViewX;->q0()Z

    move-result p0

    if-eqz p0, :cond_2

    instance-of p0, p1, Lzui/widget/SlideViewEx;

    if-eqz p0, :cond_1

    check-cast p1, Lzui/widget/SlideViewEx;

    invoke-virtual {p1}, Lzui/widget/SlideViewEx;->e()Lzui/widget/SlideView;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lzui/widget/SlideView;

    if-eqz p0, :cond_3

    check-cast p1, Lzui/widget/SlideView;

    return-object p1

    :cond_2
    instance-of p0, p1, Lzui/widget/SlideView;

    if-eqz p0, :cond_3

    check-cast p1, Lzui/widget/SlideView;

    return-object p1

    :cond_3
    return-object v0
.end method

.method private Z(ILandroid/view/KeyEvent;Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 p3, 0x17

    if-eq p1, p3, :cond_0

    const/16 p3, 0x3e

    if-eq p1, p3, :cond_0

    const/16 p3, 0x42

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v1}, Lzui/widget/ListViewX;->b0(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    invoke-direct {p0, p3}, Lzui/widget/ListViewX;->T0(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lzui/widget/ListViewX;)I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->D:I

    return p0
.end method

.method private a0(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->I(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_b

    const/4 v0, -0x1

    if-eq v2, v4, :cond_8

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    const/4 v0, 0x5

    if-eq v2, v0, :cond_2

    const/4 v0, 0x6

    if-eq v2, v0, :cond_0

    const/16 v0, 0x105

    if-eq v2, v0, :cond_2

    const/16 v0, 0x106

    if-eq v2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lzui/widget/ListViewX;->s0:I

    if-ne v1, v2, :cond_10

    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lzui/widget/ListViewX;->s0:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lzui/widget/ListViewX;->q0:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lzui/widget/ListViewX;->r0:I

    iput p1, p0, Lzui/widget/ListViewX;->p0:I

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->s0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lzui/widget/ListViewX;->p0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lzui/widget/ListViewX;->q0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lzui/widget/ListViewX;->r0:I

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0}, Lzui/widget/ListViewX;->P0()V

    invoke-direct {p0}, Lzui/widget/ListViewX;->m0()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lzui/widget/ListViewX;->N0()V

    :cond_4
    invoke-direct {p0}, Lzui/widget/ListViewX;->u0()V

    :goto_0
    iput v0, p0, Lzui/widget/ListViewX;->s0:I

    goto/16 :goto_2

    :cond_5
    iget v1, p0, Lzui/widget/ListViewX;->s0:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v0, :cond_6

    return v4

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lzui/widget/ListViewX;->p0:I

    sub-int v1, p1, v1

    iput p1, p0, Lzui/widget/ListViewX;->p0:I

    invoke-direct {p0}, Lzui/widget/ListViewX;->m0()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lzui/widget/ListViewX;->r0:I

    sub-int/2addr p1, v3

    iget v3, p0, Lzui/widget/ListViewX;->q0:I

    sub-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_7

    invoke-direct {p0, v1, v4}, Lzui/widget/ListViewX;->z0(IZ)V

    :cond_7
    iget-boolean p1, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz p1, :cond_10

    iget p1, p0, Lzui/widget/ListViewX;->O:I

    if-eq p1, v0, :cond_10

    invoke-direct {p0}, Lzui/widget/ListViewX;->R()V

    goto/16 :goto_2

    :cond_8
    invoke-direct {p0}, Lzui/widget/ListViewX;->P0()V

    iget-boolean p1, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lzui/widget/ListViewX;->O:I

    if-eq p1, v0, :cond_9

    invoke-direct {p0}, Lzui/widget/ListViewX;->Q0()V

    return v4

    :cond_9
    invoke-direct {p0}, Lzui/widget/ListViewX;->m0()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lzui/widget/ListViewX;->N0()V

    :cond_a
    invoke-direct {p0}, Lzui/widget/ListViewX;->u0()V

    iput v3, p0, Lzui/widget/ListViewX;->p0:I

    goto :goto_0

    :cond_b
    iput v0, p0, Lzui/widget/ListViewX;->q0:I

    iput v1, p0, Lzui/widget/ListViewX;->r0:I

    iput v1, p0, Lzui/widget/ListViewX;->p0:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lzui/widget/ListViewX;->s0:I

    iget-boolean p1, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_c

    goto :goto_1

    :cond_c
    move v4, v3

    :goto_1
    iget-object p1, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    if-eqz p1, :cond_10

    if-eqz v4, :cond_d

    invoke-virtual {p1}, Lzui/widget/SlideView;->getCheckedRegion()I

    move-result p1

    if-gt v0, p1, :cond_e

    :cond_d
    if-nez v4, :cond_10

    iget-object p1, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    invoke-virtual {p1}, Lzui/widget/SlideView;->getCheckedRegion()I

    move-result p1

    iget v1, p0, Lzui/widget/ListViewX;->v:I

    add-int/2addr p1, v1

    if-ge v0, p1, :cond_10

    :cond_e
    iget p1, p0, Lzui/widget/ListViewX;->q:I

    iget-object v0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    invoke-virtual {v0}, Lzui/widget/SlideView;->isViewChecked()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/widget/ListViewX;->M0(IZ)V

    iget-object p1, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    invoke-virtual {p1}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_f
    invoke-direct {p0}, Lzui/widget/ListViewX;->G0()Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, p0, Lzui/widget/ListViewX;->r:I

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->K0(I)V

    :cond_10
    :goto_2
    iget-boolean p0, p0, Lzui/widget/ListViewX;->w:Z

    return p0
.end method

.method static synthetic b(Lzui/widget/ListViewX;I)I
    .locals 0

    iput p1, p0, Lzui/widget/ListViewX;->L0:I

    return p1
.end method

.method private b0(Landroid/view/KeyEvent;Z)V
    .locals 2

    iget-object v0, p0, Lzui/widget/ListViewX;->n:Lzui/widget/SlideView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lzui/widget/SlideView;->getViewPosition()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    if-ltz v0, :cond_2

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/preference/Preference;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    const-class p1, Landroid/preference/Preference;

    :try_start_0
    const-string p2, "onClick"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_0
    instance-of p2, p0, Lzui/preference/SwitchPreferenceX;

    if-eqz p2, :cond_1

    check-cast p0, Lzui/preference/SwitchPreferenceX;

    invoke-virtual {p0, p1}, Lzui/preference/SwitchPreferenceX;->onKey(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_1
    instance-of p2, p0, Lzui/preference/InLineEditTextPreference;

    if-eqz p2, :cond_2

    check-cast p0, Lzui/preference/InLineEditTextPreference;

    invoke-virtual {p0, p1}, Lzui/preference/InLineEditTextPreference;->onKey(Landroid/view/KeyEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lzui/widget/ListViewX;)Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/ListViewX;->G:Z

    return p0
.end method

.method private c0(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->W(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput v1, p0, Lzui/widget/ListViewX;->q:I

    invoke-direct {p0, v0}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v3

    iput-object v3, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    iput v1, p0, Lzui/widget/ListViewX;->r:I

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    iput v1, p0, Lzui/widget/ListViewX;->q:I

    move-object v0, v2

    :goto_0
    invoke-direct {p0, p1, v0}, Lzui/widget/ListViewX;->M(Landroid/view/MotionEvent;Landroid/view/View;)V

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lzui/widget/ListViewX;->n0()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lzui/widget/ListViewX;->J()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lzui/widget/ListViewX;->T:I

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    if-eq v0, v3, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    iget-boolean v0, p0, Lzui/widget/ListViewX;->u:Z

    if-eqz v0, :cond_6

    iget-object p1, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {p1, v1}, Lzui/widget/SlideView;->setPressed(Z)V

    :cond_4
    iget-object p1, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {p1}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    move p1, v3

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    iput-boolean v3, p0, Lzui/widget/ListViewX;->u:Z

    iput-boolean v3, p0, Lzui/widget/ListViewX;->w:Z

    iget-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->setPressed(Z)V

    :cond_7
    :goto_2
    if-nez p1, :cond_8

    iget-boolean p0, p0, Lzui/widget/ListViewX;->x:Z

    if-eqz p0, :cond_9

    :cond_8
    move v1, v3

    :cond_9
    return v1

    :cond_a
    iget-boolean v0, p0, Lzui/widget/ListViewX;->u:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-wide v6, Lzui/widget/ListViewX;->P0:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_c

    iget-boolean p1, p0, Lzui/widget/ListViewX;->y:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {p1}, Lzui/widget/SlideView;->isSliding()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    iget-object p1, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {p1, v3}, Lzui/widget/SlideView;->shrink(Z)V

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {p1}, Lzui/widget/SlideView;->isSliding()Z

    move-result p1

    if-nez p1, :cond_d

    :goto_3
    iput-boolean v1, p0, Lzui/widget/ListViewX;->u:Z

    iput-boolean v1, p0, Lzui/widget/ListViewX;->w:Z

    iput-object v2, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    :cond_d
    return v3

    :cond_e
    iget-boolean p0, p0, Lzui/widget/ListViewX;->x:Z

    return p0

    :cond_f
    iput-boolean v1, p0, Lzui/widget/ListViewX;->y:Z

    iget-boolean v0, p0, Lzui/widget/ListViewX;->u:Z

    if-eqz v0, :cond_14

    iput-boolean v3, p0, Lzui/widget/ListViewX;->x:Z

    iget-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    iget-object v4, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    if-eq v0, v4, :cond_11

    if-eqz v0, :cond_10

    invoke-virtual {v0, v3}, Lzui/widget/SlideView;->shrink(Z)V

    iput-object v2, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    :cond_10
    iput-boolean v1, p0, Lzui/widget/ListViewX;->u:Z

    iput-boolean v1, p0, Lzui/widget/ListViewX;->w:Z

    goto :goto_4

    :cond_11
    if-eqz v0, :cond_13

    iput-boolean v3, p0, Lzui/widget/ListViewX;->y:Z

    iget-object v0, p0, Lzui/widget/ListViewX;->A:[I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getLocationInWindow([I)V

    iget-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lzui/widget/ListViewX;->A:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lzui/widget/ListViewX;->A:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lzui/widget/SlideView;->handleSlideOutItemClick(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {p1, v1}, Lzui/widget/SlideView;->shrink(Z)V

    iput-object v2, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    iput-boolean v1, p0, Lzui/widget/ListViewX;->u:Z

    iput-boolean v1, p0, Lzui/widget/ListViewX;->w:Z

    iget-object p1, p0, Lzui/widget/ListViewX;->J:Lzui/widget/ListViewX$OnSlideListener;

    if-eqz p1, :cond_13

    iget p0, p0, Lzui/widget/ListViewX;->q:I

    invoke-interface {p1, v2, p0, v1}, Lzui/widget/ListViewX$OnSlideListener;->onSlide(Landroid/view/View;II)V

    goto :goto_4

    :cond_12
    iget-object p0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_13
    :goto_4
    return v3

    :cond_14
    iput-boolean v1, p0, Lzui/widget/ListViewX;->x:Z

    iget-object v0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    if-eqz v0, :cond_15

    iput-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {v0, p1}, Lzui/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_5

    :cond_15
    iget-object p1, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    if-eqz p1, :cond_16

    invoke-virtual {p1, v1}, Lzui/widget/SlideView;->shrink(Z)V

    iput-object v2, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    :cond_16
    :goto_5
    return v1
.end method

.method static synthetic d(Lzui/widget/ListViewX;Lzui/widget/SlideView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lzui/widget/ListViewX;->W0(Lzui/widget/SlideView;I)V

    return-void
.end method

.method private d0(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    iput-object p1, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/ListViewX;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    new-instance v0, Lzui/widget/SlideView$SlideViewParams;

    invoke-direct {v0, p1}, Lzui/widget/SlideView$SlideViewParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    const/4 v0, 0x0

    iput v0, p0, Lzui/widget/ListViewX;->j:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-direct {p0}, Lzui/widget/ListViewX;->p0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->listview_x_left_space_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {v2, v1}, Lzui/widget/SlideView$SlideViewParams;->setLeftSpaceWidth(I)V

    iget-object v1, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    iget v2, p0, Lzui/widget/ListViewX;->a0:I

    iget v3, p0, Lzui/widget/ListViewX;->b0:I

    invoke-virtual {v1, v2, v3}, Lzui/widget/SlideView$SlideViewParams;->setBgColor(II)V

    iget-object v1, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzui/widget/SlideView$SlideViewParams;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelector(I)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lzui/widget/ListViewX;->O0:J

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    invoke-static {p1}, Lzui/util/CommonUtils;->isThemedResources(Landroid/content/Context;)Z

    sget v1, Lzui/platform/R$layout;->listview_x_edit_bar:I

    iput v1, p0, Lzui/widget/ListViewX;->Q:I

    sget v1, Lzui/platform/R$layout;->slide_view_merge:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$dimen;->listview_x_check_valid_region_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->v:I

    iget-object v2, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lzui/platform/R$dimen;->listview_x_left_slide_threshold:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lzui/widget/SlideView$SlideViewParams;->setLeftSlideThreshHold(I)V

    iget-object v2, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lzui/platform/R$dimen;->listview_x_right_slide_threshold:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lzui/widget/SlideView$SlideViewParams;->setRightSlideThreshHold(I)V

    iget-object v2, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {v2, v1}, Lzui/widget/SlideView$SlideViewParams;->setLayoutResource(I)V

    sget-object v1, Lzui/platform/R$styleable;->ListViewX:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lzui/platform/R$styleable;->ListViewX_android_category:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->g0(Ljava/lang/String;)V

    sget v2, Lzui/platform/R$styleable;->ListViewX_android_paddingStart:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->C:I

    if-gez v2, :cond_1

    sget v2, Lzui/platform/R$styleable;->ListViewX_android_paddingLeft:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->C:I

    :cond_1
    sget v2, Lzui/platform/R$styleable;->ListViewX_android_paddingEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->D:I

    if-gez v2, :cond_2

    sget v2, Lzui/platform/R$styleable;->ListViewX_android_paddingRight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lzui/widget/ListViewX;->D:I

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lzui/platform/R$styleable;->Theme_Zui:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/ListViewX;->B:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic e(Lzui/widget/ListViewX;)Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/ListViewX;->u0:Z

    return p0
.end method

.method private e0()V
    .locals 2

    iget-object v0, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->listview_x_pull_max_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->e:I

    sget v1, Lzui/platform/R$integer;->config_list_item_anim_base_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->a:I

    sget v1, Lzui/platform/R$integer;->config_list_item_anim_offset_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->b:I

    sget v1, Lzui/platform/R$integer;->config_list_batch_remove_base_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->c:I

    sget v1, Lzui/platform/R$integer;->config_list_batch_remove_offset_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->d:I

    sget v1, Lzui/platform/R$integer;->config_list_header_anim_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->f:I

    sget v1, Lzui/platform/R$integer;->config_list_bounce_top_rush_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->g:I

    sget v1, Lzui/platform/R$integer;->config_list_bounce_top_back_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lzui/widget/ListViewX;->h:I

    sget v1, Lzui/platform/R$dimen;->listview_x_bounce_top_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/ListViewX;->i:I

    return-void
.end method

.method static synthetic f(Lzui/widget/ListViewX;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzui/widget/ListViewX;->L:Z

    return p1
.end method

.method private f0(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v1, v0, [Z

    iput-object v1, p0, Lzui/widget/ListViewX;->M:[Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lzui/widget/ListViewX;->M:[Z

    aput-boolean p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic g(Lzui/widget/ListViewX;)I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->v0:I

    return p0
.end method

.method private g0(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->P(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lzui/widget/ListViewX;->n0()Z

    move-result p1

    iget-object p0, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzui/widget/SlideView$SlideViewParams;->setShowText(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lzui/widget/SlideView$SlideViewParams;->setShowText(Z)V

    :goto_1
    return-void
.end method

.method private getCheckItemCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lzui/widget/ListViewX;->M:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic h(Lzui/widget/ListViewX;)Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/ListViewX;->u:Z

    return p0
.end method

.method private h0()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/ListViewX;->w:Z

    iput-boolean v0, p0, Lzui/widget/ListViewX;->u:Z

    iget-object v1, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lzui/widget/SlideView;->shrink(Z)V

    iput-object v2, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lzui/widget/ListViewX;->q:I

    iput v0, p0, Lzui/widget/ListViewX;->r:I

    iput-object v2, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    iget-boolean v0, p0, Lzui/widget/ListViewX;->Y:Z

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLongClickable(Z)V

    return-void
.end method

.method static synthetic i(Lzui/widget/ListViewX;)Z
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->J()Z

    move-result p0

    return p0
.end method

.method private i0()Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {p0, v0, v3, v1}, Lzui/widget/ListViewX;->V(Ljava/lang/Object;IZ)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v0, v2

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr v3, p0

    if-gt v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    return v2
.end method

.method private invokeOnItemScrollListener()V
    .locals 4

    const-class v0, Landroid/widget/AbsListView;

    :try_start_0
    const-string v1, "invokeOnItemScrollListener"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic j(Lzui/widget/ListViewX;)I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->r:I

    return p0
.end method

.method static synthetic k(Lzui/widget/ListViewX;)I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->T:I

    return p0
.end method

.method private k0()Z
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->j:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic l(Lzui/widget/ListViewX;)I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->A0:I

    return p0
.end method

.method private l0()Z
    .locals 1

    iget p0, p0, Lzui/widget/ListViewX;->j:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic m(Lzui/widget/ListViewX;)Lzui/widget/SlideView;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->m:Lzui/widget/SlideView;

    return-object p0
.end method

.method private m0()Z
    .locals 1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->t0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->w:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lzui/widget/ListViewX;->f0:Lzui/app/FloatDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic n(Lzui/widget/ListViewX;)Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->p:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method private n0()Z
    .locals 1

    iget p0, p0, Lzui/widget/ListViewX;->j:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic o(Lzui/widget/ListViewX;)Z
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->k0()Z

    move-result p0

    return p0
.end method

.method private o0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic p(Lzui/widget/ListViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->H0()V

    return-void
.end method

.method private p0()Z
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->j:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic q(Z)Z
    .locals 0

    sput-boolean p0, Lzui/widget/ListViewX;->Q0:Z

    return p0
.end method

.method private q0()Z
    .locals 1

    iget p0, p0, Lzui/widget/ListViewX;->j:I

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic r(Lzui/widget/ListViewX;)Z
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->l0()Z

    move-result p0

    return p0
.end method

.method private r0()Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, v2, v1}, Lzui/widget/ListViewX;->V(Ljava/lang/Object;IZ)Landroid/widget/ListView$FixedViewInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_0
    move v3, v0

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p0

    if-lt v0, p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    return v1
.end method

.method static synthetic s(Lzui/widget/ListViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->N0()V

    return-void
.end method

.method private s0()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lzui/widget/SlideView;->setDividerState(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setAbsListViewLayoutMode(I)V
    .locals 2

    const-class v0, Landroid/widget/AbsListView;

    :try_start_0
    const-string v1, "mLayoutMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setAbsListViewTouchMode(I)V
    .locals 2

    const-class v0, Landroid/widget/AbsListView;

    :try_start_0
    const-string v1, "mTouchMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setPullingMode(I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lzui/widget/ListViewX;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lzui/widget/ListViewX;->L0:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lzui/widget/ListViewX;->F0:I

    invoke-direct {p0}, Lzui/widget/ListViewX;->N()V

    :cond_0
    if-gez p1, :cond_1

    invoke-direct {p0}, Lzui/widget/ListViewX;->i0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lzui/widget/ListViewX;->L0:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lzui/widget/ListViewX;->r0()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lzui/widget/ListViewX;->F0:I

    invoke-direct {p0}, Lzui/widget/ListViewX;->N()V

    :cond_1
    if-gez p1, :cond_2

    iget p1, p0, Lzui/widget/ListViewX;->L0:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Lzui/widget/ListViewX;->i0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lzui/widget/ListViewX;->r0()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lzui/widget/ListViewX;->F0:I

    invoke-direct {p0}, Lzui/widget/ListViewX;->N()V

    :cond_2
    return-void
.end method

.method private setSlideViewChecked(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lzui/widget/ListViewX;->M:[Z

    aget-boolean v0, v0, p1

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lzui/widget/ListViewX;->F0(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lzui/widget/ListViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->I0()V

    return-void
.end method

.method private t0()V
    .locals 3

    iget-object v0, p0, Lzui/widget/ListViewX;->z:Lzui/widget/ListViewX$g;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.click.event"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lzui/widget/ListViewX$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzui/widget/ListViewX$g;-><init>(Lzui/widget/ListViewX;Lzui/widget/ListViewX$a;)V

    iput-object v1, p0, Lzui/widget/ListViewX;->z:Lzui/widget/ListViewX$g;

    iget-object p0, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic u(Lzui/widget/ListViewX;)Lzui/widget/SlideView;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    return-object p0
.end method

.method private u0()V
    .locals 1

    iget-object v0, p0, Lzui/widget/ListViewX;->X:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lzui/widget/ListViewX;->X:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/ListViewX;->X:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method static synthetic v(Lzui/widget/ListViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->J0()V

    return-void
.end method

.method private v0()V
    .locals 5

    iget-object v0, p0, Lzui/widget/ListViewX;->M:[Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lzui/widget/ListViewX;->M:[Z

    new-array v2, v0, [Z

    iput-object v2, p0, Lzui/widget/ListViewX;->M:[Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    array-length v3, v1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lzui/widget/ListViewX;->M:[Z

    aget-boolean v4, v1, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic w(Lzui/widget/ListViewX;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lzui/widget/ListViewX;->z0(IZ)V

    return-void
.end method

.method private w0()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lzui/widget/ListViewX;->J0:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic x(Lzui/widget/ListViewX;)Z
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->o0()Z

    move-result p0

    return p0
.end method

.method private x0()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lzui/widget/ListViewX;->I0:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic y(Lzui/widget/ListViewX;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzui/widget/ListViewX;->E0:Z

    return p1
.end method

.method private y0()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lzui/widget/ListViewX;->F0:I

    invoke-direct {p0}, Lzui/widget/ListViewX;->x0()V

    invoke-direct {p0}, Lzui/widget/ListViewX;->w0()V

    return-void
.end method

.method static synthetic z(Lzui/widget/ListViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewX;->y0()V

    return-void
.end method

.method private z0(IZ)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    invoke-direct/range {p0 .. p1}, Lzui/widget/ListViewX;->K(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Lzui/widget/ListViewX;->G0:Z

    if-eqz v2, :cond_11

    iget v2, v0, Lzui/widget/ListViewX;->F0:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    iget v4, v0, Lzui/widget/ListViewX;->C0:I

    if-ge v2, v4, :cond_2

    move v4, v2

    :cond_2
    new-array v5, v4, [I

    iget v6, v0, Lzui/widget/ListViewX;->F0:I

    const/4 v7, 0x0

    if-nez v6, :cond_3

    move v6, v1

    goto :goto_0

    :cond_3
    move v6, v7

    :goto_0
    iget v8, v0, Lzui/widget/ListViewX;->F0:I

    if-ne v8, v1, :cond_4

    move v8, v1

    goto :goto_1

    :cond_4
    move v8, v7

    :goto_1
    iget v9, v0, Lzui/widget/ListViewX;->L0:I

    if-ltz v9, :cond_5

    goto :goto_2

    :cond_5
    neg-int v9, v9

    :goto_2
    move v10, v7

    :goto_3
    if-ge v10, v4, :cond_6

    div-int/lit8 v11, v9, 0x28

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move/from16 p2, v4

    int-to-double v3, v10

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v15

    sub-double/2addr v13, v3

    mul-double/2addr v11, v13

    double-to-int v3, v11

    aput v3, v5, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p2

    goto :goto_3

    :cond_6
    move/from16 p2, v4

    if-ne v6, v1, :cond_8

    iget v3, v0, Lzui/widget/ListViewX;->L0:I

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    move v3, v7

    :goto_4
    invoke-direct {v0, v3}, Lzui/widget/ListViewX;->setAbsListViewLayoutMode(I)V

    iget v3, v0, Lzui/widget/ListViewX;->L0:I

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lzui/widget/ListViewX;->E0:Z

    if-nez v3, :cond_8

    invoke-direct/range {p0 .. p0}, Lzui/widget/ListViewX;->y0()V

    :cond_8
    if-ne v8, v1, :cond_a

    iget v3, v0, Lzui/widget/ListViewX;->L0:I

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    goto :goto_5

    :cond_9
    move v3, v7

    :goto_5
    invoke-direct {v0, v3}, Lzui/widget/ListViewX;->setAbsListViewLayoutMode(I)V

    iget v3, v0, Lzui/widget/ListViewX;->L0:I

    if-nez v3, :cond_a

    iget-boolean v3, v0, Lzui/widget/ListViewX;->E0:Z

    if-nez v3, :cond_a

    invoke-direct/range {p0 .. p0}, Lzui/widget/ListViewX;->y0()V

    :cond_a
    if-eqz v8, :cond_d

    sub-int/2addr v2, v1

    move/from16 v4, p2

    :goto_6
    if-ge v7, v4, :cond_10

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v3

    aget v6, v5, v7

    if-ltz v6, :cond_c

    if-eqz v3, :cond_b

    aget v1, v5, v7

    invoke-virtual {v3, v1}, Lzui/widget/SlideView;->setSpaceHeight(I)V

    goto :goto_7

    :cond_b
    aget v3, v5, v7

    invoke-direct {v0, v1, v3, v7}, Lzui/widget/ListViewX;->C0(Landroid/view/View;II)V

    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_d
    move/from16 v4, p2

    move v1, v7

    :goto_8
    if-ge v7, v4, :cond_10

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v2

    aget v3, v5, v7

    if-ltz v3, :cond_f

    if-eqz v2, :cond_e

    aget v3, v5, v7

    invoke-virtual {v2, v3}, Lzui/widget/SlideView;->setSpaceHeight(I)V

    goto :goto_9

    :cond_e
    aget v2, v5, v7

    invoke-direct {v0, v2, v7}, Lzui/widget/ListViewX;->E0(II)V

    :cond_f
    :goto_9
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_10
    return-void

    :cond_11
    :goto_a
    iget v1, v0, Lzui/widget/ListViewX;->L0:I

    const/4 v2, 0x3

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    iget v1, v0, Lzui/widget/ListViewX;->L0:I

    if-nez v1, :cond_12

    iget-boolean v1, v0, Lzui/widget/ListViewX;->E0:Z

    if-nez v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lzui/widget/ListViewX;->y0()V

    :cond_12
    return-void
.end method


# virtual methods
.method A0(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->f0(Z)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lzui/widget/SlideView;->setViewChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    invoke-direct {p0}, Lzui/widget/ListViewX;->getCheckItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lzui/widget/ListViewXEditBar;->updateTitle(I)V

    iget-object p1, p0, Lzui/widget/ListViewX;->S:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lzui/widget/ListViewX;->M:[Z

    invoke-interface {p1, p0, v0}, Lzui/widget/ListViewX$OnEditModeStateListener;->onMultiItemCheckedChanged(Landroid/widget/ListView;[Z)V

    :cond_2
    return-void
.end method

.method O()V
    .locals 2

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->Y:Z

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLongClickable(Z)V

    iget-object v0, p0, Lzui/widget/ListViewX;->S:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzui/widget/ListViewX;->M:[Z

    invoke-interface {v0, p0, v1}, Lzui/widget/ListViewX$OnEditModeStateListener;->onExitEditMode(Landroid/widget/ListView;[Z)V

    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    invoke-virtual {v0}, Lzui/widget/ListViewXEditBar;->close()V

    invoke-direct {p0}, Lzui/widget/ListViewX;->S()V

    :cond_1
    return-void
.end method

.method U(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzui/widget/ListViewX;->S:Lzui/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lzui/widget/ListViewX$OnEditModeStateListener;->getCustomizedTitle(Landroid/widget/ListView;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bounceAnimation()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget v5, v0, Lzui/widget/ListViewX;->D0:I

    int-to-float v5, v5

    iget v6, v0, Lzui/widget/ListViewX;->e:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, v0, Lzui/widget/ListViewX;->i:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v6

    move v9, v7

    move v10, v9

    :goto_0
    if-ge v9, v1, :cond_3

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-direct {v0, v11}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v12

    if-eqz v12, :cond_2

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v13, 0x2

    new-array v14, v13, [F

    const/4 v15, 0x0

    aput v15, v14, v7

    neg-float v15, v5

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget v14, v0, Lzui/widget/ListViewX;->g:I

    move-object/from16 v17, v8

    int-to-long v7, v14

    invoke-virtual {v12, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v13, [F

    const/4 v13, 0x0

    aput v15, v8, v13

    const/4 v14, 0x0

    aput v14, v8, v16

    invoke-static {v11, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget v8, v0, Lzui/widget/ListViewX;->h:I

    iget v11, v0, Lzui/widget/ListViewX;->b:I

    mul-int/2addr v11, v10

    add-int/2addr v8, v11

    int-to-long v14, v8

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez v6, :cond_0

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    if-nez v17, :cond_1

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    goto :goto_2

    :cond_1
    move-object/from16 v8, v17

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    move v13, v7

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v7, v13

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public dismissFloatMenu()V
    .locals 1

    invoke-direct {p0}, Lzui/widget/ListViewX;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/widget/ListViewX;->f0:Lzui/app/FloatDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->O()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lzui/widget/ListViewX;->b0(Landroid/view/KeyEvent;Z)V

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, v2, p1, v0, v1}, Lzui/widget/ListViewX;->Z(ILandroid/view/KeyEvent;Landroid/view/View;Z)V

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lzui/widget/ListViewX;->m0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->n:Lzui/widget/SlideView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lzui/widget/SlideView;->setFocused(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/ListViewX;->n:Lzui/widget/SlideView;

    :cond_1
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->c0(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    :cond_2
    iget p1, p0, Lzui/widget/ListViewX;->r:I

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->L(I)V

    invoke-direct {p0, v3}, Lzui/widget/ListViewX;->setAbsListViewTouchMode(I)V

    :cond_3
    return v1

    :cond_4
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->a0(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_6

    :cond_5
    invoke-direct {p0, v3}, Lzui/widget/ListViewX;->setAbsListViewTouchMode(I)V

    :cond_6
    return v1

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCheckedItemCount()I
    .locals 1

    iget-object v0, p0, Lzui/widget/ListViewX;->M:[Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lzui/widget/ListViewX;->getCheckItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 4

    invoke-virtual {p0}, Lzui/widget/ListViewX;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lzui/widget/ListViewX;->M:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method getCustomizedLeftTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->U:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method getCustomizedRightTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->V:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method getExtraTitlePaddingEndInEditMode()I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->F:I

    return p0
.end method

.method getExtraTitlePaddingStartInEditMode()I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->E:I

    return p0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->p:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getItemIdAtPosition(I)J
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->p:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 p0, -0x8000000000000000L

    :goto_1
    return-wide p0
.end method

.method public getListItemMode()I
    .locals 0

    iget p0, p0, Lzui/widget/ListViewX;->j:I

    return p0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object p0, p0, Lzui/widget/ListViewX;->p:Landroid/widget/ListAdapter;

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Lzui/widget/ListViewX$XAdapter;

    if-eqz v0, :cond_1

    check-cast p0, Lzui/widget/ListViewX$XAdapter;

    invoke-virtual {p0}, Lzui/widget/ListViewX$XAdapter;->getOriginAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method protected handleDataChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->handleDataChanged()V

    invoke-direct {p0}, Lzui/widget/ListViewX;->h0()V

    invoke-direct {p0}, Lzui/widget/ListViewX;->v0()V

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lzui/widget/ListViewXEditBar;->refresh()V

    :cond_0
    return-void
.end method

.method public hideDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/ListViewX;->u0:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public isItemChecked(I)Z
    .locals 1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lzui/widget/SlideView;->isViewChecked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method j0()Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/ListViewX;->B:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    invoke-direct {p0}, Lzui/widget/ListViewX;->t0()V

    invoke-virtual {p0}, Landroid/widget/ListView;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lzui/widget/ListViewX;->Y:Z

    iget-boolean v0, p0, Lzui/widget/ListViewX;->c0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/ListViewX;->c0:Z

    invoke-direct {p0}, Lzui/widget/ListViewX;->H0()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-direct {p0}, Lzui/widget/ListViewX;->T()V

    iget-object v0, p0, Lzui/widget/ListViewX;->h0:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lzui/widget/ListViewX;->s:I

    invoke-interface {v0, p1, p2, p0}, Lzui/widget/ListViewX$OnFloatMenuOnClickListener;->onClick(Landroid/content/DialogInterface;II)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzui/widget/ListViewX;->I:Lzui/widget/ListViewX$OnSlideOutItemClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->I:Lzui/widget/ListViewX$OnSlideOutItemClickListener;

    iget p0, p0, Lzui/widget/ListViewX;->q:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, p1, p0, v1, v2}, Lzui/widget/ListViewX$OnSlideOutItemClickListener;->onSlideOutItemClick(Landroid/view/View;IJ)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Lzui/widget/ListViewX;->O()V

    invoke-virtual {p0}, Lzui/widget/ListViewX;->dismissFloatMenu()V

    iget-object v0, p0, Lzui/widget/ListViewX;->z:Lzui/widget/ListViewX$g;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/ListViewX;->z:Lzui/widget/ListViewX$g;

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-direct {p0}, Lzui/widget/ListViewX;->T()V

    iget-object p1, p0, Lzui/widget/ListViewX;->l0:Lzui/widget/ListViewX$OnFloatMenuShowListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzui/widget/ListViewX;->f0:Lzui/app/FloatDialog;

    const/4 v1, 0x0

    iget p0, p0, Lzui/widget/ListViewX;->s:I

    invoke-interface {p1, v0, v1, p0}, Lzui/widget/ListViewX$OnFloatMenuShowListener;->onShow(Landroid/content/DialogInterface;ZI)V

    :cond_0
    return-void
.end method

.method public onEdgeReached(Landroid/widget/AbsListView;II)V
    .locals 5

    invoke-direct {p0}, Lzui/widget/ListViewX;->m0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p3}, Lzui/widget/ListViewX;->X(I)I

    move-result p1

    iput p1, p0, Lzui/widget/ListViewX;->A0:I

    sget-object p1, Lzui/widget/ListViewX;->N0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scaledDistance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzui/widget/ListViewX;->A0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " velocity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lzui/widget/ListViewX;->x0:Landroid/animation/AnimatorSet;

    const/4 p3, 0x2

    if-nez p1, :cond_0

    new-array p1, p3, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/ListViewX;->y0:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lzui/widget/ListViewX;->y0:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lzui/widget/ListViewX;->y0:Landroid/animation/ValueAnimator;

    new-instance v0, Lzui/widget/ListViewX$a;

    invoke-direct {v0, p0, p2}, Lzui/widget/ListViewX$a;-><init>(Lzui/widget/ListViewX;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p3, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/ListViewX;->z0:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lzui/widget/ListViewX;->z0:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lzui/widget/ListViewX;->z0:Landroid/animation/ValueAnimator;

    new-instance v0, Lzui/widget/ListViewX$b;

    invoke-direct {v0, p0, p2}, Lzui/widget/ListViewX$b;-><init>(Lzui/widget/ListViewX;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lzui/widget/ListViewX;->x0:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lzui/widget/ListViewX;->y0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lzui/widget/ListViewX;->z0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    const/4 p1, 0x1

    if-gez p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iget-object v1, p0, Lzui/widget/ListViewX;->y0:Landroid/animation/ValueAnimator;

    new-array v2, p3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    int-to-float v0, v0

    aput v0, v2, p1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lzui/widget/ListViewX;->z0:Landroid/animation/ValueAnimator;

    new-array p3, p3, [F

    aput v0, p3, v3

    aput v4, p3, p1

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iput-boolean p1, p0, Lzui/widget/ListViewX;->E0:Z

    iput v3, p0, Lzui/widget/ListViewX;->M0:I

    invoke-direct {p0, p2}, Lzui/widget/ListViewX;->setPullingMode(I)V

    iget-object p1, p0, Lzui/widget/ListViewX;->x0:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lzui/widget/ListViewX;->H0:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lzui/widget/ListViewX;->x0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 1

    iget p1, p0, Lzui/widget/ListViewX;->r:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lzui/widget/ListViewX;->u:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lzui/widget/ListViewX;->r:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lzui/widget/SlideView;->setDividerState(Z)V

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->Z:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget v0, p0, Lzui/widget/ListViewX;->T:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Lzui/widget/ListViewX;->T:I

    :cond_0
    iget-object p0, p0, Lzui/widget/ListViewX;->Z:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public onSlide(Landroid/view/View;I)V
    .locals 1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lzui/widget/ListViewX;->P0()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lzui/widget/ListViewX;->Y:Z

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLongClickable(Z)V

    :goto_1
    iget-object v0, p0, Lzui/widget/ListViewX;->J:Lzui/widget/ListViewX$OnSlideListener;

    if-eqz v0, :cond_2

    check-cast p1, Lzui/widget/SlideView;

    invoke-virtual {p1}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lzui/widget/ListViewX;->q:I

    invoke-interface {v0, p1, p0, p2}, Lzui/widget/ListViewX$OnSlideListener;->onSlide(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/widget/SlideView;->shrink(Z)V

    iget-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    invoke-virtual {v0}, Lzui/widget/SlideView;->startLeftSlidingFinishAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/ListViewX;->t:Lzui/widget/SlideView;

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2

    invoke-direct {p0, p2}, Lzui/widget/ListViewX;->W(I)I

    move-result p2

    sget-boolean v0, Lzui/widget/ListViewX;->Q0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-boolean v1, Lzui/widget/ListViewX;->Q0:Z

    return v1

    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewX;->p:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lzui/widget/ListViewX;->setSlideViewChecked(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lzui/widget/ListViewX;->u:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lzui/widget/ListViewX;->Y(Landroid/view/View;)Lzui/widget/SlideView;

    move-result-object v0

    invoke-virtual {v0}, Lzui/widget/SlideView;->isViewFixed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lzui/widget/ListViewX;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    new-instance v0, Lzui/widget/ListViewX$XAdapter;

    invoke-direct {v0, p0, p1}, Lzui/widget/ListViewX$XAdapter;-><init>(Lzui/widget/ListViewX;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lzui/widget/ListViewX;->p:Landroid/widget/ListAdapter;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lzui/widget/ListViewX;->l:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEditBarBackgroundInEditMode(I)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lzui/widget/ListViewXEditBar;->setEditBarBackground(I)V

    :cond_0
    return-void
.end method

.method public setEditBarExtraPaddings(II)V
    .locals 0

    iput p1, p0, Lzui/widget/ListViewX;->E:I

    iput p2, p0, Lzui/widget/ListViewX;->F:I

    return-void
.end method

.method public setEditModeBarPosition(II)V
    .locals 0

    iput p1, p0, Lzui/widget/ListViewX;->e0:I

    iput p2, p0, Lzui/widget/ListViewX;->d0:I

    return-void
.end method

.method public setExtraPaddings(II)V
    .locals 0

    iput p1, p0, Lzui/widget/ListViewX;->C:I

    iput p2, p0, Lzui/widget/ListViewX;->D:I

    return-void
.end method

.method public setFloatMenuAdapter(Landroid/widget/ListAdapter;Lzui/widget/ListViewX$OnFloatMenuOnClickListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->i0:Landroid/widget/ListAdapter;

    iput-object p2, p0, Lzui/widget/ListViewX;->h0:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

    return-void
.end method

.method public setFloatMenuAdapter(Lzui/app/FloatDialog$MenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->j0:Lzui/app/FloatDialog$MenuAdapter;

    return-void
.end method

.method public setFloatMenuItems(ILzui/widget/ListViewX$OnFloatMenuOnClickListener;)V
    .locals 1

    iget-object v0, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/ListViewX;->g0:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lzui/widget/ListViewX;->h0:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

    return-void
.end method

.method public setFloatMenuItems([Ljava/lang/CharSequence;Lzui/widget/ListViewX$OnFloatMenuOnClickListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->g0:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lzui/widget/ListViewX;->h0:Lzui/widget/ListViewX$OnFloatMenuOnClickListener;

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lzui/widget/ListViewX;->F0(IZ)V

    :cond_0
    return-void
.end method

.method public setLeftButtonEnabledInEditMode(Z)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lzui/widget/ListViewXEditBar;->setLeftButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLeftTextColorInEditMode(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->U:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lzui/widget/ListViewXEditBar;->setLeftTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setListItemBackgroundColor(II)V
    .locals 0

    iput p1, p0, Lzui/widget/ListViewX;->a0:I

    iput p2, p0, Lzui/widget/ListViewX;->b0:I

    iget-object p0, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p0, p1, p2}, Lzui/widget/SlideView$SlideViewParams;->setBgColor(II)V

    return-void
.end method

.method public setListItemBackgroundColor(III)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lzui/widget/ListViewX;->setListItemBackgroundColor(II)V

    iput p3, p0, Lzui/widget/ListViewX;->k0:I

    return-void
.end method

.method public setListItemMaskBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lzui/widget/ListViewX;->k0:I

    return-void
.end method

.method public setListItemMode(I)V
    .locals 2

    iget v0, p0, Lzui/widget/ListViewX;->j:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lzui/widget/ListViewX;->j:I

    iget-object p1, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lzui/widget/ListViewX;->p0()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lzui/widget/ListViewX;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lzui/platform/R$dimen;->listview_x_left_space_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {v1, p1}, Lzui/widget/SlideView$SlideViewParams;->setLeftSpaceWidth(I)V

    invoke-direct {p0}, Lzui/widget/ListViewX;->n0()Z

    move-result p1

    iget-object p0, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzui/widget/SlideView$SlideViewParams;->setShowText(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lzui/widget/SlideView$SlideViewParams;->setShowText(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setOnEditModeStateListener(Lzui/widget/ListViewX$OnEditModeStateListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->S:Lzui/widget/ListViewX$OnEditModeStateListener;

    return-void
.end method

.method public setOnFloatMenuShowListener(Lzui/widget/ListViewX$OnFloatMenuShowListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->l0:Lzui/widget/ListViewX$OnFloatMenuShowListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->Z:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Lzui/widget/ListViewX;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setOnSlideListener(Lzui/widget/ListViewX$OnSlideListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->J:Lzui/widget/ListViewX$OnSlideListener;

    return-void
.end method

.method public setOnSlideLoadingStateListener(Lzui/widget/ListViewX$OnSlideLoadingStateListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->w0:Lzui/widget/ListViewX$OnSlideLoadingStateListener;

    return-void
.end method

.method public setOnSlideOutItemClickListener(Lzui/widget/ListViewX$OnSlideOutItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->I:Lzui/widget/ListViewX$OnSlideOutItemClickListener;

    return-void
.end method

.method public setPullAnimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/ListViewX;->t0:Z

    return-void
.end method

.method public setRightButtonEnabledInEditMode(Z)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lzui/widget/ListViewXEditBar;->setRightButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setRightTextColorInEditMode(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX;->V:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lzui/widget/ListViewX;->H:Lzui/widget/ListViewXEditBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lzui/widget/ListViewXEditBar;->setRightTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSlideModeText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewX;->o:Lzui/widget/SlideView$SlideViewParams;

    invoke-virtual {p0, p1}, Lzui/widget/SlideView$SlideViewParams;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDividerInEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/ListViewX;->W:Z

    return-void
.end method

.method public startAddAnimation(I)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    move v3, p1

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v5, p0, Lzui/widget/ListViewX;->a:I

    iget v6, p0, Lzui/widget/ListViewX;->b:I

    mul-int/2addr v6, v0

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sub-int v4, v0, p1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public startBatchRemoveAnimation()V
    .locals 14

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v8, p0, Lzui/widget/ListViewX;->M:[Z

    add-int v9, v0, v3

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v11, v10, [F

    const/4 v12, 0x0

    aput v12, v11, v5

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget v9, p0, Lzui/widget/ListViewX;->c:I

    iget v11, p0, Lzui/widget/ListViewX;->d:I

    mul-int/2addr v11, v7

    add-int/2addr v9, v11

    int-to-long v11, v9

    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    new-array v9, v13, [Landroid/animation/Animator;

    aput-object v8, v9, v5

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget v9, p0, Lzui/widget/ListViewX;->c:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    new-array v9, v13, [Landroid/animation/Animator;

    aput-object v8, v9, v5

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    return-void

    :cond_2
    :goto_1
    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lzui/widget/ListViewX;->K:Lzui/widget/ListViewX$f;

    iget-object v1, p0, Lzui/widget/ListViewX;->B0:Ljava/lang/Runnable;

    iget v2, p0, Lzui/widget/ListViewX;->c:I

    iget p0, p0, Lzui/widget/ListViewX;->d:I

    mul-int/2addr p0, v7

    add-int/2addr v2, p0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startEditMode()V
    .locals 1

    iget-boolean v0, p0, Lzui/widget/ListViewX;->G:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lzui/widget/ListViewX;->q:I

    invoke-virtual {p0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lzui/widget/ListViewX;->H0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/ListViewX;->c0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startRemoveAnimation(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v4, p0, Lzui/widget/ListViewX;->a:I

    iget v5, p0, Lzui/widget/ListViewX;->b:I

    mul-int/lit8 v5, v5, 0x0

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sub-int v4, v2, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public stopEditMode()V
    .locals 0

    invoke-virtual {p0}, Lzui/widget/ListViewX;->O()V

    return-void
.end method
