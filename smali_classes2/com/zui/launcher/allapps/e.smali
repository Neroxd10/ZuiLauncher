.class public final synthetic Lcom/zui/launcher/allapps/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/AllAppsContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/AllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/e;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/e;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->q(Landroid/os/Bundle;)V

    return-void
.end method
