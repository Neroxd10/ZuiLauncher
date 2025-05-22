.class public final synthetic Lcom/zui/launcher/allapps/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/AllAppsContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/AllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/d;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/d;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->p(Landroid/view/View;)V

    return-void
.end method
