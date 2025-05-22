.class public Lzui/preference/PreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/preference/PreferenceActivity$d;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/Button;

.field private d:Lzui/preference/PreferenceActivity$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    iget-boolean v0, p0, Lzui/preference/PreferenceActivity;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/preference/PreferenceActivity;->c:Landroid/widget/Button;

    return-object p0

    :cond_0
    iget-object p0, p0, Lzui/preference/PreferenceActivity;->d:Lzui/preference/PreferenceActivity$d;

    invoke-virtual {p0}, Lzui/preference/PreferenceActivity$d;->b()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method protected hasNextButton()Z
    .locals 1

    iget-boolean v0, p0, Lzui/preference/PreferenceActivity;->a:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lzui/preference/PreferenceActivity;->c:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    iget-object p0, p0, Lzui/preference/PreferenceActivity;->d:Lzui/preference/PreferenceActivity$d;

    invoke-virtual {p0}, Lzui/preference/PreferenceActivity$d;->c()Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lzui/preference/PreferenceActivity$d;

    invoke-direct {p1}, Lzui/preference/PreferenceActivity$d;-><init>()V

    iput-object p1, p0, Lzui/preference/PreferenceActivity;->d:Lzui/preference/PreferenceActivity$d;

    invoke-virtual {p1, p0}, Lzui/preference/PreferenceActivity$d;->setRealObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":android:show_fragment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lzui/preference/PreferenceActivity;->d:Lzui/preference/PreferenceActivity$d;

    invoke-virtual {v0}, Lzui/preference/PreferenceActivity$d;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    sget p1, Lzui/platform/R$layout;->preference_list_content_single_zui:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    sget p1, Lzui/platform/R$id;->list_footer:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lzui/preference/PreferenceActivity;->b:Landroid/widget/FrameLayout;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzui/preference/PreferenceActivity;->a:Z

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_prefs_show_button_bar"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lzui/platform/R$id;->button_bar:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lzui/platform/R$id;->back_button:I

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "back_button_label"

    invoke-static {v2}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lzui/preference/PreferenceActivity$a;

    invoke-direct {v2, p0}, Lzui/preference/PreferenceActivity$a;-><init>(Lzui/preference/PreferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lzui/platform/R$id;->skip_button:I

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const-string v3, "skip_button_label"

    invoke-static {v3}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lzui/preference/PreferenceActivity$b;

    invoke-direct {v3, p0}, Lzui/preference/PreferenceActivity$b;-><init>(Lzui/preference/PreferenceActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lzui/platform/R$id;->next_button:I

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lzui/preference/PreferenceActivity;->c:Landroid/widget/Button;

    const-string v4, "next_button_label"

    invoke-static {v4}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lzui/preference/PreferenceActivity;->c:Landroid/widget/Button;

    new-instance v4, Lzui/preference/PreferenceActivity$c;

    invoke-direct {v4, p0}, Lzui/preference/PreferenceActivity$c;-><init>(Lzui/preference/PreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "extra_prefs_set_next_text"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object p0, p0, Lzui/preference/PreferenceActivity;->c:Landroid/widget/Button;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const-string p0, "extra_prefs_set_back_text"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    const-string p0, "extra_prefs_show_skip"

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object p0, p0, Lzui/preference/PreferenceActivity;->d:Lzui/preference/PreferenceActivity$d;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzui/preference/PreferenceActivity$d;->setRealObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lzui/preference/PreferenceActivity;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/preference/PreferenceActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p0, Lzui/preference/PreferenceActivity;->b:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setListFooter(Landroid/view/View;)V

    :goto_0
    return-void
.end method
