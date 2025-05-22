.class Lcom/zui/launcher/settings/ZuiGridOptionPreference$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/settings/ZuiGridOptionPreference;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/settings/ZuiGridOptionPreference;


# direct methods
.method constructor <init>(Lcom/zui/launcher/settings/ZuiGridOptionPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference$c;->a:Lcom/zui/launcher/settings/ZuiGridOptionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/ZuiGridOptionPreference$c;->a:Lcom/zui/launcher/settings/ZuiGridOptionPreference;

    invoke-static {p0}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->c(Lcom/zui/launcher/settings/ZuiGridOptionPreference;)Lcom/zui/launcher/Utilities$GridSummary;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/zui/launcher/settings/ZuiGridOptionPreference;->g(Lcom/zui/launcher/settings/ZuiGridOptionPreference;Lcom/zui/launcher/Utilities$GridSummary;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
