.class public Lzui/appcompat/preference/PreferenceFragmentCompat;
.super Landroidx/preference/PreferenceFragmentCompat;
.source ""


# static fields
.field private static p:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lzui/appcompat/preference/PreferenceFragmentCompat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private final i:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private j:Landroid/animation/ObjectAnimator;

.field private k:I

.field private l:I

.field private m:Landroid/animation/Animator$AnimatorListener;

.field private n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzui/appcompat/preference/PreferenceFragmentCompat$b;

    const-string v1, "HeaderHeight"

    invoke-direct {v0, v1}, Lzui/appcompat/preference/PreferenceFragmentCompat$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzui/appcompat/preference/PreferenceFragmentCompat;->p:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->f:Z

    const/16 v0, 0x96

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->g:I

    const/16 v0, 0x12c

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->h:I

    new-instance v0, Lzui/appcompat/preference/PreferenceFragmentCompat$a;

    invoke-direct {v0, p0}, Lzui/appcompat/preference/PreferenceFragmentCompat$a;-><init>(Lzui/appcompat/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->i:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    new-instance v0, Lzui/appcompat/preference/PreferenceFragmentCompat$c;

    invoke-direct {v0, p0}, Lzui/appcompat/preference/PreferenceFragmentCompat$c;-><init>(Lzui/appcompat/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->m:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, -0x1

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->o:Z

    return-void
.end method

.method static synthetic a(Lzui/appcompat/preference/PreferenceFragmentCompat;)I
    .locals 0

    iget p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->c:I

    return p0
.end method

.method static synthetic b(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I
    .locals 0

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->c:I

    return p1
.end method

.method static synthetic c(Lzui/appcompat/preference/PreferenceFragmentCompat;)I
    .locals 0

    iget p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->d:I

    return p0
.end method

.method static synthetic d(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I
    .locals 0

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->d:I

    return p1
.end method

.method static synthetic e(Lzui/appcompat/preference/PreferenceFragmentCompat;)I
    .locals 0

    iget p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->b:I

    return p0
.end method

.method static synthetic f(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I
    .locals 0

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->b:I

    return p1
.end method

.method static synthetic g(Lzui/appcompat/preference/PreferenceFragmentCompat;)Z
    .locals 0

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lzui/appcompat/preference/PreferenceFragmentCompat;)V
    .locals 0

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->w()V

    return-void
.end method

.method static synthetic i(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I
    .locals 0

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->e:I

    return p1
.end method

.method static synthetic j(Lzui/appcompat/preference/PreferenceFragmentCompat;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->u(IZ)V

    return-void
.end method

.method static synthetic k(Lzui/appcompat/preference/PreferenceFragmentCompat;)I
    .locals 0

    iget p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->l:I

    return p0
.end method

.method static synthetic l(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I
    .locals 0

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->l:I

    return p1
.end method

.method static synthetic m(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I
    .locals 0

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    return p1
.end method

.method static synthetic n(Lzui/appcompat/preference/PreferenceFragmentCompat;)V
    .locals 0

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->t()V

    return-void
.end method

.method private o(I)Z
    .locals 7

    invoke-direct {p0, p1}, Lzui/appcompat/preference/PreferenceFragmentCompat;->v(I)V

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget v4, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget v5, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    if-nez p1, :cond_3

    goto :goto_6

    :cond_3
    if-eqz v0, :cond_4

    iget v5, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    iget v6, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->g:I

    if-lt v5, v6, :cond_4

    if-lez p1, :cond_4

    return v2

    :cond_4
    if-eqz v3, :cond_5

    iget v5, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    iget v6, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->g:I

    neg-int v6, v6

    if-gt v5, v6, :cond_5

    if-gez p1, :cond_5

    return v2

    :cond_5
    iget v5, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x28

    div-int/lit8 v5, v5, 0x32

    add-int/2addr v5, v1

    if-eqz v0, :cond_8

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    if-ltz v0, :cond_8

    if-lez p1, :cond_6

    div-int v6, p1, v5

    add-int/2addr v0, v6

    goto :goto_3

    :cond_6
    add-int/2addr v0, p1

    :goto_3
    iput v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    iget v6, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->g:I

    if-le v0, v6, :cond_7

    iput v6, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    goto :goto_4

    :cond_7
    if-gez v0, :cond_8

    iput v2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    :cond_8
    :goto_4
    if-nez v3, :cond_9

    if-eqz v4, :cond_c

    :cond_9
    iget v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    if-gez p1, :cond_a

    div-int/2addr p1, v5

    :cond_a
    add-int/2addr v0, p1

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    iget p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->g:I

    neg-int v3, v0

    if-ge p1, v3, :cond_b

    neg-int p1, v0

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    goto :goto_5

    :cond_b
    if-lez p1, :cond_c

    iput v2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    :cond_c
    :goto_5
    return v1

    :cond_d
    :goto_6
    return v2
.end method

.method private p()V
    .locals 4

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->l:I

    sget-object v1, Lzui/appcompat/preference/PreferenceFragmentCompat;->p:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->h:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->m:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->j:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private q()Z
    .locals 5

    iget-object v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-gt v0, v2, :cond_0

    move v1, v4

    :cond_0
    return v1
.end method

.method private r()Z
    .locals 0

    iget-boolean p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->f:Z

    return p0
.end method

.method private s()Z
    .locals 3

    iget-object v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private t()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    return-void
.end method

.method private u(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lzui/appcompat/preference/PreferenceFragmentCompat;->o(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->o:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    div-int/lit8 p1, p1, 0x3

    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    if-nez p1, :cond_3

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->t()V

    :cond_3
    return-void
.end method

.method private v(I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    :cond_0
    if-gez p1, :cond_1

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->s()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    :cond_1
    if-gez p1, :cond_2

    iget p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->n:I

    :cond_2
    return-void
.end method

.method private w()V
    .locals 1

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->k:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->p()V

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragmentCompat;->x()V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 0

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->j:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzui/appcompat/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lzui/appcompat/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$dimen;->listview_x_pull_max_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->g:I

    sget p2, Lzui/platform/R$integer;->config_list_header_anim_time:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->h:I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->i:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_0
    return-void
.end method

.method public setPullAnimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/appcompat/preference/PreferenceFragmentCompat;->f:Z

    return-void
.end method
