.class final Lzui/appcompat/preference/PreferenceFragmentCompat$b;
.super Landroid/util/IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lzui/appcompat/preference/PreferenceFragmentCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lzui/appcompat/preference/PreferenceFragmentCompat;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lzui/appcompat/preference/PreferenceFragmentCompat;->k(Lzui/appcompat/preference/PreferenceFragmentCompat;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Lzui/appcompat/preference/PreferenceFragmentCompat;I)V
    .locals 0

    invoke-static {p1}, Lzui/appcompat/preference/PreferenceFragmentCompat;->k(Lzui/appcompat/preference/PreferenceFragmentCompat;)I

    move-result p0

    sub-int p0, p2, p0

    invoke-static {p1, p2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->l(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    invoke-static {p1, p2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->m(Lzui/appcompat/preference/PreferenceFragmentCompat;I)I

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lzui/appcompat/preference/PreferenceFragmentCompat;->j(Lzui/appcompat/preference/PreferenceFragmentCompat;IZ)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-virtual {p0, p1}, Lzui/appcompat/preference/PreferenceFragmentCompat$b;->a(Lzui/appcompat/preference/PreferenceFragmentCompat;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lzui/appcompat/preference/PreferenceFragmentCompat;

    invoke-virtual {p0, p1, p2}, Lzui/appcompat/preference/PreferenceFragmentCompat$b;->b(Lzui/appcompat/preference/PreferenceFragmentCompat;I)V

    return-void
.end method
