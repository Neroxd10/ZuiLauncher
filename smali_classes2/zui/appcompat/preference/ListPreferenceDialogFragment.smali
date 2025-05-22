.class public Lzui/appcompat/preference/ListPreferenceDialogFragment;
.super Lzui/appcompat/preference/PreferenceDialogFragment;
.source ""


# instance fields
.field private j:I

.field private k:[Ljava/lang/CharSequence;

.field private l:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic b(Lzui/appcompat/preference/ListPreferenceDialogFragment;I)I
    .locals 0

    iput p1, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->j:I

    return p1
.end method

.method private c()Landroidx/preference/ListPreference;
    .locals 0

    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/ListPreference;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lzui/appcompat/preference/ListPreferenceDialogFragment;
    .locals 3

    new-instance v0, Lzui/appcompat/preference/ListPreferenceDialogFragment;

    invoke-direct {v0}, Lzui/appcompat/preference/ListPreferenceDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzui/appcompat/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lzui/appcompat/preference/ListPreferenceDialogFragment;->c()Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->j:I

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->j:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1

    invoke-direct {p0}, Lzui/appcompat/preference/ListPreferenceDialogFragment;->c()Landroidx/preference/ListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->j:I

    if-ltz p1, :cond_0

    iget-object p0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
    .locals 3

    invoke-super {p0, p1}, Lzui/appcompat/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V

    iget-object v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    iget v1, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->j:I

    new-instance v2, Lzui/appcompat/preference/ListPreferenceDialogFragment$a;

    invoke-direct {v2, p0}, Lzui/appcompat/preference/ListPreferenceDialogFragment$a;-><init>(Lzui/appcompat/preference/ListPreferenceDialogFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lzui/appcompat/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->j:I

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->k:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
