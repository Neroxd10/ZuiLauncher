.class public Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/GlobalSMSView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalSmsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/SmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/SmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/zui/launcher/GlobalSearchView;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/StringBuilder;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->e:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->h:I

    const-string v0, "..."

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->f:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->g:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Lcom/zui/launcher/GlobalSearchView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->e:Z

    return p1
.end method

.method static synthetic e(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->h:I

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addData()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/model/SmsInfo;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

    iget v3, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->c:I

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->c:I

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

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

    check-cast p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;I)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/SmsInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/zui/launcher/model/SmsInfo;->date:Ljava/lang/String;

    iget-object v2, v0, Lcom/zui/launcher/model/SmsInfo;->contactImage:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/zui/launcher/model/SmsInfo;->body:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\t\\n\\r]"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/zui/launcher/model/SmsInfo;->address:Ljava/lang/String;

    iget-object v5, v0, Lcom/zui/launcher/model/SmsInfo;->person:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v1, :cond_3

    iget-object v8, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->d:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    iget-object v9, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->f:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_0

    :cond_2
    move v9, v7

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v8, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->f:Landroid/content/Context;

    if-eqz v2, :cond_4

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->getCircleAvatar(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v7

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->c:Landroid/widget/TextView;

    new-instance v8, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;

    invoke-direct {v8, p0, v3, p1, v1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;Ljava/lang/String;Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_4
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move v6, v7

    :goto_5
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v5}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    :goto_6
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v4}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_e
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$b;-><init>(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->e:Landroid/view/View;

    if-nez p2, :cond_10

    const/16 p1, 0x8

    goto :goto_8

    :cond_10
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_9
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0156

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

    invoke-direct {p1, p0}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public recycleSmsAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->g:Ljava/lang/StringBuilder;

    return-void
.end method

.method public removeData()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->c:I

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public setData(Ljava/util/List;Ljava/util/List;ILcom/zui/launcher/GlobalSearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/SmsInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/SmsInfo;",
            ">;I",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->b:Ljava/util/List;

    iput p3, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->c:I

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->d:Lcom/zui/launcher/GlobalSearchView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->g:Ljava/lang/StringBuilder;

    return-void
.end method
