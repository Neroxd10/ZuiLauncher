.class public final synthetic Lcom/zui/launcher/pm/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/SafeCloseable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/pm/UserCache;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/pm/UserCache;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/pm/d;->a:Lcom/zui/launcher/pm/UserCache;

    iput-object p2, p0, Lcom/zui/launcher/pm/d;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/pm/d;->a:Lcom/zui/launcher/pm/UserCache;

    iget-object p0, p0, Lcom/zui/launcher/pm/d;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/pm/UserCache;->d(Ljava/lang/Runnable;)V

    return-void
.end method
