.class final Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/widget/picker/WidgetsFullSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

.field final b:Landroid/view/View;

.field final c:Landroid/view/View;

.field final d:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;

.field final e:Landroid/widget/LinearLayout;

.field final f:Landroid/widget/ImageView;

.field final g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

.field final synthetic h:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->h:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    const v0, 0x7f0a0102

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->b:Landroid/view/View;

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    const v0, 0x7f0a0328

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->c:Landroid/view/View;

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    const v0, 0x7f0a044a

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->d:Lcom/zui/launcher/widget/picker/search/WidgetsSearchBar;

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    const v0, 0x7f0a03da

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->e:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    const v0, 0x7f0a01f9

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->f:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->a:Lcom/zui/launcher/widget/picker/SearchAndRecommendationsView;

    const v0, 0x7f0a02e5

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    new-instance v0, Lcom/zui/launcher/widget/picker/i;

    invoke-direct {v0, p0}, Lcom/zui/launcher/widget/picker/i;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;)V

    invoke-virtual {p2, v0}, Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->g:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->f:Landroid/widget/ImageView;

    new-instance p2, Lcom/zui/launcher/widget/picker/j;

    invoke-direct {p2, p0}, Lcom/zui/launcher/widget/picker/j;-><init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->h:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet$d;->h:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->onBackPressed()Z

    return-void
.end method
