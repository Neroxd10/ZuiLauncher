.class public final synthetic Lcom/zui/quickstep/j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/RecentTasksList;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/RecentTasksList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/j0;->a:Lcom/zui/quickstep/RecentTasksList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/j0;->a:Lcom/zui/quickstep/RecentTasksList;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentTasksList;->i()V

    return-void
.end method
