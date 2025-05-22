.class public final synthetic Lcom/zui/launcher/g2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/g2;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/zui/launcher/g2;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/zui/launcher/g2;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/g2;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    iget-object v1, p0, Lcom/zui/launcher/g2;->b:Ljava/util/List;

    iget-boolean p0, p0, Lcom/zui/launcher/g2;->c:Z

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->v(Ljava/util/List;Z)V

    return-void
.end method
