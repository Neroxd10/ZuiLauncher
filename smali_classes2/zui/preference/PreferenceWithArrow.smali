.class public Lzui/preference/PreferenceWithArrow;
.super Lzui/preference/Preference;
.source ""


# static fields
.field public static LOCATION_BOTTOM:I = 0x1

.field public static LOCATION_RIGHT:I

.field private static j:I

.field private static k:I


# instance fields
.field private d:I

.field private e:Landroid/widget/LinearLayout;

.field private f:I

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lzui/util/PreferenceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lzui/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceWithArrow$a;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceWithArrow$a;-><init>(Lzui/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceWithArrow;->i:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lzui/preference/PreferenceWithArrow;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lzui/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceWithArrow$a;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceWithArrow$a;-><init>(Lzui/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceWithArrow;->i:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/preference/PreferenceWithArrow;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lzui/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceWithArrow$a;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceWithArrow$a;-><init>(Lzui/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceWithArrow;->i:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/PreferenceWithArrow;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/PreferenceWithArrow$a;

    invoke-direct {v1, p0}, Lzui/preference/PreferenceWithArrow$a;-><init>(Lzui/preference/PreferenceWithArrow;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/PreferenceWithArrow;->i:Lzui/util/PreferenceBase;

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/PreferenceWithArrow;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic b(Lzui/preference/PreferenceWithArrow;)V
    .locals 0

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1}, Lzui/preference/PreferenceWithArrow;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/preference/PreferenceWithArrow;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth_with_icon_horizontal:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/preference/PreferenceWithArrow;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->preference_title_maxWidth_with_icon:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzui/preference/PreferenceWithArrow;->k:I

    iget-object p0, p0, Lzui/preference/PreferenceWithArrow;->i:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private d(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getSummaryLocation()I
    .locals 0

    iget p0, p0, Lzui/preference/PreferenceWithArrow;->d:I

    return p0
.end method

.method public getWidgetVisibility()I
    .locals 0

    iget p0, p0, Lzui/preference/PreferenceWithArrow;->f:I

    return p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lzui/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lzui/preference/PreferenceWithArrow;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lzui/preference/PreferenceWithArrow;->k:I

    goto :goto_0

    :cond_0
    sget p1, Lzui/preference/PreferenceWithArrow;->j:I

    :goto_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    iget-object p1, p0, Lzui/preference/PreferenceWithArrow;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lzui/preference/PreferenceWithArrow;->g:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget v0, p0, Lzui/preference/PreferenceWithArrow;->d:I

    sget v1, Lzui/preference/PreferenceWithArrow;->LOCATION_RIGHT:I

    if-ne v0, v1, :cond_0

    sget v0, Lzui/platform/R$layout;->zui_preference_label:I

    goto :goto_0

    :cond_0
    sget v0, Lzui/platform/R$layout;->preference_zui:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    sget v0, Lzui/platform/R$layout;->preference_widget_forward:I

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    invoke-super {p0, p1}, Lzui/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/PreferenceWithArrow;->g:Landroid/view/View;

    iget-object v0, p0, Lzui/preference/PreferenceWithArrow;->i:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    iget-object p0, p0, Lzui/preference/PreferenceWithArrow;->g:Landroid/view/View;

    return-object p0
.end method

.method public setActivated(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzui/preference/PreferenceWithArrow;->i:Lzui/util/PreferenceBase;

    iget-object p0, p0, Lzui/preference/PreferenceWithArrow;->g:Landroid/view/View;

    invoke-virtual {v1, p0, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/PreferenceWithArrow;->h:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lzui/preference/PreferenceWithArrow;->g:Landroid/view/View;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 0

    iget-object p0, p0, Lzui/preference/PreferenceWithArrow;->i:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method

.method public setSummaryLocation(I)V
    .locals 0

    iput p1, p0, Lzui/preference/PreferenceWithArrow;->d:I

    return-void
.end method

.method public setWidgetVisibility(I)V
    .locals 0

    iput p1, p0, Lzui/preference/PreferenceWithArrow;->f:I

    iget-object p0, p0, Lzui/preference/PreferenceWithArrow;->e:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
