.class public final synthetic Lcom/zui/launcher/pageindicators/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/a;->a:Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/a;->a:Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;

    invoke-virtual {p0}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->j()V

    return-void
.end method
