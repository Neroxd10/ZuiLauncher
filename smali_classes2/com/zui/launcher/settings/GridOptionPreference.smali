.class public Lcom/zui/launcher/settings/GridOptionPreference;
.super Landroidx/preference/Preference;
.source ""


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/settings/GridOptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/settings/GridOptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/settings/GridOptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f120124

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    const p1, 0x7f0d01b5

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/settings/GridOptionPreference;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/GridOptionPreference;->a:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/settings/GridOptionPreference;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/GridOptionPreference;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private c()V
    .locals 17

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070731

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07072f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070730

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    invoke-static {v7}, Lcom/zui/launcher/Utilities;->queryGridOptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_1

    const v0, 0x7f0d00d5

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v15, v13, v13, v13, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Utilities$GridSummary;

    iget-object v1, v0, Lcom/zui/launcher/Utilities$GridSummary;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/zui/launcher/Utilities$GridSummary;->isDefault:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/zui/launcher/Utilities$GridSummary;->previewSelectedId:I

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0804fb

    goto :goto_1

    :cond_0
    iget v1, v0, Lcom/zui/launcher/Utilities$GridSummary;->previewId:I

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0804fc

    :goto_1
    invoke-virtual {v6, v5, v1}, Lcom/zui/launcher/settings/GridOptionPreference;->setCompoundBounds(Landroid/widget/TextView;I)V

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance v3, Lcom/zui/launcher/settings/GridOptionPreference$a;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v13, v3

    move-object v3, v7

    move-object/from16 v16, v5

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/settings/GridOptionPreference$a;-><init>(Lcom/zui/launcher/settings/GridOptionPreference;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    rem-int/lit8 v1, v14, 0x3

    div-int/lit8 v2, v14, 0x3

    add-int v2, v10, v9

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, v6, Lcom/zui/launcher/settings/GridOptionPreference;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/zui/launcher/settings/GridOptionPreference;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070732

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/settings/GridOptionPreference;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/zui/launcher/settings/GridOptionPreference;->c()V

    return-void
.end method

.method public onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/settings/GridOptionPreference;->b:Landroid/app/Activity;

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/GridOptionPreference;->b:Landroid/app/Activity;

    return-void
.end method

.method public setCompoundBounds(Landroid/widget/TextView;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
