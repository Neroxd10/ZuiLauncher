.class public final synthetic Lcom/zui/launcher/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/y;->a:Lcom/zui/launcher/GlobalSearchView;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/y;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/GlobalSearchView;->x0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
