.class public Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;
.super Lzui/appcompat/preference/PreferenceDialogFragment;
.source ""


# instance fields
.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:[Ljava/lang/CharSequence;

.field private m:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceDialogFragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->j:Ljava/util/Set;

    return-void
.end method

.method static synthetic b(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->k:Z

    return p0
.end method

.method static synthetic c(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->k:Z

    return p1
.end method

.method static synthetic d(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->m:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic e(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->j:Ljava/util/Set;

    return-object p0
.end method

.method private f()Landroidx/preference/internal/AbstractMultiSelectListPreference;
    .locals 0

    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/internal/AbstractMultiSelectListPreference;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;
    .locals 3

    new-instance v0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {v0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;-><init>()V

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
    .locals 3

    invoke-super {p0, p1}, Lzui/appcompat/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->f()Landroidx/preference/internal/AbstractMultiSelectListPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->j:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iput-boolean v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->k:Z

    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->m:[Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->j:Ljava/util/Set;

    const-string v2, "MultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "MultiSelectListPreferenceDialogFragment.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->k:Z

    const-string v0, "MultiSelectListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->m:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 2

    invoke-direct {p0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->f()Landroidx/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->j:Ljava/util/Set;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->k:Z

    return-void
.end method

.method protected onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
    .locals 5

    invoke-super {p0, p1}, Lzui/appcompat/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V

    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->m:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->j:Ljava/util/Set;

    iget-object v4, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->m:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    new-instance v2, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$a;

    invoke-direct {v2, p0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$a;-><init>(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lzui/app/MessageDialog$Builder;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lzui/appcompat/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->j:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "MultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->k:Z

    const-string v1, "MultiSelectListPreferenceDialogFragment.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->m:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
