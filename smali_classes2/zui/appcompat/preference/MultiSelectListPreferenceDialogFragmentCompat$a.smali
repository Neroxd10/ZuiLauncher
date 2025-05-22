.class Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;

    if-eqz p3, :cond_0

    invoke-static {p1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;->a(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;)Z

    move-result p3

    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;->d(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {p0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;->c(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;->a(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;)Z

    move-result p3

    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;->d(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {p0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;->c(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    or-int/2addr p0, p3

    invoke-static {p1, p0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;->b(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragmentCompat;Z)Z

    return-void
.end method
