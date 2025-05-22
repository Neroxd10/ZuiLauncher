.class Lcom/zui/launcher/globalsearch/AboutAppAdapter$a;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/AboutAppAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/AboutAppAdapter;Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$a;->d:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const/16 p2, 0x200

    invoke-static {p1, p2}, Lcom/zui/launcher/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$a;->d:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    iget-object p2, p2, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getZuiThemedIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$a;->d:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/AboutAppAdapter$a;->a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
