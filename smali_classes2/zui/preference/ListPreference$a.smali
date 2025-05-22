.class Lzui/preference/ListPreference$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/preference/ListPreference;->onPrepareDialogBuilder(Lzui/app/MessageDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/preference/ListPreference;


# direct methods
.method constructor <init>(Lzui/preference/ListPreference;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/ListPreference$a;->a:Lzui/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lzui/preference/ListPreference$a;->a:Lzui/preference/ListPreference;

    invoke-static {v0, p2}, Lzui/preference/ListPreference;->f(Lzui/preference/ListPreference;I)I

    iget-object p0, p0, Lzui/preference/ListPreference$a;->a:Lzui/preference/ListPreference;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lzui/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
