.class public final synthetic Lcom/zui/quickstep/z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentsModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentsModel;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/z0;->a:Lcom/zui/quickstep/RecentsModel;

    iput-object p2, p0, Lcom/zui/quickstep/z0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/quickstep/z0;->c:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/z0;->a:Lcom/zui/quickstep/RecentsModel;

    iget-object v1, p0, Lcom/zui/quickstep/z0;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/quickstep/z0;->c:Landroid/os/UserHandle;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/quickstep/RecentsModel;->d(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/ArrayList;)V

    return-void
.end method
