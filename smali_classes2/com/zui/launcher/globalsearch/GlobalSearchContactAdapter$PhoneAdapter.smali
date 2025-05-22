.class Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;,
        Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/PhoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/zui/launcher/GlobalSearchView;

.field public d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/PhoneInfo;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;)Lcom/zui/launcher/GlobalSearchView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;I)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/PhoneInfo;

    iget-object v1, v0, Lcom/zui/launcher/model/PhoneInfo;->phone:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v1, :cond_4

    iget-object v4, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->b:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v1}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v4, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    iget v0, v0, Lcom/zui/launcher/model/PhoneInfo;->phoneType:I

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->b:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/zui/launcher/Utilities;->handlePhoneType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-static {}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a022a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    rem-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_7

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x41c00000    # 24.0f

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/zui/launcher/Utilities;->dp2px(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_7
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    iget-object v0, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$a;

    invoke-direct {v2, p0, v1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;

    invoke-direct {v2, p0, v1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;->e:Landroid/view/View;

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$c;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d007c

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->c:Lcom/zui/launcher/GlobalSearchView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;

    return-void
.end method

.method public e(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->b(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->c(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$d;

    move-result-object p0

    return-object p0
.end method
