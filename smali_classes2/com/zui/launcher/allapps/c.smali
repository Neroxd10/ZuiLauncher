.class public final synthetic Lcom/zui/launcher/allapps/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/AllAppsContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/AllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/c;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    return-void
.end method


# virtual methods
.method public final onAppsUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/c;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-static {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->m(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    return-void
.end method
