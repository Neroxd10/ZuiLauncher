.class Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/ExtendedEditText$OnFocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$a;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$a;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
