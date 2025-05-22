.class public final synthetic Lcom/zui/quickstep/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/OverviewCommandHelper;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/a0;->a:Lcom/zui/quickstep/OverviewCommandHelper;

    iput p2, p0, Lcom/zui/quickstep/a0;->b:I

    iput p3, p0, Lcom/zui/quickstep/a0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/a0;->a:Lcom/zui/quickstep/OverviewCommandHelper;

    iget v1, p0, Lcom/zui/quickstep/a0;->b:I

    iget p0, p0, Lcom/zui/quickstep/a0;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/zui/quickstep/OverviewCommandHelper;->j(II)V

    return-void
.end method
