.class public Lzui/appcompat/app/AppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Z

.field private c:Lzui/appcompat/widget/ZuiAppcompatToolbar;

.field private d:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lzui/widget/ListViewX;

    if-nez v1, :cond_1

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->d:Landroid/widget/ListView;

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    iget-object p0, p0, Lzui/appcompat/app/AppCompatActivity;->d:Landroid/widget/ListView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lzui/preference/SwitchPreferenceX;

    if-eqz v1, :cond_0

    check-cast p0, Lzui/preference/SwitchPreferenceX;

    invoke-virtual {p0, p1}, Lzui/preference/SwitchPreferenceX;->onKey(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lzui/preference/InLineEditTextPreference;

    if-eqz v1, :cond_1

    check-cast p0, Lzui/preference/InLineEditTextPreference;

    invoke-virtual {p0, p1}, Lzui/preference/InLineEditTextPreference;->onKey(Landroid/view/KeyEvent;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public getZuiToolbar()Lzui/appcompat/widget/ZuiAppcompatToolbar;
    .locals 0

    iget-object p0, p0, Lzui/appcompat/app/AppCompatActivity;->c:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lzui/appcompat/app/AppCompatActivity;->b:Z

    if-eqz v0, :cond_1

    sget v0, Lzui/platform/R$style;->Theme_AppCompat_Zui_NoActionBar_Horizontal:I

    goto :goto_1

    :cond_1
    sget v0, Lzui/platform/R$style;->Theme_AppCompat_Zui_NoActionBar:I

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_2

    sget p1, Lzui/platform/R$layout;->appcompat_activity_zui:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lzui/appcompat/app/AppCompatActivity;->a:Landroid/widget/FrameLayout;

    sget p1, Lzui/platform/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzui/appcompat/widget/ZuiAppcompatToolbar;

    iput-object p1, p0, Lzui/appcompat/app/AppCompatActivity;->c:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_2
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lzui/appcompat/app/AppCompatActivity;->a()V

    return-object p1
.end method

.method protected onResume()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lzui/appcompat/app/AppCompatActivity;->b:Z

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public setActionBarHorizontalPaddings(II)V
    .locals 2

    iget-boolean v0, p0, Lzui/appcompat/app/AppCompatActivity;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->c:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    if-eqz v0, :cond_3

    if-gtz p1, :cond_0

    if-lez p2, :cond_3

    :cond_0
    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->c:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p1

    :goto_0
    iget-object v1, p0, Lzui/appcompat/app/AppCompatActivity;->c:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lzui/appcompat/app/AppCompatActivity;->c:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p2

    :goto_1
    iget-object p0, p0, Lzui/appcompat/app/AppCompatActivity;->c:Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p1, v1, p2, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p0, p0, Lzui/appcompat/app/AppCompatActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p0, Lzui/appcompat/app/AppCompatActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/app/AppCompatActivity;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p0, Lzui/appcompat/app/AppCompatActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
