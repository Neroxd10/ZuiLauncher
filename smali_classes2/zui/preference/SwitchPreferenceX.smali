.class public Lzui/preference/SwitchPreferenceX;
.super Landroid/preference/SwitchPreference;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Switch;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lzui/util/PreferenceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lzui/preference/SwitchPreferenceX;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/preference/SwitchPreferenceX;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/SwitchPreferenceX$a;

    invoke-direct {v1, p0}, Lzui/preference/SwitchPreferenceX$a;-><init>(Lzui/preference/SwitchPreferenceX;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lzui/preference/SwitchPreferenceX;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/SwitchPreferenceX$a;

    invoke-direct {v1, p0}, Lzui/preference/SwitchPreferenceX$a;-><init>(Lzui/preference/SwitchPreferenceX;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/preference/SwitchPreferenceX;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/SwitchPreferenceX$a;

    invoke-direct {v1, p0}, Lzui/preference/SwitchPreferenceX$a;-><init>(Lzui/preference/SwitchPreferenceX;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/SwitchPreferenceX;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/SwitchPreferenceX$a;

    invoke-direct {v1, p0}, Lzui/preference/SwitchPreferenceX$a;-><init>(Lzui/preference/SwitchPreferenceX;)V

    invoke-direct {v0, v1}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v0, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/preference/SwitchPreferenceX;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lzui/preference/SwitchPreferenceX;)V
    .locals 0

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    iget-object v0, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget p2, Lzui/platform/R$drawable;->button_focus_not_press_background_zui:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/SwitchPreferenceX;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private c(Z)V
    .locals 4

    iget-object v0, p0, Lzui/preference/SwitchPreferenceX;->d:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzui/preference/SwitchPreferenceX;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x101009d

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object v0, p0, Lzui/preference/SwitchPreferenceX;->d:Landroid/widget/Switch;

    iget-object v1, p0, Lzui/preference/SwitchPreferenceX;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lzui/preference/SwitchPreferenceX;->d:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->invalidate()V

    iput-boolean p1, p0, Lzui/preference/SwitchPreferenceX;->f:Z

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x101009d
        0x101009c
        0x101009e
        0x101031b
    .end array-data
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const-string v0, "switch_widget"

    invoke-static {v0}, Lzui/util/CommonUtils;->getAndroidInternalResId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lzui/preference/SwitchPreferenceX;->d:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v0, p0, Lzui/preference/SwitchPreferenceX;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzui/preference/SwitchPreferenceX;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p0, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1}, Lzui/util/PreferenceBase;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-boolean v0, p0, Lzui/preference/SwitchPreferenceX;->b:Z

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lzui/preference/SwitchPreferenceX;->b:Z

    invoke-virtual {p0, p2}, Landroid/preference/SwitchPreference;->persistBoolean(Z)Z

    :cond_1
    iget-object p0, p0, Lzui/preference/SwitchPreferenceX;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    sget-object p0, Lzui/preference/SwitchPreferenceX;->i:Ljava/lang/String;

    const-string v0, "onClick is called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/SwitchPreferenceX;->c:Landroid/view/View;

    const-string v0, "switch_widget"

    invoke-static {v0}, Lzui/util/CommonUtils;->getAndroidInternalResId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lzui/preference/SwitchPreferenceX;->d:Landroid/widget/Switch;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lzui/preference/SwitchPreferenceX;->b:Z

    iget-object v0, p0, Lzui/preference/SwitchPreferenceX;->d:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iget-object p1, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/preference/SwitchPreferenceX;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->onCreateView(Landroid/view/View;)V

    iget-object p1, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    iget-object v0, p0, Lzui/preference/SwitchPreferenceX;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    iget-object p0, p0, Lzui/preference/SwitchPreferenceX;->c:Landroid/view/View;

    return-object p0
.end method

.method public onKey(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lzui/preference/SwitchPreferenceX;->c(Z)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lzui/preference/SwitchPreferenceX;->c(Z)V

    goto :goto_0

    :cond_0
    :pswitch_2
    iget-boolean p1, p0, Lzui/preference/SwitchPreferenceX;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lzui/preference/SwitchPreferenceX;->d:Landroid/widget/Switch;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lzui/preference/SwitchPreferenceX;->b:Z

    xor-int/2addr p0, v1

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setActivated(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    iget-object p0, p0, Lzui/preference/SwitchPreferenceX;->c:Landroid/view/View;

    invoke-virtual {v1, p0, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/SwitchPreferenceX;->g:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lzui/preference/SwitchPreferenceX;->c:Landroid/view/View;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 0

    iget-object p0, p0, Lzui/preference/SwitchPreferenceX;->h:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2}, Lzui/util/PreferenceBase;->setPreferencePadding(II)V

    return-void
.end method

.method public setSwitchListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/SwitchPreferenceX;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method
