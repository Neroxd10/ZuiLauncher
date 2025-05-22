.class public final synthetic Lcom/zui/launcher/allapps/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/BaseActivity$MultiWindowModeChangedListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/TaskIconRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/TaskIconRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/s;->a:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    return-void
.end method


# virtual methods
.method public final onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/s;->a:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->a(Z)V

    return-void
.end method
