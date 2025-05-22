.class public Lzui/appcompat/preference/EditTextPreferenceDialogFragment;
.super Lzui/appcompat/preference/PreferenceDialogFragment;
.source ""


# instance fields
.field private j:Ljava/lang/CharSequence;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private b()Landroidx/preference/EditTextPreference;
    .locals 0

    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/EditTextPreference;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lzui/appcompat/preference/EditTextPreferenceDialogFragment;
    .locals 3

    new-instance v0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;

    invoke-direct {v0}, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->k:Landroid/widget/EditText;

    return-object p0
.end method

.method protected needInputMethod()Z
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lzui/appcompat/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->b()Landroidx/preference/EditTextPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->j:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lzui/platform/R$layout;->message_dialog_editor:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->l:Landroid/view/View;

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->k:Landroid/widget/EditText;

    return-void
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    iget-object p1, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->j:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->l:Landroid/view/View;

    const v0, 0x1020005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->l:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lzui/appcompat/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_1

    iget-object v1, p0, Lzui/appcompat/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->l:Landroid/view/View;

    return-object p0
.end method

.method public onDialogClosed(Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->k:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->b()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->b()Landroidx/preference/EditTextPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
    .locals 0

    invoke-super {p0, p1}, Lzui/appcompat/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lzui/app/MessageDialog$Builder;->setDialogCenter(Z)Lzui/app/MessageDialog$Builder;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lzui/appcompat/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->j:Ljava/lang/CharSequence;

    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
