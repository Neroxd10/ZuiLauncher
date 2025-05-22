.class public final synthetic Lcom/zui/launcher/model/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ItemInstallQueue;

.field public final synthetic b:Lcom/zui/launcher/model/ItemInstallQueue$a;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ItemInstallQueue;Lcom/zui/launcher/model/ItemInstallQueue$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/y;->a:Lcom/zui/launcher/model/ItemInstallQueue;

    iput-object p2, p0, Lcom/zui/launcher/model/y;->b:Lcom/zui/launcher/model/ItemInstallQueue$a;

    iput-object p3, p0, Lcom/zui/launcher/model/y;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/model/y;->a:Lcom/zui/launcher/model/ItemInstallQueue;

    iget-object v1, p0, Lcom/zui/launcher/model/y;->b:Lcom/zui/launcher/model/ItemInstallQueue$a;

    iget-object p0, p0, Lcom/zui/launcher/model/y;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/model/ItemInstallQueue;->n(Lcom/zui/launcher/model/ItemInstallQueue$a;Ljava/lang/Exception;)V

    return-void
.end method
