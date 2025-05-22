.class Lzui/preference/InLineEditTextPreference$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/InLineEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/preference/InLineEditTextPreference;


# direct methods
.method constructor <init>(Lzui/preference/InLineEditTextPreference;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/InLineEditTextPreference$b;->a:Lzui/preference/InLineEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference$b;->a:Lzui/preference/InLineEditTextPreference;

    invoke-static {p0}, Lzui/preference/InLineEditTextPreference;->c(Lzui/preference/InLineEditTextPreference;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lzui/preference/InLineEditTextPreference;->b(Lzui/preference/InLineEditTextPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method
