.class public final synthetic Lcom/zui/quickstep/l0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentTasksList;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentTasksList;IZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/l0;->a:Lcom/zui/quickstep/RecentTasksList;

    iput p2, p0, Lcom/zui/quickstep/l0;->b:I

    iput-boolean p3, p0, Lcom/zui/quickstep/l0;->c:Z

    iput-object p4, p0, Lcom/zui/quickstep/l0;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/l0;->a:Lcom/zui/quickstep/RecentTasksList;

    iget v1, p0, Lcom/zui/quickstep/l0;->b:I

    iget-boolean v2, p0, Lcom/zui/quickstep/l0;->c:Z

    iget-object p0, p0, Lcom/zui/quickstep/l0;->d:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/quickstep/RecentTasksList;->h(IZLjava/util/function/Consumer;)V

    return-void
.end method
