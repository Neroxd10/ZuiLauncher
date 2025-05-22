.class Lcom/zui/internal/app/MessageController$e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/zui/internal/app/MessageController$e;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/internal/app/MessageController$e$a;->a:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/zui/internal/app/MessageController$e$a;->b:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/zui/internal/app/MessageController$e$a;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method
