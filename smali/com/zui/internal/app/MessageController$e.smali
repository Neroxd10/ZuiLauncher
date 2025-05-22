.class Lcom/zui/internal/app/MessageController$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/app/MessageController$e$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/internal/app/MessageController$e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/internal/app/MessageController$e;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/zui/internal/app/MessageController$e;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController$e;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/internal/app/MessageController$e;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$e;->c:Ljava/util/List;

    new-instance v1, Lcom/zui/internal/app/MessageController$e$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zui/internal/app/MessageController$e$a;-><init>(Lcom/zui/internal/app/MessageController$e;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
