.class Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat$a;->a:Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat$a;->a:Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;

    invoke-static {v0, p2}, Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;->a(Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;I)I

    iget-object p0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat$a;->a:Lzui/appcompat/preference/ListPreferenceDialogFragmentCompat;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lzui/appcompat/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
