.class public final synthetic Lcom/zui/launcher/globalsearch/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

.field public final synthetic b:I

.field public final synthetic c:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;ILcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/p;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    iput p2, p0, Lcom/zui/launcher/globalsearch/p;->b:I

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/p;->c:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/p;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    iget v1, p0, Lcom/zui/launcher/globalsearch/p;->b:I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/p;->c:Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->a(ILcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter$a;Landroid/view/View;)V

    return-void
.end method
