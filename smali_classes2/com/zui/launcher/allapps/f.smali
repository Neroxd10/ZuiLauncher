.class public final synthetic Lcom/zui/launcher/allapps/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/AllAppsGridAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/f;->a:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/f;->a:Lcom/zui/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsGridAdapter;->c(Landroid/view/View;)V

    return-void
.end method
