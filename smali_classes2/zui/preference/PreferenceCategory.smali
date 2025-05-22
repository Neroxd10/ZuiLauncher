.class public Lzui/preference/PreferenceCategory;
.super Landroid/preference/PreferenceCategory;
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

    invoke-direct {p0, p1, v0}, Lzui/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lzui/platform/R$attr;->preferenceCategoryXStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceCategory$a;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceCategory$a;-><init>(Lzui/preference/PreferenceCategory;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    iput-object p1, p0, Lzui/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget-object v0, Lzui/platform/R$styleable;->PreferenceCategoryX:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lzui/platform/R$styleable;->PreferenceCategoryX_cardStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lzui/preference/PreferenceCategory;->d:Z

    sget v1, Lzui/platform/R$styleable;->PreferenceCategoryX_android_layout:I

    sget v3, Lzui/platform/R$layout;->preference_category_x:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lzui/preference/PreferenceCategory;->b:I

    sget v1, Lzui/platform/R$styleable;->PreferenceCategoryX_android_selectable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceCategory;->setSelectable(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p0, Lzui/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lzui/preference/PreferenceCategory;)V
    .locals 0

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->notifyChanged()V

    return-void
.end method

.method private b(Landroid/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    instance-of p0, p1, Lzui/preference/Preference;

    if-eqz p0, :cond_0

    check-cast p1, Lzui/preference/Preference;

    invoke-virtual {p1, p2}, Lzui/preference/Preference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lzui/preference/PreferenceWithArrow;

    if-eqz p0, :cond_1

    check-cast p1, Lzui/preference/PreferenceWithArrow;

    invoke-virtual {p1, p2}, Lzui/preference/PreferenceWithArrow;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lzui/preference/SwitchPreference;

    if-eqz p0, :cond_2

    check-cast p1, Lzui/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Lzui/preference/SwitchPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lzui/preference/SwitchPreferenceX;

    if-eqz p0, :cond_3

    check-cast p1, Lzui/preference/SwitchPreferenceX;

    invoke-virtual {p1, p2}, Lzui/preference/SwitchPreferenceX;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    instance-of p0, p1, Lzui/preference/CheckBoxPreference;

    if-eqz p0, :cond_4

    check-cast p1, Lzui/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Lzui/preference/CheckBoxPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    instance-of p0, p1, Lzui/preference/RadioButtonPreference;

    if-eqz p0, :cond_5

    check-cast p1, Lzui/preference/RadioButtonPreference;

    invoke-virtual {p1, p2}, Lzui/preference/RadioButtonPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    instance-of p0, p1, Lzui/preference/InLineEditTextPreference;

    if-eqz p0, :cond_6

    check-cast p1, Lzui/preference/InLineEditTextPreference;

    invoke-virtual {p1, p2}, Lzui/preference/InLineEditTextPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    instance-of p0, p1, Lzui/preference/DialogPreference;

    if-eqz p0, :cond_7

    check-cast p1, Lzui/preference/DialogPreference;

    invoke-virtual {p1, p2}, Lzui/preference/DialogPreference;->setBackGround(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 0

    iget p0, p0, Lzui/preference/PreferenceCategory;->b:I

    return p0
.end method

.method public isCardStyle()Z
    .locals 0

    iget-boolean p0, p0, Lzui/preference/PreferenceCategory;->d:Z

    return p0
.end method

.method protected onAttachedToActivity()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceCategory;->onAttachedToActivity()V

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    iget-boolean v1, p0, Lzui/preference/PreferenceCategory;->d:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lzui/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget v2, Lzui/platform/R$drawable;->preference_item_card_whole_bg:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lzui/preference/PreferenceCategory;->b(Landroid/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    iget-object v2, p0, Lzui/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget v3, Lzui/platform/R$drawable;->preference_item_card_top_bg:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lzui/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget v3, Lzui/platform/R$drawable;->preference_item_card_bottom_bg:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lzui/preference/PreferenceCategory;->a:Landroid/content/Context;

    sget v3, Lzui/platform/R$drawable;->preference_item_card_middle_bg:I

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lzui/preference/PreferenceCategory;->b(Landroid/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lzui/platform/R$id;->divider:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz v2, :cond_5

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-eqz v2, :cond_5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    iget-boolean v0, p0, Lzui/preference/PreferenceCategory;->d:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lzui/preference/PreferenceCategory;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lzui/platform/R$dimen;->preference_card_top_padding:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lzui/preference/PreferenceCategory;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lzui/preference/PreferenceCategory;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/PreferenceCategory;->c:Landroid/view/View;

    iget-object v0, p0, Lzui/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    iget-object p0, p0, Lzui/preference/PreferenceCategory;->c:Landroid/view/View;

    return-object p0
.end method

.method public setActivated(Z)V
    .locals 2

    iget-object v0, p0, Lzui/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    iget-object p0, p0, Lzui/preference/PreferenceCategory;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    iput p1, p0, Lzui/preference/PreferenceCategory;->b:I

    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 0

    iget-object p0, p0, Lzui/preference/PreferenceCategory;->e:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
