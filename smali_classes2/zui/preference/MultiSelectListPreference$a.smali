.class Lzui/preference/MultiSelectListPreference$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lzui/preference/MultiSelectListPreference;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/MultiSelectListPreference$a;->a:Lzui/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object p1, p0, Lzui/preference/MultiSelectListPreference$a;->a:Lzui/preference/MultiSelectListPreference;

    if-eqz p3, :cond_0

    invoke-static {p1}, Lzui/preference/MultiSelectListPreference;->f(Lzui/preference/MultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Lzui/preference/MultiSelectListPreference$a;->a:Lzui/preference/MultiSelectListPreference;

    invoke-static {v0}, Lzui/preference/MultiSelectListPreference;->i(Lzui/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lzui/preference/MultiSelectListPreference$a;->a:Lzui/preference/MultiSelectListPreference;

    invoke-static {p0}, Lzui/preference/MultiSelectListPreference;->h(Lzui/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lzui/preference/MultiSelectListPreference;->f(Lzui/preference/MultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Lzui/preference/MultiSelectListPreference$a;->a:Lzui/preference/MultiSelectListPreference;

    invoke-static {v0}, Lzui/preference/MultiSelectListPreference;->i(Lzui/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lzui/preference/MultiSelectListPreference$a;->a:Lzui/preference/MultiSelectListPreference;

    invoke-static {p0}, Lzui/preference/MultiSelectListPreference;->h(Lzui/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    or-int/2addr p0, p3

    invoke-static {p1, p0}, Lzui/preference/MultiSelectListPreference;->g(Lzui/preference/MultiSelectListPreference;Z)Z

    return-void
.end method
