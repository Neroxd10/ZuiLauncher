.class public Lcom/zui/launcher/GlobalSearchView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;
.implements Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/GlobalSearchView$LOG;
    }
.end annotation


# static fields
.field private static C0:Ljava/lang/String; = ""

.field private static D0:Z = true

.field public static final DELAYED_DESTORY:I = 0xc

.field public static final GLOABAL_ADD_SEARCH_CONTACTS:I = 0x5

.field public static final GLOABAL_ADD_SEARCH_DEEPSHORTCUT:I = 0xa

.field public static final GLOABAL_ADD_SEARCH_EVENT:I = 0x7

.field public static final GLOABAL_ADD_SEARCH_INTERNET:I = 0x9

.field public static final GLOABAL_ADD_SEARCH_SETTINGS:I = 0x8

.field public static final GLOABAL_ADD_SEARCH_SMS:I = 0x6

.field public static final GLOABAL_DATA_GET:I = 0x4

.field public static final GLOBAL_ADD_ABOUT_APP_LOCAL:I = 0xe

.field public static final GLOBAL_ADD_USAGE_STAT_APPS:I = 0xd

.field public static final KEY_KEYWORD:Ljava/lang/String; = "keyword"

.field public static final KEY_RECOMMEND_DATA:Ljava/lang/String; = "recommend_data_id"

.field public static final KEY_RESOURCEID:Ljava/lang/String; = "resourc_id"

.field public static final LOAD_HOT_WORD:I = 0x12

.field public static final REFLUSH_ABOUTAPP_VIEW:I = 0xf

.field public static final REFLUSH_GLOBAL_SEARCH_VIEW:I = 0x10

.field public static final REMOVE_VIEW_STUB_ADD_NORMAL:I = 0x11

.field public static final SEARCH_HISTORY:I = 0xb

.field public static final TAG:Ljava/lang/String; = "GlobalSearch"


# instance fields
.field private A:Landroid/view/View;

.field A0:Landroid/animation/ValueAnimator;

.field private B:Landroid/view/View;

.field B0:Landroid/animation/ValueAnimator;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/LinearLayout;

.field private E:Lcom/zui/launcher/globalsearch/HotWordView;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/zui/launcher/globalsearch/HotWordData;

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private a:Landroid/widget/EditText;

.field private a0:I

.field private b:Landroid/widget/ImageButton;

.field private b0:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroid/widget/RelativeLayout;

.field private c0:I

.field private d:Landroid/content/Context;

.field private d0:Z

.field private e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

.field private e0:Landroid/widget/ImageView;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private f0:Landroid/widget/TextView;

.field private g:I

.field g0:Z

.field private h:Landroid/view/View;

.field private h0:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

.field private i:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

.field private i0:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

.field private j:Landroid/widget/LinearLayout;

.field private j0:Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

.field private k:I

.field private k0:Landroid/text/TextWatcher;

.field private l:I

.field private l0:I

.field private m:I

.field private m0:I

.field public mHandler:Landroid/os/Handler;

.field private n:I

.field private n0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroidx/recyclerview/widget/RecyclerView;

.field o0:Z

.field private p:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;

.field p0:Z

.field private q:Lcom/zui/launcher/globalsearch/GlobalContactView;

.field q0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/zui/launcher/globalsearch/AboutAppView;

.field r0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

.field s0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/widget/LinearLayout;

.field private t0:Lcom/zui/launcher/AppInfo;

.field private u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

.field private u0:Z

.field private v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

.field v0:F

.field private w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

.field w0:F

.field private x:Lcom/zui/launcher/globalsearch/FlowLayout;

.field x0:Z

.field private y:Landroid/widget/TextView;

.field private y0:Z

.field private z:Lcom/zui/launcher/globalsearch/PullScrollView;

.field private z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/GlobalSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/GlobalSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/GlobalSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/GlobalSearchView;->G:Lcom/zui/launcher/globalsearch/HotWordData;

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/GlobalSearchView;->c0:I

    new-instance p3, Lcom/zui/launcher/GlobalSearchView$a;

    invoke-direct {p3, p0}, Lcom/zui/launcher/GlobalSearchView$a;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    iput-object p3, p0, Lcom/zui/launcher/GlobalSearchView;->k0:Landroid/text/TextWatcher;

    new-instance p3, Lcom/zui/launcher/GlobalSearchView$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lcom/zui/launcher/GlobalSearchView$b;-><init>(Lcom/zui/launcher/GlobalSearchView;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x3

    iput p3, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    const/16 p3, 0xf

    iput p3, p0, Lcom/zui/launcher/GlobalSearchView;->m0:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    iput-boolean p2, p0, Lcom/zui/launcher/GlobalSearchView;->o0:Z

    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/GlobalSearchView;->q0:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/GlobalSearchView;->r0:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/GlobalSearchView;->s0:Ljava/util/List;

    iput-boolean p2, p0, Lcom/zui/launcher/GlobalSearchView;->u0:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/zui/launcher/GlobalSearchView;->v0:F

    iput p3, p0, Lcom/zui/launcher/GlobalSearchView;->w0:F

    iput-boolean p2, p0, Lcom/zui/launcher/GlobalSearchView;->x0:Z

    iput-boolean p2, p0, Lcom/zui/launcher/GlobalSearchView;->y0:Z

    iput-boolean p2, p0, Lcom/zui/launcher/GlobalSearchView;->z0:Z

    iput-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    invoke-static {}, Lcom/zui/launcher/util/ThreadManagerUtill;->getThreadPool()Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070215

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/launcher/GlobalSearchView;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070214

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/launcher/GlobalSearchView;->O:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070217

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/launcher/GlobalSearchView;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706a6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/launcher/GlobalSearchView;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706e5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/launcher/GlobalSearchView;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->L:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->H:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706cf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->I:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->J:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->K:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706f6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->M:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706ce

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->N:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706fc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->P:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706fd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->Q:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706fe

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->R:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706fb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->S:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706fa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->V:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706d5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->T:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->U:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706d3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->W:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706f5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->X:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706cd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->Y:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706f4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->Z:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706cc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/GlobalSearchView;->a0:I

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/GlobalSearchView;->d0:Z

    return-void
.end method

.method static synthetic A(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/FlowLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->x:Lcom/zui/launcher/globalsearch/FlowLayout;

    return-object p0
.end method

.method static synthetic B(Lcom/zui/launcher/GlobalSearchView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    return-object p0
.end method

.method private C()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00f9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/AboutAppView;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->m:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00fb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/GlobalContactView;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->m:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private E(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v1, "aboutApp"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/zui/launcher/GlobalSearchView;->dataCompleteNumber(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->V0()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/AppInfo;

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/zui/launcher/GlobalSearchView;->P0(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private F()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/GlobalSMSView;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->m:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00fd

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->m:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private G0(ILjava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "keyword"

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "resourc_id"

    invoke-virtual {p3, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private H()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/GlobalSearchView;->n:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/GlobalSearchView;->m:I

    :goto_0
    iput v0, p0, Lcom/zui/launcher/GlobalSearchView;->m:I

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->I()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->K()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->C()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->D()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->F()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->G()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->L()V

    return-void
.end method

.method private H0(ILjava/lang/String;Ljava/util/List;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;ZI)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "keyword"

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "resourc_id"

    invoke-virtual {p3, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "recommend_data_id"

    invoke-virtual {p3, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private I()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->m:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private I0()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->i:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    new-instance v1, Lcom/zui/launcher/o0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/o0;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private J(Ljava/lang/String;ILjava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getKeyKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x4

    invoke-virtual {p0, p3, p1}, Lcom/zui/launcher/GlobalSearchView;->transferToRowData(Ljava/util/List;I)Ljava/util/List;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p3}, Lcom/zui/launcher/GlobalSearchView;->h0(Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "recommend_data_id"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p3, p1}, Lcom/zui/launcher/GlobalSearchView;->b0(Ljava/util/List;Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p3}, Lcom/zui/launcher/GlobalSearchView;->g0(Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p3}, Lcom/zui/launcher/GlobalSearchView;->e0(Ljava/util/List;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p3}, Lcom/zui/launcher/GlobalSearchView;->Y(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p3}, Lcom/zui/launcher/GlobalSearchView;->i0(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f1205fd
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private J0()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->f0()V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private K()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0100

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private K0(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method private L()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0101

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->m:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private L0(Landroid/view/View;III)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->s0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->r0:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private M0(Landroid/view/View;III)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;->cancel(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_1
    return-void
.end method

.method private N0(Landroid/view/View;III)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private O(III)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    const p1, 0x7f0a000e

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private O0(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private P(III)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    const p1, 0x7f0a032d

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private P0(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/zui/launcher/m0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/m0;-><init>(Lcom/zui/launcher/GlobalSearchView;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private Q()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/GlobalSearchView;->T(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->O(III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->P(III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->S(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/GlobalSearchView;->U(II)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->V(I)V

    return-void
.end method

.method private Q0()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppViewState  localApps --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",containerList -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->s0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->V0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAboutAppView  visibility --> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private R()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/GlobalSearchView;->T(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->O(III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->P(III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->S(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/GlobalSearchView;->U(II)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->V(I)V

    return-void
.end method

.method private R0()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.zui.launcher_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/GlobalSearchView;->C0:Ljava/lang/String;

    const-string v1, "startapp_clientid"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private S(I)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private S0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkAvailable --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/GlobalSearchView;->o0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " localApps -->  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mQuicksList-- > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->q0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  totalThreadList --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->r0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->o0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private T(II)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private T0()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/globalsearch/PullScrollView;->setSmoothDimension(F)V

    :cond_0
    return-void
.end method

.method private U(II)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private U0()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/zui/launcher/globalsearch/CusetomGridLayoutManager;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    invoke-direct {v1, v2, v3}, Lcom/zui/launcher/globalsearch/CusetomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;

    iget v1, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->p:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private V(I)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private V0()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->s0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->s0:Ljava/util/List;

    const-string v1, "WebSearch"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->s0:Ljava/util/List;

    const-string v1, "aboutApp"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private W(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "[a-zA-Z]*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private X(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->o0:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataByKeyword  networkAvailable ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/GlobalSearchView;->o0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " key -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zui/launcher/f0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/f0;-><init>(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V

    sget-object v1, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/zui/launcher/s0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/s0;-><init>(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->o0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->isInternetSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zui/launcher/a0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/a0;-><init>(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V

    new-instance v1, Lcom/zui/launcher/k0;

    invoke-direct {v1, p0, p1, v0}, Lcom/zui/launcher/k0;-><init>(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x0

    const v2, 0x7f1205fd

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/zui/launcher/e0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/e0;-><init>(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/zui/launcher/b0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/b0;-><init>(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/zui/launcher/l0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/l0;-><init>(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private Y(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_3

    move v2, v4

    :goto_0
    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/CalendarEventInfo;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->setScheduleData(Ljava/util/List;Ljava/util/List;ILcom/zui/launcher/GlobalSearchView;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->setScheduleData(Ljava/util/List;Ljava/util/List;ILcom/zui/launcher/GlobalSearchView;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private Z(II)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->A:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->x:Lcom/zui/launcher/globalsearch/FlowLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->A:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->x:Lcom/zui/launcher/globalsearch/FlowLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->x:Lcom/zui/launcher/globalsearch/FlowLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method private a0(III)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->E:Lcom/zui/launcher/globalsearch/HotWordView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->E:Lcom/zui/launcher/globalsearch/HotWordView;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/HotWordView;->getHotWordAdapter()Lcom/zui/launcher/globalsearch/HotWordAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/HotWordAdapter;->getItemCount()I

    move-result p1

    move p2, v1

    :goto_0
    if-ge p2, p1, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a01cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, p3, v1, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->b:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private b0(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->B:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->p:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p0, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->setSuggestionAppData(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/GlobalSearchView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    return-object p0
.end method

.method private c0(IIIII)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->B:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->o:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/GlobalSearchView;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/GlobalSearchView;->E(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private d0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->E:Lcom/zui/launcher/globalsearch/HotWordView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->E:Lcom/zui/launcher/globalsearch/HotWordView;

    iget-boolean v1, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    invoke-virtual {v0, v1, p1, p0}, Lcom/zui/launcher/globalsearch/HotWordView;->setHotData(ZLjava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->E:Lcom/zui/launcher/globalsearch/HotWordView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->setHotWordHint()V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->Q0()V

    return-void
.end method

.method private e0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_3

    move v2, v4

    :goto_0
    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/ContactInfoNew;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    invoke-virtual {p1, v0, v1, p0}, Lcom/zui/launcher/globalsearch/GlobalContactView;->setContactData(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    invoke-virtual {p1, v0, v1, p0}, Lcom/zui/launcher/globalsearch/GlobalContactView;->setContactData(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->S0()V

    return-void
.end method

.method private f0()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/c0;

    invoke-direct {v0, p0}, Lcom/zui/launcher/c0;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->J0()V

    return-void
.end method

.method private g0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-virtual {p1, v0, v1, p0}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->setShortCutDate(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private getClientId()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/r0;

    invoke-direct {v0, p0}, Lcom/zui/launcher/r0;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getQuickAppDownload()Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->i0:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->i0:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->i0:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    return-object p0
.end method

.method private getRecommendApp()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/n0;

    invoke-direct {v0, p0}, Lcom/zui/launcher/n0;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic h(Lcom/zui/launcher/GlobalSearchView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->F:Ljava/util/List;

    return-object p0
.end method

.method private h0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->setSmsData(Ljava/util/List;Ljava/util/List;ILcom/zui/launcher/GlobalSearchView;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->l0:I

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->setSmsData(Ljava/util/List;Ljava/util/List;ILcom/zui/launcher/GlobalSearchView;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/GlobalSearchView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->F:Ljava/util/List;

    return-object p1
.end method

.method private i0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->setWebPage(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->setWebPage(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public static isContainChinese(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isContainChinese ------src -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView$LOG;->i(Ljava/lang/String;)V

    const-string p0, "return true."

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView$LOG;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "return false."

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView$LOG;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic j(Lcom/zui/launcher/GlobalSearchView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/GlobalSearchView;->d0(Ljava/util/List;)V

    return-void
.end method

.method private j0()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic k(Lcom/zui/launcher/GlobalSearchView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/GlobalSearchView;->y0:Z

    return p1
.end method

.method private k0()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->h:Landroid/view/View;

    const v1, 0x7f0a01cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00c9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/globalsearch/HotWordView;

    iput-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->E:Lcom/zui/launcher/globalsearch/HotWordView;

    const v2, 0x7f0a01ce

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->b0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->E:Lcom/zui/launcher/globalsearch/HotWordView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->E:Lcom/zui/launcher/globalsearch/HotWordView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/PullScrollView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    return-object p0
.end method

.method private l0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "judgeTotalThreadReturnCount   backtype --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  totalThreadList --> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->r0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlobalSearch"

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public static loadBitmapForBackground(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;
    .locals 4

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    div-float v1, p1, p2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const-string v1, "jxt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, v1, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " KeyguardWallpaper.loadBlurBitmap error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gallery"

    invoke-static {v0, p2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method static synthetic m(Lcom/zui/launcher/GlobalSearchView;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/GlobalSearchView;->k:I

    return p0
.end method

.method static synthetic n(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/GlobalSearchView;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/zui/launcher/GlobalSearchView;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/GlobalSearchView;->c0:I

    return p0
.end method

.method static synthetic p(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/GlobalSearchView;->D0:Z

    if-eqz v0, :cond_0

    const-string v0, "qwer"

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/zui/launcher/GlobalSearchView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/GlobalSearchView;->z0:Z

    return p1
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/GlobalSearchView;->C0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/zui/launcher/GlobalSearchView;->C0:Ljava/lang/String;

    return-object p0
.end method

.method public static stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[^a-zA-Z0-9\u4e00-\u9fa5\\p{P}\\s+]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->R0()V

    return-void
.end method

.method static synthetic u(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->getQuickAppDownload()Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->i:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    return-object p0
.end method

.method static synthetic w(Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->I0()V

    return-void
.end method

.method static synthetic x(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/GlobalSearchView;->X(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;ILjava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/GlobalSearchView;->J(Ljava/lang/String;ILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic z(Lcom/zui/launcher/GlobalSearchView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->A:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public synthetic A0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->clearKeywordHistory(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->A:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->A:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->M()V

    const/4 p0, 0x1

    const-string p1, "History"

    const-string v0, "GSCloseHistory"

    const-string v1, "\u5173\u95ed\u641c\u7d22\u5386\u53f2\u8bb0\u5f55"

    invoke-static {p1, v0, v1, p0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public synthetic B0(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/zui/launcher/GlobalSearchView;->k:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/GlobalSearchView;->c0:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->setMarginTop(I)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    return-void
.end method

.method public synthetic C0(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/zui/launcher/GlobalSearchView;->k:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/GlobalSearchView;->c0:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->setMarginTop(I)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    return-void
.end method

.method public synthetic D0()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->i:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    return-void
.end method

.method public synthetic E0(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/globalsearch/AboutAppView;->addAboutAppData(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/globalsearch/AboutAppView;->addAboutAppData(Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public synthetic F0(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/GlobalSearchView;->quicksAppData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public appLongClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obj --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appLongClick  obj ->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;->getPackName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lcom/zui/launcher/LauncherModel;->getAppInfo(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/AppInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->u0:Z

    check-cast p1, Lcom/zui/launcher/AppInfo;

    iput-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->t0:Lcom/zui/launcher/AppInfo;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    :cond_1
    return-void
.end method

.method public calculateNaviBar()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->handleNavigationState(I)V

    return-void
.end method

.method public dataCompleteNumber(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->getIsFingShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/GlobalSearchView;->v0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/GlobalSearchView;->w0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {v2, v6, v3}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v6, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v6, v5}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->v0:F

    float-to-int v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->v0:F

    float-to-int v2, v2

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/zui/launcher/GlobalSearchView;->x0:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/zui/launcher/GlobalSearchView;->x0:Z

    goto :goto_0

    :cond_2
    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->v0:F

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/zui/launcher/GlobalSearchView;->w0:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GlobalSearchView  dispatchTouchEvent  downArea -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/zui/launcher/GlobalSearchView;->x0:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", gapX --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",  gapY -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GlobalSearch"

    invoke-static {v5, v4}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/zui/launcher/GlobalSearchView;->x0:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->j0()V

    :cond_3
    iget-boolean v4, p0, Lcom/zui/launcher/GlobalSearchView;->x0:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    cmpl-float v4, v1, v5

    if-lez v4, :cond_4

    cmpg-float v3, v3, v1

    if-gez v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/zui/launcher/dragndrop/DragLayer;->getUpDownSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    :cond_4
    iput v5, p0, Lcom/zui/launcher/GlobalSearchView;->w0:F

    iput v5, p0, Lcom/zui/launcher/GlobalSearchView;->v0:F

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doEmptyViewState(I)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->D:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0332

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public doShowEventhing()V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->reMatchHeight()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->handleNavigationState(I)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->T0()V

    return-void
.end method

.method public getGameAppHelper()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->h0:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->h0:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->h0:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    return-object p0
.end method

.method public getGlobalSearchContext()Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalSearchSP()Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j0:Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j0:Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->j0:Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

    return-object p0
.end method

.method public getKeyKeyword()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getPreKeyWordString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalClientId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.zui.launcher_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "startapp_clientid"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNightMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/GlobalSearchView;->d0:Z

    return p0
.end method

.method public getPreKeyWordString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQuickAppPlatformVersion(Landroid/content/Context;)I
    .locals 3

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.hyperengine.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "platformVersion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return p0
.end method

.method public getRecommendNetApp(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGameAppHelper()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->setCacheGameList(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecommendNetApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", differ ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->p:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->addData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public handleNavigationState(I)V
    .locals 8

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->e0:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->calculateRotateAngle()I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/zui/launcher/Utilities;->getNavigationBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v1, Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->e0:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    iget-object v5, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-ne v5, v6, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getRealLongSize(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_3
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr p1, v0

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_4
    :goto_2
    const/16 p1, 0x8

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->e0:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    move v4, p1

    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public handleVideoView()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->t:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    return-void
.end method

.method public handlerShowAfterState()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->getRecommendApp()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->J0()V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->loadHotWordData()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->getClientId()V

    return-void
.end method

.method public highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getPreKeyWordString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    iget p0, p0, Lcom/zui/launcher/GlobalSearchView;->L:I

    invoke-direct {p1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v1

    const/16 v0, 0x21

    invoke-virtual {v2, p1, v1, p0, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-object v2
.end method

.method public hotWordjumpFromIntent(Lcom/zui/launcher/globalsearch/HotWordData;)V
    .locals 9

    const-string v0, "com.zui.browser"

    const v1, 0x7f1204f1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object p1, p1, Lcom/zui/launcher/globalsearch/HotWordData;->url:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/zui/launcher/Utilities;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "GlobalSearch.HotWordDownLoad"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hotWord jump  packageInstalled -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move v2, v3

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "GlobalSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hotWordjumpFromIntent exception --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    :goto_3
    throw p1
.end method

.method public itemClickMethod(Landroid/view/View;I)V
    .locals 10

    const-string p2, "com.lenovo.hyperengine.action.LAUNCH"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v1, Lcom/zui/launcher/Launcher;

    new-instance v2, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {v2}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getKeyKeyword()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "GSActiveSearchContentName"

    invoke-virtual {v2, v4, v5, v3}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string v3, "Search"

    const-string v5, "GSActiveSearch"

    const-string v6, "\u70b9\u51fb\u201c\u7ed3\u679c\u201d\u89e6\u53d1\u4e3b\u52a8\u641c\u7d22\u6b21\u6570"

    invoke-static {v3, v5, v6, v2}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/xlog/sdk/ParamMap;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemClickMethod  tag  ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GlobalSearch"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v0, Lcom/zui/launcher/model/BaseInfo;

    const-string v5, "-----onItemClick-----"

    const-wide/16 v6, 0x96

    const/16 v8, 0xc

    if-eqz v2, :cond_1

    check-cast v0, Lcom/zui/launcher/model/BaseInfo;

    iget-object p1, v0, Lcom/zui/launcher/model/BaseInfo;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/zui/launcher/model/BaseInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v3, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    :cond_1
    instance-of v2, v0, Lcom/zui/launcher/AppInfo;

    if-nez v2, :cond_9

    instance-of v9, v0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;

    if-eqz v9, :cond_2

    goto/16 :goto_4

    :cond_2
    instance-of p1, v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p1, :cond_3

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p1, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/BaseDraggingActivity;->startShortcutIntentSafely(Lcom/zui/launcher/WorkspaceItemInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    instance-of p1, v0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    check-cast v0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;->getRpkPn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;->getRpkVc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/launcher/GlobalSearchView;->getQuickAppPlatformVersion(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemClickMethod  rpkPn --> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rpkVc -->  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  platformVersion --> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "INNER_TYPE"

    const-string v4, "runinstall"

    invoke-virtual {v2, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "pn"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "vc"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "qkpf"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120593

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QuicksData  Exception --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_5
    instance-of p1, v0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    const p2, 0x7f1203d5

    if-eqz p1, :cond_7

    check-cast v0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    sget-object p1, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getApppack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getAppname()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGameAppHelper()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->download(Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;)V

    goto/16 :goto_8

    :cond_7
    instance-of p1, v0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    if-eqz p1, :cond_11

    check-cast v0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    sget-object p1, Lcom/zui/launcher/LauncherModel;->mDownloadingApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getPkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_8
    const-string p1, "GlobalGameSearch"

    const-string p2, "Suggestiongameappclicktype"

    const-string v1, "\u5168\u5c40\u641c\u7d22\u63a8\u8350\u6e38\u620f\u70b9\u51fb"

    invoke-static {p1, p2, v1, v4}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_3

    :cond_9
    :goto_4
    const/4 p2, 0x0

    if-eqz v2, :cond_10

    check-cast v0, Lcom/zui/launcher/AppInfo;

    :try_start_3
    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    invoke-virtual {v1, v0}, Lcom/zui/launcher/Launcher;->recordSearchAppsPos(Lcom/zui/launcher/AppInfo;)V

    :cond_b
    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isPowerSafeMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1, p1}, Lcom/zui/launcher/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_5

    :cond_c
    move-object p1, p2

    :goto_5
    if-eqz v2, :cond_e

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    iget-object v3, v0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4, p1}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_e
    :goto_6
    iget-object v2, v0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_7
    invoke-virtual {v0}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    iget-object p2, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_f
    invoke-virtual {v0}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "zui.launcher.key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v1, v0}, Lcom/zui/launcher/Utilities;->saveUsageStat(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_10
    check-cast v0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;->getIntent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->parseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_11
    :goto_8
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_12

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->saveKeywordHistory(Landroid/content/Context;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public landScreenLayout()V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "landScreenLayout    inMultiWindowMode -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isTablet -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",realWidth -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GlobalSearch"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/Utilities;->getNavigationBarHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->getDisplayWidth(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0706d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, p0, v1}, Lcom/zui/launcher/GlobalSearchView;->K0(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/zui/launcher/GlobalSearchView;->N:I

    invoke-direct {p0, v2, v1, v0, v4}, Lcom/zui/launcher/GlobalSearchView;->L0(Landroid/view/View;III)V

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    iget v4, p0, Lcom/zui/launcher/GlobalSearchView;->O:I

    invoke-direct {p0, v2, v1, v0, v4}, Lcom/zui/launcher/GlobalSearchView;->L0(Landroid/view/View;III)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    iget v4, p0, Lcom/zui/launcher/GlobalSearchView;->J:I

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/zui/launcher/GlobalSearchView;->N0(Landroid/view/View;III)V

    invoke-direct {p0, p0, v1}, Lcom/zui/launcher/GlobalSearchView;->K0(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->J:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->O0(Landroid/view/View;II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p0, v1}, Lcom/zui/launcher/GlobalSearchView;->K0(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->I:I

    iget v4, p0, Lcom/zui/launcher/GlobalSearchView;->N:I

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/zui/launcher/GlobalSearchView;->M0(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->I:I

    iget v4, p0, Lcom/zui/launcher/GlobalSearchView;->O:I

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/zui/launcher/GlobalSearchView;->L0(Landroid/view/View;III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->doEmptyViewState(I)V

    iget v5, p0, Lcom/zui/launcher/GlobalSearchView;->P:I

    iget v6, p0, Lcom/zui/launcher/GlobalSearchView;->T:I

    iget v7, p0, Lcom/zui/launcher/GlobalSearchView;->Q:I

    iget v8, p0, Lcom/zui/launcher/GlobalSearchView;->U:I

    iget v9, p0, Lcom/zui/launcher/GlobalSearchView;->W:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/zui/launcher/GlobalSearchView;->c0(IIIII)V

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/GlobalSearchView;->Y:I

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->a0:I

    invoke-direct {p0, v1, v2, v0}, Lcom/zui/launcher/GlobalSearchView;->a0(III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/GlobalSearchView;->Z(II)V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->Q()V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/zui/launcher/GlobalSearchView;->handleNavigationState(I)V

    return-void
.end method

.method public loadHotWordData()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/i0;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/i0;-><init>(Lcom/zui/launcher/GlobalSearchView;Lcom/zui/launcher/globalsearch/HotWordDownLoad;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->e:Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/ThreadManagerUtill$ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->f:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic m0()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getLocalClientId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/GlobalSearchView;->C0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClientId  localClientId ->  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zui/launcher/GlobalSearchView;->C0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/GlobalSearchView;->C0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->registerClientId(Z)V

    :cond_0
    return-void
.end method

.method public synthetic n0(Ljava/lang/String;)V
    .locals 8

    const-string v0, "deepShortCut"

    const/4 v1, 0x0

    const v2, 0x7f120600

    const/16 v3, 0xa

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/zui/launcher/Utilities;->queryDeepShortcuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->dataCompleteNumber(Ljava/lang/String;)V

    const-string v5, "GlobalSearch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deepShortCut  size --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v4, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    const-string v0, "query DeepShortcuts failed---> "

    invoke-static {v0, v4}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    :goto_1
    return-void
.end method

.method public synthetic o0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/LoadData;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/globalsearch/LoadData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/globalsearch/LoadData;->findItemByKeyword(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query aboutApp  localApps --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/GlobalSearchView;->E(Ljava/util/List;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->o0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->getQuickAppDownload()Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/GlobalSearchView;->C0:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v1}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->downLoadQuicksApp(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalArgumentException, s : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView$LOG;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->getStatusBarHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/GlobalSearchView;->c0:I

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    iput-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    const v0, 0x7f0a01ea

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0337

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextDirection(I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->k0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v0, 0x32

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    new-instance v3, Lcom/zui/launcher/y;

    invoke-direct {v3, p0}, Lcom/zui/launcher/y;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v2, 0x7f0a032a

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->f0:Landroid/widget/TextView;

    new-instance v3, Lcom/zui/launcher/p0;

    invoke-direct {v3, p0}, Lcom/zui/launcher/p0;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a032b

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->b:Landroid/widget/ImageButton;

    new-instance v3, Lcom/zui/launcher/q0;

    invoke-direct {v3, p0}, Lcom/zui/launcher/q0;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a02db

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/globalsearch/PullScrollView;

    iput-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {v2, p0}, Lcom/zui/launcher/globalsearch/PullScrollView;->setPullCloseListener(Lcom/zui/launcher/globalsearch/PullScrollView$onPullCloseListener;)V

    const v2, 0x7f0a01b1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    iput-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->i:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->i:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    invoke-virtual {v2, p0}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->setScrollViewStateListener(Lcom/zui/launcher/globalsearch/GlobalSearchScrollView$ScrollViewStateListener;)V

    const v2, 0x7f0a01ae

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00c4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00c5

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00c3

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->D:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->D:Landroid/widget/LinearLayout;

    const v2, 0x7f0a016b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->h:Landroid/view/View;

    const v2, 0x7f0a02e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->B:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->h:Landroid/view/View;

    const v2, 0x7f0a01c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->A:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->h:Landroid/view/View;

    const v2, 0x7f0a0392

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->o:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->h:Landroid/view/View;

    const v2, 0x7f0a0333

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/FlowLayout;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->x:Lcom/zui/launcher/globalsearch/FlowLayout;

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->h:Landroid/view/View;

    const v2, 0x7f0a00f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->U0()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->k0()V

    new-instance v2, Lcom/zui/launcher/j0;

    invoke-direct {v2, p0}, Lcom/zui/launcher/j0;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a027c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->e0:Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heightDiff --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->c0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isTablet -->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GlobalSearch"

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a0314

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/PullScrollView;->setIsAlreadyDown(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->H()V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->handlerShowAfterState()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "GlobalSearch"

    const-string v1, "onInterceptTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v4, Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {v4, v5, v3}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "onInterceptTouchEvent.hideInputMethod"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->j0()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->y:Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->y:Landroid/widget/TextView;

    const/4 p2, 0x0

    neg-int p1, p1

    invoke-virtual {p0, p2, p1, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->calculateNaviBar()V

    return-void
.end method

.method public onPullClose(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->y:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrollDown()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->y0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/PullScrollView;->setIsAlreadyTop(Z)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->l:I

    add-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v2, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->B0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->B0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->B0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/g0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/g0;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->B0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/GlobalSearchView$d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/GlobalSearchView$d;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->B0:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->B0:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->B0:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->B0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onScrollUp()V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->z0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/PullScrollView;->setIsAlreadyDown(Z)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->l:I

    add-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v1, 0x1

    neg-int v3, v0

    int-to-float v3, v3

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->A0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->A0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->A0:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->A0:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->A0:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->A0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->A0:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/zui/launcher/d0;

    invoke-direct {v2, p0}, Lcom/zui/launcher/d0;-><init>(Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->A0:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/zui/launcher/GlobalSearchView$c;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/GlobalSearchView$c;-><init>(Lcom/zui/launcher/GlobalSearchView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "GlobalSearch"

    const-string v1, "onTouEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v4, Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p0, v3}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "onTouchEvent: r.contains"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic p0(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->getInstance()Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    const v1, 0x7f1205fd

    const/16 v2, 0x9

    const-string v3, "WebSearch"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/zui/launcher/GlobalSearchView;->dataCompleteNumber(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Web search result --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  key -- >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GlobalSearch"

    invoke-static {v4, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    return-void

    :cond_1
    :goto_1
    invoke-direct {p0, v3}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public portScreenLayout()V
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p0, v0}, Lcom/zui/launcher/GlobalSearchView;->K0(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->getRealSizePoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  portScreenLayout  Gap -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->H:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",  displayWidth -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isTablet -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GlobalSearch"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->K:I

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/zui/launcher/GlobalSearchView;->N0(Landroid/view/View;III)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->K:I

    invoke-direct {p0, v1, v0, v2}, Lcom/zui/launcher/GlobalSearchView;->O0(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zui/launcher/GlobalSearchView;->k:I

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->c:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->H:I

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->M:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/zui/launcher/GlobalSearchView;->M0(Landroid/view/View;III)V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->H:I

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->k:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/zui/launcher/GlobalSearchView;->L0(Landroid/view/View;III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->doEmptyViewState(I)V

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->P:I

    iget v3, p0, Lcom/zui/launcher/GlobalSearchView;->R:I

    iget v4, p0, Lcom/zui/launcher/GlobalSearchView;->Q:I

    iget v5, p0, Lcom/zui/launcher/GlobalSearchView;->S:I

    iget v6, p0, Lcom/zui/launcher/GlobalSearchView;->V:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/GlobalSearchView;->c0(IIIII)V

    const/high16 v0, 0x40b00000    # 5.5f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/GlobalSearchView;->X:I

    iget v2, p0, Lcom/zui/launcher/GlobalSearchView;->Z:I

    invoke-direct {p0, v1, v2, v0}, Lcom/zui/launcher/GlobalSearchView;->a0(III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/GlobalSearchView;->Z(II)V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->R()V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->handleNavigationState(I)V

    return-void
.end method

.method public synthetic q0(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->getInstance()Lcom/zui/launcher/globalsearch/InternetGlobalSearch;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/launcher/globalsearch/InternetGlobalSearch;->internetSearch(Ljava/lang/String;Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "WebSearch"

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------internetSearch--failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GlobalSearch"

    invoke-static {v0, p2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x9

    const/4 v0, 0x0

    const v1, 0x7f1205fd

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method public quicksAppData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->q0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->q0:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quicksAppData docsList --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  quickList --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  localApps --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GlobalSearch"

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "aboutApp"

    if-nez v2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/zui/launcher/GlobalSearchView;->dataCompleteNumber(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->V0()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_2

    iput-boolean v3, p0, Lcom/zui/launcher/GlobalSearchView;->p0:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/zui/launcher/GlobalSearchView;->p0:Z

    :goto_0
    iget-boolean v4, p0, Lcom/zui/launcher/GlobalSearchView;->p0:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget v4, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_4

    invoke-interface {p2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    move v2, v3

    :cond_4
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/zui/launcher/GlobalSearchView;->n0:Ljava/util/List;

    iget v1, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {p2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v3

    :goto_1
    if-eqz v2, :cond_7

    iget p2, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    mul-int/lit8 p2, p2, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p2, :cond_6

    invoke-interface {p1, v3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_2
    invoke-direct {p0, v0, p3}, Lcom/zui/launcher/GlobalSearchView;->P0(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic r0(Ljava/lang/String;)V
    .locals 8

    const-string v0, "contacts"

    const/4 v1, 0x0

    const v2, 0x7f1205ff

    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/zui/launcher/Utilities;->queryContacts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->dataCompleteNumber(Ljava/lang/String;)V

    const-string v5, "GlobalSearch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query contact contactList --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v4, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    const-string v0, "query contact failed---> "

    invoke-static {v0, v4}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method public reMatchHeight()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    return-void
.end method

.method public recycleScrollContainerView()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->i0:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->i0:Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->recyclerShortCut()V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/AboutAppView;->recycleAbourAppView()V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalContactView;->recyclerContactAdapter()V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalScheduleView;->recyclerScheduleView()V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->recyclerSmsView()V

    :cond_5
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/GlobalWebPageView;->recycleWebPageView()V

    :cond_6
    return-void
.end method

.method public registerClientId(Z)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "-"

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/launcher/GlobalSearchView;->o0:Z

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v1

    const-string v2, "GlobalSearch"

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/zui/launcher/GlobalSearchView;->o0:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerClientId isTablet -->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zui/launcher/GlobalSearchView;->g0:Z

    if-eqz v1, :cond_1

    const-string p1, "16162134-3a4-2-9999-1-3-1_240_i100000000000025t19700101000000001_c24202d1p710"

    sput-object p1, Lcom/zui/launcher/GlobalSearchView;->C0:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->R0()V

    return-void

    :cond_1
    const-string v1, "registerClientId  not  isCTAVersion and networkAvailable "

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v7, "lang"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceBrand"

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceManufacturer"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceModel"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    const-string v7, "android"

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osVersion"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "horizontalResolution"

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "verticalResolution"

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dpi"

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceIdType"

    const-string v2, "oaid"

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    invoke-static {}, Lcom/zui/launcher/Utilities;->getOAID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clientVersion"

    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clientVersionCode"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channel"

    const-string v1, "17415"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/OKHttpUtils;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/GlobalSearchView$e;

    invoke-direct {v2, p0, p1}, Lcom/zui/launcher/GlobalSearchView$e;-><init>(Lcom/zui/launcher/GlobalSearchView;Z)V

    const-string p0, "https://sams.lenovomm.com/ams/api/register"

    invoke-virtual {v1, p0, v0, v2}, Lcom/zui/launcher/networksdk/OKHttpUtils;->postAsync(Ljava/lang/String;Lokhttp3/RequestBody;Lcom/zui/launcher/networksdk/ResultCallback;)V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void

    :cond_2
    :goto_1
    const-string p0, "registerClientId  isCTAVersion  "

    invoke-static {v2, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeFromLayer(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->E:Lcom/zui/launcher/globalsearch/HotWordView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/HotWordView;->getHotWordAdapter()Lcom/zui/launcher/globalsearch/HotWordAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordAdapter;->resetClickCount(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->j0()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->N()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->M()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->getQuickAppDownload()Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->clearRetryMap()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public removeGlobalSearchView()V
    .locals 3

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    const-string p0, "Quit"

    const-string v0, "QuitGSGesture"

    const-string v1, "\u4e0b\u6ed1\u624b\u52bf\u9000\u51fa"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public removeScrollContainerLayout()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->recycleScrollContainerView()V

    return-void
.end method

.method public resetClientId()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/zui/launcher/GlobalSearchView;->C0:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->R0()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->registerClientId(Z)V

    return-void
.end method

.method public resetGlobalSearchViewState()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->I0()V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->removeScrollContainerLayout()V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->u0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->t0:Lcom/zui/launcher/AppInfo;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->locateItem(Lcom/zui/launcher/AppInfo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/GlobalSearchView;->u0:Z

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->j0()V

    return-void
.end method

.method public resetViewState()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->r:Lcom/zui/launcher/globalsearch/AboutAppView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->q:Lcom/zui/launcher/globalsearch/GlobalContactView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->s:Lcom/zui/launcher/globalsearch/GlobalWebPageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->v:Lcom/zui/launcher/globalsearch/GlobalScheduleView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->u:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->w:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->handleVideoView()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->M()V

    return-void
.end method

.method public synthetic s0(Ljava/lang/String;)V
    .locals 8

    const-string v0, "GlobalSearch"

    const-string v1, "sms"

    const/4 v2, 0x0

    const v3, 0x7f120602

    const/4 v4, 0x6

    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getPreKeyWordString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/zui/launcher/Utilities;->querySms(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/zui/launcher/GlobalSearchView;->dataCompleteNumber(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query sms  smsList.size  --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, p1, v5, v3}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    invoke-direct {p0, v4, p1, v2, v3}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    invoke-direct {p0, v1}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    invoke-direct {p0, v4, p1, v2, v3}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "query sms failed---> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public saveKeywordHistory(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->saveKeywordHistory(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSmsInfo(Ljava/lang/String;JJJ)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "address"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "thread_id"

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "highlight"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "select_id"

    invoke-virtual {v1, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "conversation_id"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setBackgroundBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHotWordHint()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getHintHotWord(Landroid/content/Context;)Lcom/zui/launcher/globalsearch/HotWordData;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->G:Lcom/zui/launcher/globalsearch/HotWordData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/zui/launcher/globalsearch/HotWordData;->word:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120612

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setMarginTop(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->z:Lcom/zui/launcher/globalsearch/PullScrollView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setNightMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/GlobalSearchView;->d0:Z

    return-void
.end method

.method public skipSms(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public switchThreadQuicksAppData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/h0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zui/launcher/h0;-><init>(Lcom/zui/launcher/GlobalSearchView;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic t0(Ljava/lang/String;)V
    .locals 10

    const-string v0, "events"

    const/4 v1, 0x0

    const v2, 0x7f1205fe

    const/4 v3, 0x7

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/zui/launcher/Utilities;->queryCalendarEvents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/zui/launcher/Utilities;->queryCalendarReminders(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "GlobalSearch"

    const/4 v7, 0x0

    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    iget v8, p0, Lcom/zui/launcher/GlobalSearchView;->m0:I

    if-le v4, v8, :cond_1

    iget v4, p0, Lcom/zui/launcher/GlobalSearchView;->m0:I

    invoke-interface {v5, v7, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reminder 1111 reminderList  size -->"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->dataCompleteNumber(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v5, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_2

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    return-void

    :cond_3
    if-nez v5, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    return-void

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget v8, p0, Lcom/zui/launcher/GlobalSearchView;->m0:I

    if-le v5, v8, :cond_5

    iget v5, p0, Lcom/zui/launcher/GlobalSearchView;->m0:I

    invoke-interface {v4, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "schedule 2222 eventList  size -->"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->dataCompleteNumber(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v3, p1, v4, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_2

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    return-void

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/zui/launcher/GlobalSearchView;->m0:I

    if-le v8, v9, :cond_8

    iget v8, p0, Lcom/zui/launcher/GlobalSearchView;->m0:I

    invoke-interface {v5, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " 44444 eventList  size -->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , reminderList size -->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    iget v8, p0, Lcom/zui/launcher/GlobalSearchView;->m0:I

    if-le v6, v8, :cond_9

    iget v6, p0, Lcom/zui/launcher/GlobalSearchView;->m0:I

    invoke-interface {v4, v7, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    :cond_9
    invoke-virtual {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->dataCompleteNumber(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eventList --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  reminderList -->  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/GlobalSearchView$LOG;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-direct {p0, v0}, Lcom/zui/launcher/GlobalSearchView;->l0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query Calendar failed---> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/GlobalSearchView$LOG;->e(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    :goto_2
    return-void
.end method

.method public transferToRowData(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/SettingsInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/RowData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int v1, v0, p2

    rem-int v2, v0, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v4, Lcom/zui/launcher/model/RowData;

    mul-int v5, v3, p2

    add-int/lit8 v3, v3, 0x1

    mul-int v6, v3, p2

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lcom/zui/launcher/model/RowData;-><init>(Ljava/util/List;I)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance v1, Lcom/zui/launcher/model/RowData;

    sub-int v2, v0, v2

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/zui/launcher/model/RowData;-><init>(Ljava/util/List;I)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic u0()V
    .locals 14

    const-string v0, "GlobalSearch"

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getKeyKeyword()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zui/launcher/Utilities;->isGamePhone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    mul-int/lit8 v1, v1, 0x2

    :goto_0
    const v8, 0x7f120601

    const/16 v9, 0xd

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGameAppHelper()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/zui/launcher/Utilities;->getUsageStatApps(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRecommendApp: usageStatApps = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "usageStatApps -->"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    move v5, v3

    :cond_2
    :goto_1
    invoke-static {}, Lcom/zui/launcher/Utilities;->isGamePhone()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v1, "isNotGamePhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd

    const/4 v5, 0x1

    const v6, 0x7f120601

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/GlobalSearchView;->H0(ILjava/lang/String;Ljava/util/List;ZI)V

    return-void

    :cond_3
    sget-boolean v6, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->CACHE_VALID:Z

    if-eqz v6, :cond_4

    const-string v1, "getRecommendApp  cache  valid "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd

    const/4 v5, 0x1

    const v6, 0x7f120601

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/GlobalSearchView;->H0(ILjava/lang/String;Ljava/util/List;ZI)V

    return-void

    :cond_4
    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getInstance()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v10

    iget v11, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    invoke-virtual {v6, v10, v11}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getLocalGameAppData(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v1, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "localGameList size  -->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_5

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :cond_5
    iget v5, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    if-ge v1, v5, :cond_a

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    iget v6, p0, Lcom/zui/launcher/GlobalSearchView;->g:I

    sub-int/2addr v6, v1

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getCacheGameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-lez v2, :cond_8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {v11}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getPkName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->isDownloading(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGameAppList  differ-->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", cacheGameList --> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkAvailable ->"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataHandleSize -->"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v2, v6, :cond_9

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGameAppHelper()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->clearCacheList()V

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGameAppHelper()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    move-result-object v1

    invoke-virtual {v1, p0, v6}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getGameAppList(Lcom/zui/launcher/GlobalSearchView;I)V

    goto :goto_3

    :cond_9
    invoke-interface {v10, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    :goto_3
    invoke-direct {p0, v9, v7, v4, v8}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rRecommend exception -- > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v9, v7, v0, v8}, Lcom/zui/launcher/GlobalSearchView;->G0(ILjava/lang/String;Ljava/util/List;I)V

    :goto_4
    return-void
.end method

.method public synthetic v0()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->queryKeywordHistoryRecent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public synthetic w0(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getGlobalhotWordList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadHotWordData list --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch.HotWordDownLoad"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x12

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public synthetic x0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x42

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->j0()V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->saveKeywordHistory(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance p1, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {p1}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    iget-object p3, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "GSRecommendHotwordsContentName"

    invoke-virtual {p1, p2, v0, p3}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Hotwords"

    const-string v1, "GSRecommendHotwords"

    const-string v2, "\u5bf9\u5185\u5d4c\u70ed\u8bcd\u4e3b\u52a8\u641c\u7d22"

    invoke-static {v0, v1, v2, p1}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/xlog/sdk/ParamMap;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  send message mWordData mHintHotWord --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView;->G:Lcom/zui/launcher/globalsearch/HotWordData;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  hint --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlobalSearch.HotWordDownLoad"

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->G:Lcom/zui/launcher/globalsearch/HotWordData;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/zui/launcher/GlobalSearchView;->hotWordjumpFromIntent(Lcom/zui/launcher/globalsearch/HotWordData;)V

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/zui/launcher/Utilities;->saveKeywordHistory(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return p2
.end method

.method public synthetic y0(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->d:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView(Z)V

    const-string p0, "Quit"

    const-string v0, "QuitGSCancel"

    const-string v1, "\u53d6\u6d88\u9000\u51fa"

    invoke-static {p0, v0, v1, p1}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public synthetic z0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->a:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->i:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView;->i:Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->setUpState(Z)V

    invoke-direct {p0}, Lcom/zui/launcher/GlobalSearchView;->N()V

    return-void
.end method
