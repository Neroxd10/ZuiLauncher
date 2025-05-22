.class public Lcom/zui/launcher/settings/ZuiGridOptionPreference;
.super Lzui/preference/Preference;
.source ""


# instance fields
.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/app/Activity;

.field private f:Lcom/zui/launcher/Utilities$GridSummary;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->f:Lcom/zui/launcher/Utilities$GridSummary;

    const p1, 0x7f120124

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setTitle(I)V

    const p1, 0x7f0d01b5

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/settings/ZuiGridOptionPreference;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->e:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/settings/ZuiGridOptionPreference;)Lcom/zui/launcher/Utilities$GridSummary;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->f:Lcom/zui/launcher/Utilities$GridSummary;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/settings/ZuiGridOptionPreference;Lcom/zui/launcher/Utilities$GridSummary;)Lcom/zui/launcher/Utilities$GridSummary;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->f:Lcom/zui/launcher/Utilities$GridSummary;

    return-object p1
.end method

.method static synthetic e(Lcom/zui/launcher/settings/ZuiGridOptionPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->j()V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/settings/ZuiGridOptionPreference;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/launcher/settings/ZuiGridOptionPreference;Lcom/zui/launcher/Utilities$GridSummary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->h(Lcom/zui/launcher/Utilities$GridSummary;)V

    return-void
.end method

.method private h(Lcom/zui/launcher/Utilities$GridSummary;)V
    .locals 7

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_4

    iget-boolean v1, p1, Lcom/zui/launcher/Utilities$GridSummary;->isDefault:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p1, Lcom/zui/launcher/Utilities$GridSummary;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/Utilities$GridSummary;

    iget-boolean v6, v5, Lcom/zui/launcher/Utilities$GridSummary;->isDefault:Z

    if-eqz v6, :cond_1

    iput-boolean v3, v5, Lcom/zui/launcher/Utilities$GridSummary;->isDefault:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/zui/launcher/Utilities$GridSummary;->isDefault:Z

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->e:Landroid/app/Activity;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->changeDefaultGridOption(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.zui.launcher.CHANGE_LAYOUT_CONFIG"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "extra_new_layout_config"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.zui.calendar"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "screen"

    const-string p1, "ClickWidgetaccess"

    const-string v0, "Screenlayout"

    invoke-static {p0, p1, v0, v3}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private i()V
    .locals 17

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

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
    invoke-virtual {v6, v5, v1}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->setCompoundBounds(Landroid/widget/TextView;I)V

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance v3, Lcom/zui/launcher/settings/ZuiGridOptionPreference$a;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v13, v3

    move-object v3, v7

    move-object/from16 v16, v5

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/settings/ZuiGridOptionPreference$a;-><init>(Lcom/zui/launcher/settings/ZuiGridOptionPreference;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    rem-int/lit8 v1, v14, 0x3

    div-int/lit8 v2, v14, 0x3

    add-int v2, v10, v9

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, v6, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 3

    new-instance v0, Lzui/app/MessageDialog$Builder;

    iget-object v1, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120102

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/settings/ZuiGridOptionPreference$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference$b;-><init>(Lcom/zui/launcher/settings/ZuiGridOptionPreference;)V

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->e:Landroid/app/Activity;

    const v2, 0x7f1200e8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/settings/ZuiGridOptionPreference$c;

    invoke-direct {v2, p0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference$c;-><init>(Lcom/zui/launcher/settings/ZuiGridOptionPreference;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    new-instance v1, Lcom/zui/launcher/settings/ZuiGridOptionPreference$d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference$d;-><init>(Lcom/zui/launcher/settings/ZuiGridOptionPreference;)V

    const/high16 p0, 0x1040000

    invoke-virtual {v0, p0, v1}, Lzui/app/MessageDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lzui/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->d:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070732

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070733

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->d:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->i()V

    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Lzui/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->e:Landroid/app/Activity;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d01b5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->e:Landroid/app/Activity;

    return-void
.end method

.method public setCompoundBounds(Landroid/widget/TextView;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0, v0, p2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
