.class public final synthetic Lcom/zui/quickstep/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/OverviewCommandHelper;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/z;->a:Lcom/zui/quickstep/OverviewCommandHelper;

    iput-boolean p2, p0, Lcom/zui/quickstep/z;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/z;->a:Lcom/zui/quickstep/OverviewCommandHelper;

    iget-boolean p0, p0, Lcom/zui/quickstep/z;->b:Z

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/OverviewCommandHelper;->h(Z)V

    return-void
.end method
