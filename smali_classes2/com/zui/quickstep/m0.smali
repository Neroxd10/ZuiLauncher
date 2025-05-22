.class public final synthetic Lcom/zui/quickstep/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentTasksList;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentTasksList;ILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/m0;->a:Lcom/zui/quickstep/RecentTasksList;

    iput p2, p0, Lcom/zui/quickstep/m0;->b:I

    iput-object p3, p0, Lcom/zui/quickstep/m0;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/m0;->a:Lcom/zui/quickstep/RecentTasksList;

    iget v1, p0, Lcom/zui/quickstep/m0;->b:I

    iget-object p0, p0, Lcom/zui/quickstep/m0;->c:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p0}, Lcom/zui/quickstep/RecentTasksList;->e(ILjava/util/function/Consumer;)V

    return-void
.end method
