.class final Lzui/appcompat/preference/PreferenceFragment$b;
.super Landroid/util/IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lzui/appcompat/preference/PreferenceFragment;",
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
.method public a(Lzui/appcompat/preference/PreferenceFragment;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lzui/appcompat/preference/PreferenceFragment;->k(Lzui/appcompat/preference/PreferenceFragment;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Lzui/appcompat/preference/PreferenceFragment;I)V
    .locals 0

    invoke-static {p1}, Lzui/appcompat/preference/PreferenceFragment;->k(Lzui/appcompat/preference/PreferenceFragment;)I

    move-result p0

    sub-int p0, p2, p0

    invoke-static {p1, p2}, Lzui/appcompat/preference/PreferenceFragment;->l(Lzui/appcompat/preference/PreferenceFragment;I)I

    invoke-static {p1, p2}, Lzui/appcompat/preference/PreferenceFragment;->m(Lzui/appcompat/preference/PreferenceFragment;I)I

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lzui/appcompat/preference/PreferenceFragment;->j(Lzui/appcompat/preference/PreferenceFragment;IZ)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lzui/appcompat/preference/PreferenceFragment;

    invoke-virtual {p0, p1}, Lzui/appcompat/preference/PreferenceFragment$b;->a(Lzui/appcompat/preference/PreferenceFragment;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lzui/appcompat/preference/PreferenceFragment;

    invoke-virtual {p0, p1, p2}, Lzui/appcompat/preference/PreferenceFragment$b;->b(Lzui/appcompat/preference/PreferenceFragment;I)V

    return-void
.end method
