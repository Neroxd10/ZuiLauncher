.class public final synthetic Lcom/zui/launcher/model/d1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/ItemInfo;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/ItemInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/d1;->a:Lcom/zui/launcher/ItemInfo;

    iput-object p2, p0, Lcom/zui/launcher/model/d1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/d1;->a:Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/model/d1;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/zui/launcher/model/ModelWriter;->t(Lcom/zui/launcher/ItemInfo;Landroid/content/Context;)V

    return-void
.end method
