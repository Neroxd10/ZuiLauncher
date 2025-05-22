.class public Lzui/appcompat/preference/EditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source ""


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lzui/util/PreferenceBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/EditTextPreference$a;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/EditTextPreference$a;-><init>(Lzui/appcompat/preference/EditTextPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/EditTextPreference;->c:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lzui/appcompat/preference/EditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/EditTextPreference$a;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/EditTextPreference$a;-><init>(Lzui/appcompat/preference/EditTextPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/EditTextPreference;->c:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/appcompat/preference/EditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/EditTextPreference$a;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/EditTextPreference$a;-><init>(Lzui/appcompat/preference/EditTextPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/EditTextPreference;->c:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/appcompat/preference/EditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/appcompat/preference/EditTextPreference$a;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/EditTextPreference$a;-><init>(Lzui/appcompat/preference/EditTextPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/appcompat/preference/EditTextPreference;->c:Lzui/util/PreferenceBase;

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/appcompat/preference/EditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lzui/appcompat/preference/EditTextPreference;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget v0, Lzui/platform/R$layout;->preference_appcompat_zui:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object p0, p0, Lzui/appcompat/preference/EditTextPreference;->c:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lzui/appcompat/preference/EditTextPreference;->a:Landroid/view/View;

    :cond_1
    iget-object p1, p0, Lzui/appcompat/preference/EditTextPreference;->c:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/appcompat/preference/EditTextPreference;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    iget-object p1, p0, Lzui/appcompat/preference/EditTextPreference;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lzui/appcompat/preference/EditTextPreference;->a:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setActivated(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/appcompat/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/appcompat/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/appcompat/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzui/appcompat/preference/EditTextPreference;->c:Lzui/util/PreferenceBase;

    iget-object p0, p0, Lzui/appcompat/preference/EditTextPreference;->a:Landroid/view/View;

    invoke-virtual {v1, p0, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/preference/EditTextPreference;->b:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lzui/appcompat/preference/EditTextPreference;->a:Landroid/view/View;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 0

    iget-object p0, p0, Lzui/appcompat/preference/EditTextPreference;->c:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
