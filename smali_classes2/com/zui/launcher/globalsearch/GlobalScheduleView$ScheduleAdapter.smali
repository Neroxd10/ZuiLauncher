.class public Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/GlobalScheduleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/CalendarEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/CalendarEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/zui/launcher/GlobalSearchView;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;)Lcom/zui/launcher/GlobalSearchView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    return-object p0
.end method


# virtual methods
.method public addData()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/CalendarEventInfo;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

    iget v3, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->c:I

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->c:I

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

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

    check-cast p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;I)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/CalendarEventInfo;

    iget-object v1, v0, Lcom/zui/launcher/model/CalendarEventInfo;->title:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v1, :cond_4

    iget-object v4, p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->e:Landroid/content/Context;

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

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v1}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v4, p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/zui/launcher/model/CalendarEventInfo;->calendarTime:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v4, p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->b:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->e:Landroid/content/Context;

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

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-boolean v1, v0, Lcom/zui/launcher/model/CalendarEventInfo;->isReminder:Z

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802e6

    goto :goto_4

    :cond_7
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802c1

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;->c:Landroid/view/View;

    if-nez p2, :cond_8

    const/16 v2, 0x8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0155

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter$b;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public recyclerAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->c:I

    return-void
.end method

.method public removeData()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->c:I

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public setData(Ljava/util/List;Ljava/util/List;ILcom/zui/launcher/GlobalSearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/CalendarEventInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/CalendarEventInfo;",
            ">;I",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->b:Ljava/util/List;

    iput p3, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->c:I

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/GlobalScheduleView$ScheduleAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    return-void
.end method
