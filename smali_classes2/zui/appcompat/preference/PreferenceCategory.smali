.class public Lzui/appcompat/preference/PreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Lzui/util/PreferenceBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/appcompat/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lzui/platform/R$attr;->preferenceCategoryXStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/appcompat/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/appcompat/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/PreferenceCategory$a;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/PreferenceCategory$a;-><init>(Lzui/appcompat/preference/PreferenceCategory;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    iput-object p1, p0, Lzui/appcompat/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget-object v0, Lzui/platform/R$styleable;->PreferenceCategoryX:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lzui/platform/R$styleable;->PreferenceCategoryX_cardStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lzui/appcompat/preference/PreferenceCategory;->d:Z

    sget v1, Lzui/platform/R$styleable;->PreferenceCategoryX_android_layout:I

    sget v3, Lzui/platform/R$layout;->preference_category_x:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lzui/appcompat/preference/PreferenceCategory;->b:I

    sget v1, Lzui/platform/R$styleable;->PreferenceCategoryX_android_selectable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Lzui/appcompat/preference/PreferenceCategory;->b:I

    invoke-super {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lzui/appcompat/preference/PreferenceCategory;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private b(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    instance-of p0, p1, Lzui/appcompat/preference/Preference;

    if-eqz p0, :cond_0

    check-cast p1, Lzui/appcompat/preference/Preference;

    invoke-virtual {p1, p2}, Lzui/appcompat/preference/Preference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lzui/appcompat/preference/PreferenceWithArrow;

    if-eqz p0, :cond_1

    check-cast p1, Lzui/appcompat/preference/PreferenceWithArrow;

    invoke-virtual {p1, p2}, Lzui/appcompat/preference/PreferenceWithArrow;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lzui/appcompat/preference/SwitchPreference;

    if-eqz p0, :cond_2

    check-cast p1, Lzui/appcompat/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Lzui/appcompat/preference/SwitchPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lzui/appcompat/preference/CheckBoxPreference;

    if-eqz p0, :cond_3

    check-cast p1, Lzui/appcompat/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Lzui/appcompat/preference/CheckBoxPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    instance-of p0, p1, Lzui/appcompat/preference/RadioButtonPreference;

    if-eqz p0, :cond_4

    check-cast p1, Lzui/appcompat/preference/RadioButtonPreference;

    invoke-virtual {p1, p2}, Lzui/appcompat/preference/RadioButtonPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    instance-of p0, p1, Lzui/appcompat/preference/EditTextPreference;

    if-eqz p0, :cond_5

    check-cast p1, Lzui/appcompat/preference/EditTextPreference;

    invoke-virtual {p1, p2}, Lzui/appcompat/preference/EditTextPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    instance-of p0, p1, Lzui/appcompat/preference/ListPreference;

    if-eqz p0, :cond_6

    check-cast p1, Lzui/appcompat/preference/ListPreference;

    invoke-virtual {p1, p2}, Lzui/appcompat/preference/ListPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    instance-of p0, p1, Lzui/appcompat/preference/MultiSelectListPreference;

    if-eqz p0, :cond_7

    check-cast p1, Lzui/appcompat/preference/MultiSelectListPreference;

    invoke-virtual {p1, p2}, Lzui/appcompat/preference/MultiSelectListPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public isCardStyle()Z
    .locals 0

    iget-boolean p0, p0, Lzui/appcompat/preference/PreferenceCategory;->d:Z

    return p0
.end method

.method public onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceCategory;->updateContent()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    sget v3, Lzui/platform/R$id;->divider:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz v3, :cond_5

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-eqz v3, :cond_5

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    iget-boolean v0, p0, Lzui/appcompat/preference/PreferenceCategory;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lzui/appcompat/preference/PreferenceCategory;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->preference_card_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lzui/appcompat/preference/PreferenceCategory;->c:Landroid/view/View;

    :cond_6
    iget-object p1, p0, Lzui/appcompat/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceCategory;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    return-void
.end method

.method public setActivated(Z)V
    .locals 2

    iget-object v0, p0, Lzui/appcompat/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceCategory;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    iput p1, p0, Lzui/appcompat/preference/PreferenceCategory;->b:I

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 0

    iget-object p0, p0, Lzui/appcompat/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method

.method public updateContent()V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    iget-boolean v1, p0, Lzui/appcompat/preference/PreferenceCategory;->d:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lzui/appcompat/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget v2, Lzui/platform/R$drawable;->preference_item_card_whole_bg:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lzui/appcompat/preference/PreferenceCategory;->b(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    iget-object v2, p0, Lzui/appcompat/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget v3, Lzui/platform/R$drawable;->preference_item_card_top_bg:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lzui/appcompat/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget v3, Lzui/platform/R$drawable;->preference_item_card_bottom_bg:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lzui/appcompat/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget v3, Lzui/platform/R$drawable;->preference_item_card_middle_bg:I

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lzui/appcompat/preference/PreferenceCategory;->b(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method
