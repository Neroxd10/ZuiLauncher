.class Lcom/zui/launcher/allapps/AllTaskIconAdapter$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/AllTaskIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$b;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$b;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    invoke-static {p0, p1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->c(Lcom/zui/launcher/allapps/AllTaskIconAdapter;Ljava/util/ArrayList;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$b;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    iget-object v0, v0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->e:Lcom/zui/quickstep/RecentsModel;

    new-instance v1, Lcom/zui/launcher/allapps/j;

    invoke-direct {v1, p0}, Lcom/zui/launcher/allapps/j;-><init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter$b;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsModel;->getTasksIgnoreLock(Ljava/util/function/Consumer;)I

    return-void
.end method
