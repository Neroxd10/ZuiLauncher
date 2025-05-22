.class Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object p1, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    if-eqz p3, :cond_0

    invoke-static {p1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->b(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Z

    move-result p3

    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->e(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {p0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->d(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->b(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Z

    move-result p3

    iget-object v0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->e(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment$a;->a:Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {p0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->d(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    or-int/2addr p0, p3

    invoke-static {p1, p0}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->c(Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;Z)Z

    return-void
.end method
