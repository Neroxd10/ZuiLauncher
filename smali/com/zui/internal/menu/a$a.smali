.class Lcom/zui/internal/menu/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/menu/a;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/internal/menu/a;


# direct methods
.method constructor <init>(Lcom/zui/internal/menu/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/menu/a$a;->a:Lcom/zui/internal/menu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p1, p0, Lcom/zui/internal/menu/a$a;->a:Lcom/zui/internal/menu/a;

    invoke-static {p1}, Lcom/zui/internal/menu/a;->a(Lcom/zui/internal/menu/a;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/internal/menu/a$a;->a:Lcom/zui/internal/menu/a;

    invoke-virtual {p1, p0}, Lcom/zui/internal/menu/MenuBuilder;->n(Lcom/zui/internal/menu/a;)V

    return-void
.end method
