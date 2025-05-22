.class public final Lcom/amap/api/col/l3s/fx;
.super Lcom/amap/api/col/l3s/fy;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/fy;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/fx;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030001

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/gd;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/fx;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->b:Landroid/view/View;

    new-instance v1, Lcom/amap/api/col/l3s/fx$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/fx$1;-><init>(Lcom/amap/api/col/l3s/fx;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->b:Landroid/view/View;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fx;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->b:Landroid/view/View;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->b:Landroid/view/View;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fx;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->b:Landroid/view/View;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/l3s/fx;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u53d6\u6d88\u4e0b\u8f7d"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    const-string v3, "\u6682\u505c\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/amap/api/col/l3s/fx;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/fx;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    const-string v4, "\u7ee7\u7eed\u4e0b\u8f7d"

    if-eq p1, v2, :cond_4

    const/16 v2, 0x65

    if-eq p1, v2, :cond_4

    const/16 v2, 0x66

    if-eq p1, v2, :cond_4

    const/16 v2, 0x67

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->e:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_2
    iput p1, p0, Lcom/amap/api/col/l3s/fx;->g:I

    iput-object p2, p0, Lcom/amap/api/col/l3s/fx;->h:Ljava/lang/String;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070008

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/amap/api/col/l3s/fx;->g:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    const-string v0, "\u7ee7\u7eed\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fx;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->pause()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/amap/api/col/l3s/fx;->g:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/amap/api/col/l3s/fx;->g:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/amap/api/col/l3s/fx;->g:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/amap/api/col/l3s/fx;->g:I

    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/amap/api/col/l3s/fx;->g:I

    const/16 v0, 0x67

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/fx;->d:Landroid/widget/TextView;

    const-string v0, "\u6682\u505c\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fx;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_3
    const v0, 0x7f070009

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3s/fx;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/amap/api/col/l3s/fx;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fx;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_4
    const v0, 0x7f07000a

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
