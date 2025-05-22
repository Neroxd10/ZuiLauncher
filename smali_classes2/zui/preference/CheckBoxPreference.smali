.class public Lzui/preference/CheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source ""


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lzui/util/PreferenceBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/CheckBoxPreference$a;

    invoke-direct {v1, p0}, Lzui/preference/CheckBoxPreference$a;-><init>(Lzui/preference/CheckBoxPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/CheckBoxPreference;->c:Lzui/util/PreferenceBase;

    const/4 p0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1, v1}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/CheckBoxPreference$a;

    invoke-direct {v1, p0}, Lzui/preference/CheckBoxPreference$a;-><init>(Lzui/preference/CheckBoxPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/CheckBoxPreference;->c:Lzui/util/PreferenceBase;

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p2, p0, p0}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/CheckBoxPreference$a;

    invoke-direct {v1, p0}, Lzui/preference/CheckBoxPreference$a;-><init>(Lzui/preference/CheckBoxPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/CheckBoxPreference;->c:Lzui/util/PreferenceBase;

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p2, p3, p0}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/CheckBoxPreference$a;

    invoke-direct {v1, p0}, Lzui/preference/CheckBoxPreference$a;-><init>(Lzui/preference/CheckBoxPreference;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/CheckBoxPreference;->c:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lzui/preference/CheckBoxPreference;)V
    .locals 0

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lzui/preference/CheckBoxPreference;->c:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->onBindView(Landroid/view/View;)V

    iget-object p1, p0, Lzui/preference/CheckBoxPreference;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lzui/preference/CheckBoxPreference;->a:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/CheckBoxPreference;->a:Landroid/view/View;

    iget-object v0, p0, Lzui/preference/CheckBoxPreference;->c:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->onCreateView(Landroid/view/View;)V

    iget-object p1, p0, Lzui/preference/CheckBoxPreference;->c:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/preference/CheckBoxPreference;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    iget-object p0, p0, Lzui/preference/CheckBoxPreference;->a:Landroid/view/View;

    return-object p0
.end method

.method public setActivated(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzui/preference/CheckBoxPreference;->c:Lzui/util/PreferenceBase;

    iget-object p0, p0, Lzui/preference/CheckBoxPreference;->a:Landroid/view/View;

    invoke-virtual {v1, p0, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/CheckBoxPreference;->b:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lzui/preference/CheckBoxPreference;->a:Landroid/view/View;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 0

    iget-object p0, p0, Lzui/preference/CheckBoxPreference;->c:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method
