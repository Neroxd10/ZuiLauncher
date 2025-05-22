.class Lzui/appcompat/preference/ListPreferenceDialogFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/appcompat/preference/ListPreferenceDialogFragment;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/appcompat/preference/ListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/ListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment$a;->a:Lzui/appcompat/preference/ListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment$a;->a:Lzui/appcompat/preference/ListPreferenceDialogFragment;

    invoke-static {v0, p2}, Lzui/appcompat/preference/ListPreferenceDialogFragment;->b(Lzui/appcompat/preference/ListPreferenceDialogFragment;I)I

    iget-object p0, p0, Lzui/appcompat/preference/ListPreferenceDialogFragment$a;->a:Lzui/appcompat/preference/ListPreferenceDialogFragment;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lzui/appcompat/preference/PreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
