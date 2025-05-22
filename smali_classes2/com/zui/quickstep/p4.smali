.class public final synthetic Lcom/zui/quickstep/p4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/OverviewCommandHelper$c;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/p4;->a:Lcom/zui/quickstep/OverviewCommandHelper$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/p4;->a:Lcom/zui/quickstep/OverviewCommandHelper$c;

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewCommandHelper$c;->e()V

    return-void
.end method
