.class final Lcom/amap/api/col/l3s/fx$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fx;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fx;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fx$1;->a:Lcom/amap/api/col/l3s/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fx$1;->a:Lcom/amap/api/col/l3s/fx;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
