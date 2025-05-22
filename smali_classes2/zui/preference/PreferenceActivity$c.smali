.class Lzui/preference/PreferenceActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lzui/preference/PreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/PreferenceActivity$c;->a:Lzui/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lzui/preference/PreferenceActivity$c;->a:Lzui/preference/PreferenceActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->setResult(I)V

    iget-object p0, p0, Lzui/preference/PreferenceActivity$c;->a:Lzui/preference/PreferenceActivity;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void
.end method
