.class public final synthetic Lcom/zui/quickstep/b2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;


# direct methods
.method public synthetic constructor <init>([Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/b2;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/b2;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0}, Lcom/zui/quickstep/TaskViewUtils;->b([Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method
