.class public final synthetic Lcom/zui/launcher/icons/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/IconCache;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/n;->a:Lcom/zui/launcher/icons/IconCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/n;->a:Lcom/zui/launcher/icons/IconCache;

    invoke-static {p0}, Lcom/zui/launcher/icons/IconCache;->m(Lcom/zui/launcher/icons/IconCache;)V

    return-void
.end method
