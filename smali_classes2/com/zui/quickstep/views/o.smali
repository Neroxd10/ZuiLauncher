.class public final synthetic Lcom/zui/quickstep/views/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/RecentsView;

.field public final synthetic b:Landroid/content/LocusId;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/RecentsView;Landroid/content/LocusId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/o;->a:Lcom/zui/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/zui/quickstep/views/o;->b:Landroid/content/LocusId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/o;->a:Lcom/zui/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/zui/quickstep/views/o;->b:Landroid/content/LocusId;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/views/RecentsView;->B0(Landroid/content/LocusId;)V

    return-void
.end method
