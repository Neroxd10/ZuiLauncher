.class Lcom/zui/launcher/settings/DeskStylePreference$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/DeskStylePreference;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/settings/DeskStylePreference;


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/DeskStylePreference;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/DeskStylePreference$c;->b:Lcom/zui/launcher/settings/DeskStylePreference;

    iput-object p2, p0, Lcom/zui/launcher/settings/DeskStylePreference$c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/zui/launcher/settings/DeskStylePreference$c;->b:Lcom/zui/launcher/settings/DeskStylePreference;

    iget-object p0, p0, Lcom/zui/launcher/settings/DeskStylePreference$c;->a:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/zui/launcher/settings/DeskStylePreference;->c(Lcom/zui/launcher/settings/DeskStylePreference;Landroid/view/View;)V

    return-void
.end method
